# Copyright: (C) 2015 iCub Facility - Istituto Italiano di Tecnologia
# Authors: Nguyen Dong Hai Phuong
# CopyPolicy: Released under the terms of the GNU GPL v2.0.
#
# upperPlanner.thrift

struct Vector {
  1: list<double> content;
} (
  yarp.name = "yarp::sig::Vector"
  yarp.includefile="yarp/sig/Vector.h"
)

/**
* upperPlanner_IDL
*
* IDL Interface to \ref upperPlanner services.
*/
service upperPlanner_IDL
{
  /**
  * Require replan with new time constraint
  * @param _deadline Time constraint
  *            (put it between brackets if asking for it through rpc).
  * @return true/false on success/failure.
  */
  bool re_plan(1:double _deadline)

  
}
