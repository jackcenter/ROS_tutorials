#!/usr/bin/env python

from __future__ import print_function

from jace3373_hw1.srv import SaySomething, SaySomethingResponse

import rospy

def handle_say_something(req):
    print("Responding to: " + req.challenge)
    return SaySomethingResponse("Yes, I am here!")

def say_something_server():
    rospy.init_node('say_something_server')
    s = rospy.Service('say_something', SaySomething, handle_say_something)
    print("Ready to speak.")
    rospy.spin()

if __name__ == "__main__":
    say_something_server()
