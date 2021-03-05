; Auto-generated. Do not edit!


(cl:in-package ifm3d-srv)


;//! \htmlinclude SoftOn-request.msg.html

(cl:defclass <SoftOn-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SoftOn-request (<SoftOn-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoftOn-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoftOn-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ifm3d-srv:<SoftOn-request> is deprecated: use ifm3d-srv:SoftOn-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoftOn-request>) ostream)
  "Serializes a message object of type '<SoftOn-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoftOn-request>) istream)
  "Deserializes a message object of type '<SoftOn-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoftOn-request>)))
  "Returns string type for a service object of type '<SoftOn-request>"
  "ifm3d/SoftOnRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoftOn-request)))
  "Returns string type for a service object of type 'SoftOn-request"
  "ifm3d/SoftOnRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoftOn-request>)))
  "Returns md5sum for a message object of type '<SoftOn-request>"
  "e50a755d48be526edaee6d407b363d64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoftOn-request)))
  "Returns md5sum for a message object of type 'SoftOn-request"
  "e50a755d48be526edaee6d407b363d64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoftOn-request>)))
  "Returns full string definition for message of type '<SoftOn-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoftOn-request)))
  "Returns full string definition for message of type 'SoftOn-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoftOn-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoftOn-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SoftOn-request
))
;//! \htmlinclude SoftOn-response.msg.html

(cl:defclass <SoftOn-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0)
   (msg
    :reader msg
    :initarg :msg
    :type cl:string
    :initform ""))
)

(cl:defclass SoftOn-response (<SoftOn-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SoftOn-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SoftOn-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ifm3d-srv:<SoftOn-response> is deprecated: use ifm3d-srv:SoftOn-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <SoftOn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ifm3d-srv:status-val is deprecated.  Use ifm3d-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'msg-val :lambda-list '(m))
(cl:defmethod msg-val ((m <SoftOn-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ifm3d-srv:msg-val is deprecated.  Use ifm3d-srv:msg instead.")
  (msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SoftOn-response>) ostream)
  "Serializes a message object of type '<SoftOn-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SoftOn-response>) istream)
  "Deserializes a message object of type '<SoftOn-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SoftOn-response>)))
  "Returns string type for a service object of type '<SoftOn-response>"
  "ifm3d/SoftOnResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoftOn-response)))
  "Returns string type for a service object of type 'SoftOn-response"
  "ifm3d/SoftOnResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SoftOn-response>)))
  "Returns md5sum for a message object of type '<SoftOn-response>"
  "e50a755d48be526edaee6d407b363d64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SoftOn-response)))
  "Returns md5sum for a message object of type 'SoftOn-response"
  "e50a755d48be526edaee6d407b363d64")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SoftOn-response>)))
  "Returns full string definition for message of type '<SoftOn-response>"
  (cl:format cl:nil "int32 status~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SoftOn-response)))
  "Returns full string definition for message of type 'SoftOn-response"
  (cl:format cl:nil "int32 status~%string msg~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SoftOn-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SoftOn-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SoftOn-response
    (cl:cons ':status (status msg))
    (cl:cons ':msg (msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SoftOn)))
  'SoftOn-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SoftOn)))
  'SoftOn-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SoftOn)))
  "Returns string type for a service object of type '<SoftOn>"
  "ifm3d/SoftOn")