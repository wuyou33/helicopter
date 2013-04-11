#pragma once
#ifndef SYS_STATES_TOP_HPP_
#define SYS_STATES_TOP_HPP_

#include <boost/statechart/state.hpp>
#include <boost/statechart/simple_state.hpp>
#include <boost/statechart/transition.hpp>

#include <sys/clock/API.hpp>
#include <sys/observer/API.hpp>
#include <sys/sensorhub/API.hpp>
#include <sys/com/Maple.hpp>
#include <sys/com/Stm.hpp>
#include <sys/states/events.hpp>

#include <sys/states/Firefighter.hpp>
#include <os/com/NetworkServer.hpp>
#include <os/com/TestMessages.hpp>

#define SIMULATE (1)

#ifdef SIMULATE
#include <sys/simulator/API.hpp>
#endif

namespace sys {
    namespace mpl = boost::mpl;
    namespace sc = boost::statechart;

    namespace states {
        struct Init;
        typedef os::NetworkServer<50007, os::testmessages::Messages, 100, 10> DebugServer;
        struct Top : sc::simple_state<Top, Firefighter, Init>
        {
            Observer observer;
            Maple maple;
            Stm stm;
            DebugServer debugServer;

            Sensorhub sensorhub;

            #ifdef SIMULATE
            Simulator simulator;
            #endif

            Top();
            ~Top();
            Clock clock;
        };
    }
}

#include <sys/states/Init.hpp>
#include <sys/states/Idle.hpp>
#include <sys/states/moving/Moving.hpp>
#include <sys/states/Stop.hpp>

#endif

