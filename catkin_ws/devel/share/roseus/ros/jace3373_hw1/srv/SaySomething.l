;; Auto-generated. Do not edit!


(when (boundp 'jace3373_hw1::SaySomething)
  (if (not (find-package "JACE3373_HW1"))
    (make-package "JACE3373_HW1"))
  (shadow 'SaySomething (find-package "JACE3373_HW1")))
(unless (find-package "JACE3373_HW1::SAYSOMETHING")
  (make-package "JACE3373_HW1::SAYSOMETHING"))
(unless (find-package "JACE3373_HW1::SAYSOMETHINGREQUEST")
  (make-package "JACE3373_HW1::SAYSOMETHINGREQUEST"))
(unless (find-package "JACE3373_HW1::SAYSOMETHINGRESPONSE")
  (make-package "JACE3373_HW1::SAYSOMETHINGRESPONSE"))

(in-package "ROS")





(defclass jace3373_hw1::SaySomethingRequest
  :super ros::object
  :slots (_challenge ))

(defmethod jace3373_hw1::SaySomethingRequest
  (:init
   (&key
    ((:challenge __challenge) "")
    )
   (send-super :init)
   (setq _challenge (string __challenge))
   self)
  (:challenge
   (&optional __challenge)
   (if __challenge (setq _challenge __challenge)) _challenge)
  (:serialization-length
   ()
   (+
    ;; string _challenge
    4 (length _challenge)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _challenge
       (write-long (length _challenge) s) (princ _challenge s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _challenge
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _challenge (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jace3373_hw1::SaySomethingResponse
  :super ros::object
  :slots (_response ))

(defmethod jace3373_hw1::SaySomethingResponse
  (:init
   (&key
    ((:response __response) "")
    )
   (send-super :init)
   (setq _response (string __response))
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; string _response
    4 (length _response)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _response
       (write-long (length _response) s) (princ _response s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _response
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _response (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass jace3373_hw1::SaySomething
  :super ros::object
  :slots ())

(setf (get jace3373_hw1::SaySomething :md5sum-) "5cf00296e00289a29765eb8938fd9e13")
(setf (get jace3373_hw1::SaySomething :datatype-) "jace3373_hw1/SaySomething")
(setf (get jace3373_hw1::SaySomething :request) jace3373_hw1::SaySomethingRequest)
(setf (get jace3373_hw1::SaySomething :response) jace3373_hw1::SaySomethingResponse)

(defmethod jace3373_hw1::SaySomethingRequest
  (:response () (instance jace3373_hw1::SaySomethingResponse :init)))

(setf (get jace3373_hw1::SaySomethingRequest :md5sum-) "5cf00296e00289a29765eb8938fd9e13")
(setf (get jace3373_hw1::SaySomethingRequest :datatype-) "jace3373_hw1/SaySomethingRequest")
(setf (get jace3373_hw1::SaySomethingRequest :definition-)
      "string challenge
---
string response

")

(setf (get jace3373_hw1::SaySomethingResponse :md5sum-) "5cf00296e00289a29765eb8938fd9e13")
(setf (get jace3373_hw1::SaySomethingResponse :datatype-) "jace3373_hw1/SaySomethingResponse")
(setf (get jace3373_hw1::SaySomethingResponse :definition-)
      "string challenge
---
string response

")



(provide :jace3373_hw1/SaySomething "5cf00296e00289a29765eb8938fd9e13")


