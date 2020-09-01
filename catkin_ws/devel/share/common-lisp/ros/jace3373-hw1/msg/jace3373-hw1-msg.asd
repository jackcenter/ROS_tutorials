
(cl:in-package :asdf)

(defsystem "jace3373-hw1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "students" :depends-on ("_package_students"))
    (:file "_package_students" :depends-on ("_package"))
  ))