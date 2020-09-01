; Auto-generated. Do not edit!


(cl:in-package jace3373_hw1-msg)


;//! \htmlinclude students.msg.html

(cl:defclass <students> (roslisp-msg-protocol:ros-message)
  ((first_name
    :reader first_name
    :initarg :first_name
    :type cl:string
    :initform "")
   (last_name
    :reader last_name
    :initarg :last_name
    :type cl:string
    :initform "")
   (age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (score
    :reader score
    :initarg :score
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass students (<students>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <students>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'students)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jace3373_hw1-msg:<students> is deprecated: use jace3373_hw1-msg:students instead.")))

(cl:ensure-generic-function 'first_name-val :lambda-list '(m))
(cl:defmethod first_name-val ((m <students>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jace3373_hw1-msg:first_name-val is deprecated.  Use jace3373_hw1-msg:first_name instead.")
  (first_name m))

(cl:ensure-generic-function 'last_name-val :lambda-list '(m))
(cl:defmethod last_name-val ((m <students>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jace3373_hw1-msg:last_name-val is deprecated.  Use jace3373_hw1-msg:last_name instead.")
  (last_name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <students>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jace3373_hw1-msg:age-val is deprecated.  Use jace3373_hw1-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <students>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jace3373_hw1-msg:score-val is deprecated.  Use jace3373_hw1-msg:score instead.")
  (score m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <students>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jace3373_hw1-msg:stamp-val is deprecated.  Use jace3373_hw1-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <students>) ostream)
  "Serializes a message object of type '<students>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'first_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'first_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'last_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'last_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'score)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'score)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'score)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'score)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <students>) istream)
  "Deserializes a message object of type '<students>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'first_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'first_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'last_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'last_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'age)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'score)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'score)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'score)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'score)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<students>)))
  "Returns string type for a message object of type '<students>"
  "jace3373_hw1/students")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'students)))
  "Returns string type for a message object of type 'students"
  "jace3373_hw1/students")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<students>)))
  "Returns md5sum for a message object of type '<students>"
  "52d1b2c81d8b2c8bfa3060186c7aba94")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'students)))
  "Returns md5sum for a message object of type 'students"
  "52d1b2c81d8b2c8bfa3060186c7aba94")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<students>)))
  "Returns full string definition for message of type '<students>"
  (cl:format cl:nil "string first_name~%string last_name~%uint8 age~%uint32 score~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'students)))
  "Returns full string definition for message of type 'students"
  (cl:format cl:nil "string first_name~%string last_name~%uint8 age~%uint32 score~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <students>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'first_name))
     4 (cl:length (cl:slot-value msg 'last_name))
     1
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <students>))
  "Converts a ROS message object to a list"
  (cl:list 'students
    (cl:cons ':first_name (first_name msg))
    (cl:cons ':last_name (last_name msg))
    (cl:cons ':age (age msg))
    (cl:cons ':score (score msg))
    (cl:cons ':stamp (stamp msg))
))
