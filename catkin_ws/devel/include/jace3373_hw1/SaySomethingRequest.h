// Generated by gencpp from file jace3373_hw1/SaySomethingRequest.msg
// DO NOT EDIT!


#ifndef JACE3373_HW1_MESSAGE_SAYSOMETHINGREQUEST_H
#define JACE3373_HW1_MESSAGE_SAYSOMETHINGREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace jace3373_hw1
{
template <class ContainerAllocator>
struct SaySomethingRequest_
{
  typedef SaySomethingRequest_<ContainerAllocator> Type;

  SaySomethingRequest_()
    : challenge()  {
    }
  SaySomethingRequest_(const ContainerAllocator& _alloc)
    : challenge(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _challenge_type;
  _challenge_type challenge;





  typedef boost::shared_ptr< ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator> const> ConstPtr;

}; // struct SaySomethingRequest_

typedef ::jace3373_hw1::SaySomethingRequest_<std::allocator<void> > SaySomethingRequest;

typedef boost::shared_ptr< ::jace3373_hw1::SaySomethingRequest > SaySomethingRequestPtr;
typedef boost::shared_ptr< ::jace3373_hw1::SaySomethingRequest const> SaySomethingRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator1> & lhs, const ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator2> & rhs)
{
  return lhs.challenge == rhs.challenge;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator1> & lhs, const ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace jace3373_hw1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "85001950c0ca64b6557f8f4df9adaf21";
  }

  static const char* value(const ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x85001950c0ca64b6ULL;
  static const uint64_t static_value2 = 0x557f8f4df9adaf21ULL;
};

template<class ContainerAllocator>
struct DataType< ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jace3373_hw1/SaySomethingRequest";
  }

  static const char* value(const ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string challenge\n"
;
  }

  static const char* value(const ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.challenge);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SaySomethingRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jace3373_hw1::SaySomethingRequest_<ContainerAllocator>& v)
  {
    s << indent << "challenge: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.challenge);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JACE3373_HW1_MESSAGE_SAYSOMETHINGREQUEST_H