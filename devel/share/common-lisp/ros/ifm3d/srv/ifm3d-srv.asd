
(cl:in-package :asdf)

(defsystem "ifm3d-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Config" :depends-on ("_package_Config"))
    (:file "_package_Config" :depends-on ("_package"))
    (:file "Dump" :depends-on ("_package_Dump"))
    (:file "_package_Dump" :depends-on ("_package"))
    (:file "SoftOff" :depends-on ("_package_SoftOff"))
    (:file "_package_SoftOff" :depends-on ("_package"))
    (:file "SoftOn" :depends-on ("_package_SoftOn"))
    (:file "_package_SoftOn" :depends-on ("_package"))
    (:file "SyncClocks" :depends-on ("_package_SyncClocks"))
    (:file "_package_SyncClocks" :depends-on ("_package"))
    (:file "Trigger" :depends-on ("_package_Trigger"))
    (:file "_package_Trigger" :depends-on ("_package"))
  ))