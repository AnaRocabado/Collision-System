// Generated by gencpp from file ifm3d/DumpResponse.msg
// DO NOT EDIT!


#ifndef IFM3D_MESSAGE_DUMPRESPONSE_H
#define IFM3D_MESSAGE_DUMPRESPONSE_H


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
struct DumpResponse_
{
  typedef DumpResponse_<ContainerAllocator> Type;

  DumpResponse_()
    : status(0)
    , config()  {
    }
  DumpResponse_(const ContainerAllocator& _alloc)
    : status(0)
    , config(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _status_type;
  _status_type status;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _config_type;
  _config_type config;





  typedef boost::shared_ptr< ::ifm3d::DumpResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ifm3d::DumpResponse_<ContainerAllocator> const> ConstPtr;

}; // struct DumpResponse_

typedef ::ifm3d::DumpResponse_<std::allocator<void> > DumpResponse;

typedef boost::shared_ptr< ::ifm3d::DumpResponse > DumpResponsePtr;
typedef boost::shared_ptr< ::ifm3d::DumpResponse const> DumpResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ifm3d::DumpResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ifm3d::DumpResponse_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::ifm3d::DumpResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ifm3d::DumpResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ifm3d::DumpResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ifm3d::DumpResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ifm3d::DumpResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ifm3d::DumpResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ifm3d::DumpResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "44475fe0541e5cf305abe53be7686d7a";
  }

  static const char* value(const ::ifm3d::DumpResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x44475fe0541e5cf3ULL;
  static const uint64_t static_value2 = 0x05abe53be7686d7aULL;
};

template<class ContainerAllocator>
struct DataType< ::ifm3d::DumpResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ifm3d/DumpResponse";
  }

  static const char* value(const ::ifm3d::DumpResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ifm3d::DumpResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 status\n\
string config\n\
\n\
";
  }

  static const char* value(const ::ifm3d::DumpResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ifm3d::DumpResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
      stream.next(m.config);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DumpResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ifm3d::DumpResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ifm3d::DumpResponse_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status);
    s << indent << "config: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.config);
  }
};

} // namespace message_operations
} // namespace ros

#endif // IFM3D_MESSAGE_DUMPRESPONSE_H
