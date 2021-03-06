#pragma once
#ifndef SYS_TYPES_HPP_
#define SYS_TYPES_HPP_

#include <os/types.hpp>
#include <Eigen/Core>

namespace sys {
    typedef os::Scalar Scalar;

    typedef os::F64 F64;
    typedef os::F32 F32;
    typedef os::U64 U64;
    typedef os::S64 S64;
    typedef os::U32 U32;
    typedef os::S32 S32;
    typedef os::U16 U16;
    typedef os::S16 S16;
    typedef os::U8  U8;
    typedef os::S8  S8;

    typedef typename Eigen::Matrix<Scalar, 2, 1> Vector2;
    typedef typename Eigen::Matrix<Scalar, 3, 1> Vector3;
    typedef typename Eigen::Matrix<Scalar, 6, 1> Vector6;
}

#endif
