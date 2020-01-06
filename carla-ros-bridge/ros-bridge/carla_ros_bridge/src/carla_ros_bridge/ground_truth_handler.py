#!/usr/bin/env python
from sensor_msgs.msg import CameraInfo, Image
from cv_bridge import CvBridge, CvBridgeError
import cv2
import os
import rospy
from datetime import datetime     #Date and time to log folders

# Global variables
now = datetime.now()          # Date and time object initialised
# dd/mm/YY H:M:S
dt_string = now.strftime("_%d_%m_%Y_%H:%M") # Gets current time
# ground truth directory name 
dirName = '/gt' + dt_string
# get the folder address from OS to store the received ground truth segmentation image data
os.chdir('/home/adeshpand/Dokumente/Datasets/03_CARLA')
if not os.path.exists(dirName):
    print(os.getcwd())
    os.mkdir(os.getcwd() + dirName)    
    print("Directory :" , dirName ,  " Created ")
else:    
    print("Directory :" , dirName ,  " already exists")
os.chdir('/home/adeshpand/Dokumente/Datasets/03_CARLA/' + dirName)


def save_carla_image_data_array(image_to_be_saved, m_time_stamp):
    """
    Function (override) to save the carla image to a numpy data array/opencv Mat array
    as input for neural network further

    The RGB camera provides a 4-channel int8 color format (bgra8).

    :param image_to_be_saved: carla image object
    :type carla_image: carla.Image
    """
    cv2.imwrite(str(m_time_stamp) + '.png', image_to_be_saved)


class ImageHandler:

    def __init__(self):
        self.bridge = CvBridge()
        self.image_sub = rospy.Subscriber('/carla/ego_vehicle/camera/semantic_segmentation/front/image_segmentation', Image, self.callback)

    def callback(self, data):
        try:
            # Store the timestamp of current image
            time_stamp = data.header.stamp
            # print(time_stamp)
        except CvBridgeError as e:
            print(e)
        image_to_be_saved = self.bridge.imgmsg_to_cv2(data, "bgra8")
        save_carla_image_data_array(image_to_be_saved, time_stamp)

if __name__ == '__main__':
    image_handler_object_rgb = ImageHandler()
    rospy.init_node('image_handler', anonymous=True)
    rospy.spin()
