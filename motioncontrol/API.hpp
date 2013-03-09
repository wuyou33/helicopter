#ifndef SYS_MOTIONCONTROL_API_HPP_
#define SYS_MOTIONCONTROL_API_HPP_

#include <sys/motioncontrol/MotionControl.hpp>
#include <sys/math/models/models.hpp>
#include <sys/math/control/ControlState.hpp>
#include <sys/math/control/LqController.hpp>
#include <sys/observer/API.hpp>

namespace sys {
    namespace motioncontrol {
        typedef math::models::SCart3DAccQuat States;
        typedef math::models::CVel3 Controls;
        typedef math::models::Description<States, Controls> ModelDescription;

        typedef math::LqController<ModelDescription> Controller;
        typedef math::ControlState<ModelDescription> ControlState;
        typedef models::motion::DirectVelocities3D MotionModel;
        typedef observer::SystemState SystemState;
    }

    typedef motioncontrol::MotionControl<motioncontrol::Controller, motioncontrol::ControlState, motioncontrol::MotionModel, motioncontrol::SystemState> MotionControl;
}
#endif
