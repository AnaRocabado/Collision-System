// Generated by gencpp from file ifm3d/SoftOn.msg
// DO NOT EDIT!


#ifndef IFM3D_MESSAGE_SOFTON_H
#define IFM3D_MESSAGE_SOFTON_H

#include <ros/service_traits.h>


#include <ifm3d/SoftOnRequest.h>
#include <ifm3d/SoftOnResponse.h>


namespace ifm3d
{

struct SoftOn
{

typedef SoftOnRequest Request;
typedef SoftOnResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SoftOn
} // namespace ifm3d


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ifm3d::SoftOn > {
  static const char* value()
  {
    return "e50a755d48be526edaee6d407b363d64";
  }

  static const char* value(const ::ifm3d::SoftOn&) { return value(); }
};

template<>
struct DataType< ::ifm3d::SoftOn > {
  static const char* value()
  {
    return "ifm3d/SoftOn";
  }

  static const char* value(const ::ifm3d::SoftOn&) { return value(); }
};


// service_traits::MD5Sum< ::ifm3d::SoftOnRequest> should match 
// service_traits::MD5Sum< ::ifm3d::SoftOn > 
template<>
struct MD5Sum< ::ifm3d::SoftOnRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ifm3d::SoftOn >::value();
  }
  static const char* value(const ::ifm3d::SoftOnRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ifm3d::SoftOnRequest> should match 
// service_traits::DataType< ::ifm3d::SoftOn > 
template<>
struct DataType< ::ifm3d::SoftOnRequest>
{
  static const char* value()
  {
    return DataType< ::ifm3d::SoftOn >::value();
  }
  static const char* value(const ::ifm3d::SoftOnRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ifm3d::SoftOnResponse> should match 
// service_traits::MD5Sum< ::ifm3d::SoftOn > 
template<>
struct MD5Sum< ::ifm3d::SoftOnResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ifm3d::SoftOn >::value();
  }
  static const char* value(const ::ifm3d::SoftOnResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ifm3d::SoftOnResponse> should match 
// service_traits::DataType< ::ifm3d::SoftOn > 
template<>
struct DataType< ::ifm3d::SoftOnResponse>
{
  static const char* value()
  {
    return DataType< ::ifm3d::SoftOn >::value();
  }
  static const char* value(const ::ifm3d::SoftOnResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // IFM3D_MESSAGE_SOFTON_H