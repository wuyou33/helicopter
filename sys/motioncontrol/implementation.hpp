#pragma once
#ifndef SYS_MOTIONCONTROL_IMPLEMENTATION_HPP_
#define SYS_MOTIONCONTROL_IMPLEMENTATION_HPP_

#include <Eigen/Core>

#include <os/com/Dispatcher.hpp>
#include <sys/types.hpp>
#include <sys/math/control/LqController.hpp>

#include <sys/math/filtering/GaussianFilter.hpp>
#include <sys/math/states.hpp>
#include <sys/math/models.hpp>

#include <sys/Observer.hpp>
#include <sys/MotionControl.hpp>

#include <sys/Logger.hpp>

namespace sys {
    namespace motioncontrol {
        using namespace Eigen;
        template<typename GlobalFilter, typename Algorithm, typename MotionModel, typename SystemStateMessage, typename ReferenceMessage, typename ControlMessage>
        void MotionControl<GlobalFilter, Algorithm, MotionModel, SystemStateMessage, ReferenceMessage, ControlMessage>
        ::updateControl(const SystemStateMessage systemState, const ReferenceMessage reference) {
            static const int nofStates = Algorithm::nofStates;
            static const int nofControls = Algorithm::nofControls;
            typedef Matrix<Scalar, nofStates, nofStates> ExtendedStateMatrix;
            typedef Matrix<Scalar, nofStates, nofControls> ExtendedControlMatrix;
            typedef Matrix<Scalar, nofStates, 1> ExtendedControlState;
            ExtendedStateMatrix F; F.setZero();
            ExtendedControlMatrix B; B.setZero();
            auto controlState = Algorithm::States::template translateFrom<SystemStates>(systemState.value);
            static const int linState = Algorithm::linState;

            auto A = math::template differentiate<MotionModel, typename Algorithm::States, SystemStates>(systemState.value);
            F.template block<MotionModel::nofStates, MotionModel::nofStates>(0,0) = A;
            F.template block<MotionModel::nofStates, 1>(0, linState) =
                    MotionModel::template predict<SystemStates>(systemState.value)
                    - A*controlState;
            if(MotionModel::isDiscrete) {
                F(linState, linState) = 1-1e-5;
            } else {
                F(linState, linState) = -1e-9;
            }

            B.template block<MotionModel::nofStates, Algorithm::nofControls>(0,0) =
                    math::template differentiate<MotionModel, typename Algorithm::Controls, SystemStates>(systemState.value);
            controller.template updateModel<MotionModel::isDiscrete>(F, B);
            //LOG_EVENT(typeid(Self).name(), 50, "Controlstate: " << controlState.transpose());
            //LOG_EVENT(typeid(Self).name(), 50, "Reference: " << reference.value.transpose());

            ExtendedControlState extendedControlState; extendedControlState << controlState - reference.value, 1;

            auto u = controller.direct_eval(extendedControlState);
            logger::Formatter<decltype(F)>::format(logfile, F);
            logfile << ",";
            logger::Formatter<decltype(B)>::format(logfile, B);
            logfile << std::endl;
            LOG_EVENT(typeid(Self).name(), 50, "Controlstate: " << extendedControlState.transpose());
            LOG_EVENT(typeid(Self).name(), 50, "u: " << u.transpose());

            Algorithm::Controls::template update<typename GlobalFilter::States>(filter.state, u);
            os::yield(ControlMessage(u));
        }

        template<typename GlobalFilter, typename Algorithm, typename MotionModel, typename SystemStates, typename Reference, typename ControlMessage>
        MotionControl<GlobalFilter, Algorithm, MotionModel, SystemStates, Reference, ControlMessage>
        ::MotionControl(GlobalFilter& filter_)
        : filter(filter_)
        , logfile("motioncontrol.mat")
        , dispatcher(&Self::updateControl, this)
        {}

        template<typename GlobalFilter, typename Algorithm, typename MotionModel, typename SystemStateMessage, typename ReferenceMessage, typename ControlMessage>
        void MotionControl<GlobalFilter, Algorithm, MotionModel, SystemStateMessage, ReferenceMessage, ControlMessage>
        ::updateWeights(const typename Algorithm::StateWeightMatrix& Q, const typename Algorithm::ControlWeightMatrix& R, bool recalc) {
            controller.template setWeights<MotionModel::isDiscrete>(Q, R, recalc);
        }

        template<typename GlobalFilter, typename Algorithm, typename MotionModel, typename SystemStateMessage, typename ReferenceMessage, typename ControlMessage>
        void MotionControl<GlobalFilter, Algorithm, MotionModel, SystemStateMessage, ReferenceMessage, ControlMessage>
        ::initializeFromParams() {
            typedef motioncontrol::Controller::StateWeightMatrix StateWeights;
            StateWeights Q;
            Q.setZero();
            Q(StateWeights::RowsAtCompileTime-1, StateWeights::ColsAtCompileTime-1) = 1;

            for(int i = 0; i < StateWeights::RowsAtCompileTime-1; ++i) {
                for(int j = 0; j < StateWeights::ColsAtCompileTime-1; ++j) {
                    Q(i, j) = os::parameters["MotionControl"]["Q"][i*(StateWeights::RowsAtCompileTime-1) + j].GetDouble();
                }
            }

            typedef motioncontrol::Controller::ControlWeightMatrix ControlWeights;
            ControlWeights R;
            for(int i = 0; i < ControlWeights ::RowsAtCompileTime; ++i) {
                for(int j = 0; j < ControlWeights::ColsAtCompileTime; ++j) {
                    R(i, j) = os::parameters["MotionControl"]["R"][i*ControlWeights::RowsAtCompileTime + j].GetDouble();
                }
            }

            updateWeights(Q, R, false);
        }
    }
}

#endif
