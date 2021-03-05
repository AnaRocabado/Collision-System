// Generated by gencpp from file ifm3d/SoftOnResponse.msg
// DO NOT EDIT!


#ifndef IFM3D_MESSAGE_SOFTONRESPONSE_H
#define IFM3D_MESSAGE_SOFTONRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ifm3d
{
template <class ContainerAllocator>
struct SoftOnResponse_
{
  typedef SoftOnResponse_<ContainerAllocator> Type;

  SoftOnResponse_()
    : status(0)
    , msg()  {
    }
  SoftOnResponse_(const ContainerAllocator& _alloc)
    : status(0)
    , msg(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _status_type;
  _status_type status;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _msg_type;
  _msg_type msg;





  typedef boost::shared_ptr< ::ifm3d::SoftOnResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ifm3d::SoftOnResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SoftOnResponse_

typedef ::ifm3d::SoftOnResponse_<std::allocator<void> > SoftOnResponse;

typedef boost::shared_ptr< ::ifm3d::SoftOnResponse > SoftOnResponsePtr;
typedef boost::shared_ptr< ::ifm3d::SoftOnResponse const> SoftOnResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ifm3d::SoftOnResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ifm3d::SoftOnResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ifm3d

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'ifm3d': ['/home/ana/collision_system_ws/src/ifm3d-ros/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ifm3d::SoftOnResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ifm3d::SoftOnResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ifm3d::SoftOnResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ifm3d::SoftOnResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ifm3d::SoftOnResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ifm3d::SoftOnResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ifm3d::SoftOnResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e50a755d48be526edaee6d407b363d64";
  }

  static const char* value(const ::ifm3d::SoftOnResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe50a755d48be526eULL;
  static const uint64_t static_value2 = 0xdaee6d407b363d64ULL;
};

template<class ContainerAllocator>
struct DataType< ::ifm3d::SoftOnResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ifm3d/SoftOnResponse";
  }

  static const char* value(const ::ifm3d::SoftOnResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ifm3d::SoftOnResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 status\n\
string msg\n\
\n\
";
  }

  static const char* value(const ::ifm3d::SoftOnResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ifm3d::SoftOnResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.msg);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SoftOnResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ifm3d::SoftOnResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ifm3d::SoftOnResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status);
    s << indent << "msg: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.msg);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IFM3D_MESSAGE_SOFTONRESPONSE_H
