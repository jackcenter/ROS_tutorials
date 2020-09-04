
(cl:in-package :asdf)

(defsystem "jace3373_hw1-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
    (:file "SaySomething" :depends-on ("_package_SaySomething"))
    (:file "_package_SaySomething" :depends-on ("_package"))
  ))