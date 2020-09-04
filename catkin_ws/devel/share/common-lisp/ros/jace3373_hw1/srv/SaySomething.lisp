; Auto-generated. Do not edit!


(cl:in-package jace3373_hw1-srv)


;//! \htmlinclude SaySomething-request.msg.html

(cl:defclass <SaySomething-request> (roslisp-msg-protocol:ros-message)
  ((challenge
    :reader challenge
    :initarg :challenge
    :type cl:string
    :initform ""))
)

(cl:defclass SaySomething-request (<SaySomething-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaySomething-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaySomething-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jace3373_hw1-srv:<SaySomething-request> is deprecated: use jace3373_hw1-srv:SaySomething-request instead.")))

(cl:ensure-generic-function 'challenge-val :lambda-list '(m))
(cl:defmethod challenge-val ((m <SaySomething-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jace3373_hw1-srv:challenge-val is deprecated.  Use jace3373_hw1-srv:challenge instead.")
  (challenge m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaySomething-request>) ostream)
  "Serializes a message object of type '<SaySomething-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'challenge))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'challenge))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaySomething-request>) istream)
  "Deserializes a message object of type '<SaySomething-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'challenge) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'challenge) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaySomething-request>)))
  "Returns string type for a service object of type '<SaySomething-request>"
  "jace3373_hw1/SaySomethingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaySomething-request)))
  "Returns string type for a service object of type 'SaySomething-request"
  "jace3373_hw1/SaySomethingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaySomething-request>)))
  "Returns md5sum for a message object of type '<SaySomething-request>"
  "5cf00296e00289a29765eb8938fd9e13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaySomething-request)))
  "Returns md5sum for a message object of type 'SaySomething-request"
  "5cf00296e00289a29765eb8938fd9e13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaySomething-request>)))
  "Returns full string definition for message of type '<SaySomething-request>"
  (cl:format cl:nil "string challenge~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaySomething-request)))
  "Returns full string definition for message of type 'SaySomething-request"
  (cl:format cl:nil "string challenge~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaySomething-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'challenge))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaySomething-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SaySomething-request
    (cl:cons ':challenge (challenge msg))
))
;//! \htmlinclude SaySomething-response.msg.html

(cl:defclass <SaySomething-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform ""))
)

(cl:defclass SaySomething-response (<SaySomething-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SaySomething-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SaySomething-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jace3373_hw1-srv:<SaySomething-response> is deprecated: use jace3373_hw1-srv:SaySomething-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <SaySomething-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jace3373_hw1-srv:response-val is deprecated.  Use jace3373_hw1-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SaySomething-response>) ostream)
  "Serializes a message object of type '<SaySomething-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SaySomething-response>) istream)
  "Deserializes a message object of type '<SaySomething-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SaySomething-response>)))
  "Returns string type for a service object of type '<SaySomething-response>"
  "jace3373_hw1/SaySomethingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaySomething-response)))
  "Returns string type for a service object of type 'SaySomething-response"
  "jace3373_hw1/SaySomethingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SaySomething-response>)))
  "Returns md5sum for a message object of type '<SaySomething-response>"
  "5cf00296e00289a29765eb8938fd9e13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SaySomething-response)))
  "Returns md5sum for a message object of type 'SaySomething-response"
  "5cf00296e00289a29765eb8938fd9e13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SaySomething-response>)))
  "Returns full string definition for message of type '<SaySomething-response>"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SaySomething-response)))
  "Returns full string definition for message of type 'SaySomething-response"
  (cl:format cl:nil "string response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SaySomething-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SaySomething-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SaySomething-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SaySomething)))
  'SaySomething-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SaySomething)))
  'SaySomething-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SaySomething)))
  "Returns string type for a service object of type '<SaySomething>"
  "jace3373_hw1/SaySomething")