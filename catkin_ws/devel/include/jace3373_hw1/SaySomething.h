// Generated by gencpp from file jace3373_hw1/SaySomething.msg
// DO NOT EDIT!


#ifndef JACE3373_HW1_MESSAGE_SAYSOMETHING_H
#define JACE3373_HW1_MESSAGE_SAYSOMETHING_H

#include <ros/service_traits.h>


#include <jace3373_hw1/SaySomethingRequest.h>
#include <jace3373_hw1/SaySomethingResponse.h>


namespace jace3373_hw1
{

struct SaySomething
{

typedef SaySomethingRequest Request;
typedef SaySomethingResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SaySomething
} // namespace jace3373_hw1


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::jace3373_hw1::SaySomething > {
  static const char* value()
  {
    return "5cf00296e00289a29765eb8938fd9e13";
  }

  static const char* value(const ::jace3373_hw1::SaySomething&) { return value(); }
};

template<>
struct DataType< ::jace3373_hw1::SaySomething > {
  static const char* value()
  {
    return "jace3373_hw1/SaySomething";
  }

  static const char* value(const ::jace3373_hw1::SaySomething&) { return value(); }
};


// service_traits::MD5Sum< ::jace3373_hw1::SaySomethingRequest> should match
// service_traits::MD5Sum< ::jace3373_hw1::SaySomething >
template<>
struct MD5Sum< ::jace3373_hw1::SaySomethingRequest>
{
  static const char* value()
  {
    return MD5Sum< ::jace3373_hw1::SaySomething >::value();
  }
  static const char* value(const ::jace3373_hw1::SaySomethingRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::jace3373_hw1::SaySomethingRequest> should match
// service_traits::DataType< ::jace3373_hw1::SaySomething >
template<>
struct DataType< ::jace3373_hw1::SaySomethingRequest>
{
  static const char* value()
  {
    return DataType< ::jace3373_hw1::SaySomething >::value();
  }
  static const char* value(const ::jace3373_hw1::SaySomethingRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::jace3373_hw1::SaySomethingResponse> should match
// service_traits::MD5Sum< ::jace3373_hw1::SaySomething >
template<>
struct MD5Sum< ::jace3373_hw1::SaySomethingResponse>
{
  static const char* value()
  {
    return MD5Sum< ::jace3373_hw1::SaySomething >::value();
  }
  static const char* value(const ::jace3373_hw1::SaySomethingResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::jace3373_hw1::SaySomethingResponse> should match
// service_traits::DataType< ::jace3373_hw1::SaySomething >
template<>
struct DataType< ::jace3373_hw1::SaySomethingResponse>
{
  static const char* value()
  {
    return DataType< ::jace3373_hw1::SaySomething >::value();
  }
  static const char* value(const ::jace3373_hw1::SaySomethingResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // JACE3373_HW1_MESSAGE_SAYSOMETHING_H
