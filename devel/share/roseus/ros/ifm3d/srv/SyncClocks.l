;; Auto-generated. Do not edit!


(when (boundp 'ifm3d::SyncClocks)
  (if (not (find-package "IFM3D"))
    (make-package "IFM3D"))
  (shadow 'SyncClocks (find-package "IFM3D")))
(unless (find-package "IFM3D::SYNCCLOCKS")
  (make-package "IFM3D::SYNCCLOCKS"))
(unless (find-package "IFM3D::SYNCCLOCKSREQUEST")
  (make-package "IFM3D::SYNCCLOCKSREQUEST"))
(unless (find-package "IFM3D::SYNCCLOCKSRESPONSE")
  (make-package "IFM3D::SYNCCLOCKSRESPONSE"))

(in-package "ROS")





(defclass ifm3d::SyncClocksRequest
  :super ros::object
  :slots ())

(defmethod ifm3d::SyncClocksRequest
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

(defclass ifm3d::SyncClocksResponse
  :super ros::object
  :slots (_status _msg ))

(defmethod ifm3d::SyncClocksResponse
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

(defclass ifm3d::SyncClocks
  :super ros::object
  :slots ())

(setf (get ifm3d::SyncClocks :md5sum-) "e50a755d48be526edaee6d407b363d64")
(setf (get ifm3d::SyncClocks :datatype-) "ifm3d/SyncClocks")
(setf (get ifm3d::SyncClocks :request) ifm3d::SyncClocksRequest)
(setf (get ifm3d::SyncClocks :response) ifm3d::SyncClocksResponse)

(defmethod ifm3d::SyncClocksRequest
  (:response () (instance ifm3d::SyncClocksResponse :init)))

(setf (get ifm3d::SyncClocksRequest :md5sum-) "e50a755d48be526edaee6d407b363d64")
(setf (get ifm3d::SyncClocksRequest :datatype-) "ifm3d/SyncClocksRequest")
(setf (get ifm3d::SyncClocksRequest :definition-)
      "---
int32 status
string msg

")

(setf (get ifm3d::SyncClocksResponse :md5sum-) "e50a755d48be526edaee6d407b363d64")
(setf (get ifm3d::SyncClocksResponse :datatype-) "ifm3d/SyncClocksResponse")
(setf (get ifm3d::SyncClocksResponse :definition-)
      "---
int32 status
string msg

")



(provide :ifm3d/SyncClocks "e50a755d48be526edaee6d407b363d64")


