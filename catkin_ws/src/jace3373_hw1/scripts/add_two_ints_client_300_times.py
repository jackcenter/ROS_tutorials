#!/usr/bin/env python

from __future__ import print_function

import sys, time, random
import rospy
from beginner_tutorials.srv import *

def main():
    trials = 300
    file = open("/home/jackcenter/Desktop/srv_client_times.txt", "a")
    
    for i in range(0, trials):
        x = random.randint(1, 100)
        y = random.randint(1, 100)

        t_0 = time.time()
        print("%s + %s = %s"%(x, y, add_two_ints_client(x, y)))
        t_e = time.time() - t_0
        print(t_e)
        file.write(str(t_e) + "\n")

    file.close()

		

def add_two_ints_client(x, y):
    rospy.wait_for_service('add_two_ints')
    try:
        add_two_ints = rospy.ServiceProxy('add_two_ints', AddTwoInts)
        resp1 = add_two_ints(x, y)
        return resp1.sum
    except rospy.ServiceException as e:
        print("Service call failed: %s"%e)


if __name__ == "__main__":
    main()
