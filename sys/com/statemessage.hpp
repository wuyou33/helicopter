#pragma once

#include <sys/types.hpp>
#include <sys/math/filtering.hpp>
#include <sys/com/eigenmessage.hpp>

namespace sys {
    template<typename States> struct StateMessage : public EigenMessage<States> { StateMessage(){} StateMessage(const typename States::StateVector& s) : EigenMessage<States>(s) {} };
    template<typename States> struct ReferenceMessage : public EigenMessage<States> { ReferenceMessage(){} ReferenceMessage(const typename States::StateVector& s) : EigenMessage<States>(s) {} };
    template<typename States> struct ControlMessage : public EigenMessage<States> { ControlMessage(){} ControlMessage(const typename States::StateVector& s) : EigenMessage<States>(s) {} };
    template<typename States> struct SimulatedStateMessage : public EigenMessage<States> { SimulatedStateMessage(){} SimulatedStateMessage(const typename States::StateVector& s) : EigenMessage<States>(s) {} };
}

