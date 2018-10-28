;; Auto-generated. Do not edit!


(when (boundp 'hello_test::LocalizePart)
  (if (not (find-package "HELLO_TEST"))
    (make-package "HELLO_TEST"))
  (shadow 'LocalizePart (find-package "HELLO_TEST")))
(unless (find-package "HELLO_TEST::LOCALIZEPART")
  (make-package "HELLO_TEST::LOCALIZEPART"))
(unless (find-package "HELLO_TEST::LOCALIZEPARTREQUEST")
  (make-package "HELLO_TEST::LOCALIZEPARTREQUEST"))
(unless (find-package "HELLO_TEST::LOCALIZEPARTRESPONSE")
  (make-package "HELLO_TEST::LOCALIZEPARTRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hello_test::LocalizePartRequest
  :super ros::object
  :slots (_base_frame ))

(defmethod hello_test::LocalizePartRequest
  (:init
   (&key
    ((:base_frame __base_frame) "")
    )
   (send-super :init)
   (setq _base_frame (string __base_frame))
   self)
  (:base_frame
   (&optional __base_frame)
   (if __base_frame (setq _base_frame __base_frame)) _base_frame)
  (:serialization-length
   ()
   (+
    ;; string _base_frame
    4 (length _base_frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _base_frame
       (write-long (length _base_frame) s) (princ _base_frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _base_frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hello_test::LocalizePartResponse
  :super ros::object
  :slots (_pose ))

(defmethod hello_test::LocalizePartResponse
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _pose __pose)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass hello_test::LocalizePart
  :super ros::object
  :slots ())

(setf (get hello_test::LocalizePart :md5sum-) "aa4cca5b67ec8a13449c405ec10ee5d0")
(setf (get hello_test::LocalizePart :datatype-) "hello_test/LocalizePart")
(setf (get hello_test::LocalizePart :request) hello_test::LocalizePartRequest)
(setf (get hello_test::LocalizePart :response) hello_test::LocalizePartResponse)

(defmethod hello_test::LocalizePartRequest
  (:response () (instance hello_test::LocalizePartResponse :init)))

(setf (get hello_test::LocalizePartRequest :md5sum-) "aa4cca5b67ec8a13449c405ec10ee5d0")
(setf (get hello_test::LocalizePartRequest :datatype-) "hello_test/LocalizePartRequest")
(setf (get hello_test::LocalizePartRequest :definition-)
      "
string base_frame
---

geometry_msgs/Pose pose


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get hello_test::LocalizePartResponse :md5sum-) "aa4cca5b67ec8a13449c405ec10ee5d0")
(setf (get hello_test::LocalizePartResponse :datatype-) "hello_test/LocalizePartResponse")
(setf (get hello_test::LocalizePartResponse :definition-)
      "
string base_frame
---

geometry_msgs/Pose pose


================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :hello_test/LocalizePart "aa4cca5b67ec8a13449c405ec10ee5d0")


