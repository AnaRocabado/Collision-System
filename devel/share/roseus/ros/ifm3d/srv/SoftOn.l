;; Auto-generated. Do not edit!


(when (boundp 'ifm3d::SoftOn)
  (if (not (find-package "IFM3D"))
    (make-package "IFM3D"))
  (shadow 'SoftOn (find-package "IFM3D")))
(unless (find-package "IFM3D::SOFTON")
  (make-package "IFM3D::SOFTON"))
(unless (find-package "IFM3D::SOFTONREQUEST")
  (make-package "IFM3D::SOFTONREQUEST"))
(unless (find-package "IFM3D::SOFTONRESPONSE")
  (make-package "IFM3D::SOFTONRESPONSE"))

(in-package "ROS")





(defclass ifm3d::SoftOnRequest
  :super ros::object
  :slots ())

(defmethod ifm3d::SoftOnRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass ifm3d::SoftOnResponse
  :super ros::object
  :slots (_status _msg ))

(defmethod ifm3d::SoftOnResponse
  (:init
   (&key
    ((:status __status) 0)
    ((:msg __msg) "")
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _msg (string __msg))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:msg
   (&optional __msg)
   (if __msg (setq _msg __msg)) _msg)
  (:serialization-length
   ()
   (+
    ;; int32 _status
    4
    ;; string _msg
    4 (length _msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _status
       (write-long _status s)
     ;; string _msg
       (write-long (length _msg) s) (princ _msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ifm3d::SoftOn
  :super ros::object
  :slots ())

(setf (get ifm3d::SoftOn :md5sum-) "e50a755d48be526edaee6d407b363d64")
(setf (get ifm3d::SoftOn :datatype-) "ifm3d/SoftOn")
(setf (get ifm3d::SoftOn :request) ifm3d::SoftOnRequest)
(setf (get ifm3d::SoftOn :response) ifm3d::SoftOnResponse)

(defmethod ifm3d::SoftOnRequest
  (:response () (instance ifm3d::SoftOnResponse :init)))

(setf (get ifm3d::SoftOnRequest :md5sum-) "e50a755d48be526edaee6d407b363d64")
(setf (get ifm3d::SoftOnRequest :datatype-) "ifm3d/SoftOnRequest")
(setf (get ifm3d::SoftOnRequest :definition-)
      "---
int32 status
string msg

")

(setf (get ifm3d::SoftOnResponse :md5sum-) "e50a755d48be526edaee6d407b363d64")
(setf (get ifm3d::SoftOnResponse :datatype-) "ifm3d/SoftOnResponse")
(setf (get ifm3d::SoftOnResponse :definition-)
      "---
int32 status
string msg

")



(provide :ifm3d/SoftOn "e50a755d48be526edaee6d407b363d64")


