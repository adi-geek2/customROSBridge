// Generated by gencpp from file carla_msgs/CarlaActorList.msg
// DO NOT EDIT!


#ifndef CARLA_MSGS_MESSAGE_CARLAACTORLIST_H
#define CARLA_MSGS_MESSAGE_CARLAACTORLIST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <carla_msgs/CarlaActorInfo.h>

namespace carla_msgs
{
template <class ContainerAllocator>
struct CarlaActorList_
{
  typedef CarlaActorList_<ContainerAllocator> Type;

  CarlaActorList_()
    : actors()  {
    }
  CarlaActorList_(const ContainerAllocator& _alloc)
    : actors(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::carla_msgs::CarlaActorInfo_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::carla_msgs::CarlaActorInfo_<ContainerAllocator> >::other >  _actors_type;
  _actors_type actors;





  typedef boost::shared_ptr< ::carla_msgs::CarlaActorList_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::carla_msgs::CarlaActorList_<ContainerAllocator> const> ConstPtr;

}; // struct CarlaActorList_

typedef ::carla_msgs::CarlaActorList_<std::allocator<void> > CarlaActorList;

typedef boost::shared_ptr< ::carla_msgs::CarlaActorList > CarlaActorListPtr;
typedef boost::shared_ptr< ::carla_msgs::CarlaActorList const> CarlaActorListConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::carla_msgs::CarlaActorList_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::carla_msgs::CarlaActorList_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace carla_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'carla_msgs': ['/home/adeshpand/carla-ros-bridge/catkin_ws/src/ros-bridge/carla_msgs/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::carla_msgs::CarlaActorList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::carla_msgs::CarlaActorList_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_msgs::CarlaActorList_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::carla_msgs::CarlaActorList_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_msgs::CarlaActorList_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::carla_msgs::CarlaActorList_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::carla_msgs::CarlaActorList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a10ababa303f55dd50f485b995641f71";
  }

  static const char* value(const ::carla_msgs::CarlaActorList_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa10ababa303f55ddULL;
  static const uint64_t static_value2 = 0x50f485b995641f71ULL;
};

template<class ContainerAllocator>
struct DataType< ::carla_msgs::CarlaActorList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "carla_msgs/CarlaActorList";
  }

  static const char* value(const ::carla_msgs::CarlaActorList_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::carla_msgs::CarlaActorList_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n\
# Copyright (c) 2019 Intel Corporation.\n\
#\n\
# This work is licensed under the terms of the MIT license.\n\
# For a copy, see <https://opensource.org/licenses/MIT>.\n\
#\n\
\n\
CarlaActorInfo[] actors\n\
\n\
\n\
================================================================================\n\
MSG: carla_msgs/CarlaActorInfo\n\
#\n\
# Copyright (c) 2019 Intel Corporation.\n\
#\n\
# This work is licensed under the terms of the MIT license.\n\
# For a copy, see <https://opensource.org/licenses/MIT>.\n\
#\n\
\n\
uint32 id\n\
uint32 parent_id # 0 if no parent available\n\
string type\n\
string rolename\n\
\n\
";
  }

  static const char* value(const ::carla_msgs::CarlaActorList_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::carla_msgs::CarlaActorList_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.actors);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CarlaActorList_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::carla_msgs::CarlaActorList_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::carla_msgs::CarlaActorList_<ContainerAllocator>& v)
  {
    s << indent << "actors[]" << std::endl;
    for (size_t i = 0; i < v.actors.size(); ++i)
    {
      s << indent << "  actors[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::carla_msgs::CarlaActorInfo_<ContainerAllocator> >::stream(s, indent + "    ", v.actors[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CARLA_MSGS_MESSAGE_CARLAACTORLIST_H
