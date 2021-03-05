;; Auto-generated. Do not edit!


(when (boundp 'ifm3d::SoftOff)
  (if (not (find-package "IFM3D"))
    (make-package "IFM3D"))
  (shadow 'SoftOff (find-package "IFM3D")))
(unless (find-package "IFM3D::SOFTOFF")
  (make-package "IFM3D::SOFTOFF"))
(unless (find-package "IFM3D::SOFTOFFREQUEST")
  (make-package "IFM3D::SOFTOFFREQUEST"))
(unless (find-package "IFM3D::SOFTOFFRESPONSE")
  (make-package "IFM3D::SOFTOFFRESPONSE"))

(in-package "ROS")





(defclass ifm3d::SoftOffRequest
  :super ros::object
  :slots ())

(defmethod ifm3d::SoftOffRequest
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

(defclass ifm3d::SoftOffResponse
  :super ros::object
  :slots (_status _msg ))

(defmethod ifm3d::SoftOffResponse
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

(defclass ifm3d::SoftOff
  :super ros::object
  :slots ())

(setf (get ifm3d::SoftOff :md5sum-) "e50a755d48be526edaee6d407b363d64")
(setf (get ifm3d::SoftOff :datatype-) "ifm3d/SoftOff")
(setf (get ifm3d::SoftOff :request) ifm3d::SoftOffRequest)
(setf (get ifm3d::SoftOff :response) ifm3d::SoftOffResponse)

(defmethod ifm3d::SoftOffRequest
  (:response () (instance ifm3d::SoftOffResponse :init)))

(setf (get ifm3d::SoftOffRequest :md5sum-) "e50a755d48be526edaee6d407b363d64")
(setf (get ifm3d::SoftOffRequest :datatype-) "ifm3d/SoftOffRequest")
(setf (get ifm3d::SoftOffRequest :definition-)
      "---
int32 status
string msg
")

(setf (get ifm3d::SoftOffResponse :md5sum-) "e50a755d48be526edaee6d407b363d64")
(setf (get ifm3d::SoftOffResponse :datatype-) "ifm3d/SoftOffResponse")
(setf (get ifm3d::SoftOffResponse :definition-)
      "---
int32 status
string msg
")



(provide :ifm3d/SoftOff "e50a755d48be526edaee6d407b363d64")


