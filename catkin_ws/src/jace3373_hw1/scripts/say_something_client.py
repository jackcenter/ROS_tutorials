#!/usr/bin/env python

from __future__ import print_function

import sys
import rospy
from jace3373_hw1.srv import *

def say_something_client():
    rospy.wait_for_service('say_something')
    try:
        say_something = rospy.ServiceProxy('say_something', SaySomething)
	resp = say_something("Are you out there?")
        return resp.response
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)


if __name__ == "__main__":
    print("I heard: %s" %(say_something_client()))
