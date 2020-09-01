// Generated by gencpp from file jace3373_hw1/students.msg
// DO NOT EDIT!


#ifndef JACE3373_HW1_MESSAGE_STUDENTS_H
#define JACE3373_HW1_MESSAGE_STUDENTS_H


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
struct students_
{
  typedef students_<ContainerAllocator> Type;

  students_()
    : first_name()
    , last_name()
    , age(0)
    , score(0)
    , stamp()  {
    }
  students_(const ContainerAllocator& _alloc)
    : first_name(_alloc)
    , last_name(_alloc)
    , age(0)
    , score(0)
    , stamp()  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _first_name_type;
  _first_name_type first_name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _last_name_type;
  _last_name_type last_name;

   typedef uint8_t _age_type;
  _age_type age;

   typedef uint32_t _score_type;
  _score_type score;

   typedef ros::Time _stamp_type;
  _stamp_type stamp;





  typedef boost::shared_ptr< ::jace3373_hw1::students_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::jace3373_hw1::students_<ContainerAllocator> const> ConstPtr;

}; // struct students_

typedef ::jace3373_hw1::students_<std::allocator<void> > students;

typedef boost::shared_ptr< ::jace3373_hw1::students > studentsPtr;
typedef boost::shared_ptr< ::jace3373_hw1::students const> studentsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::jace3373_hw1::students_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::jace3373_hw1::students_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::jace3373_hw1::students_<ContainerAllocator1> & lhs, const ::jace3373_hw1::students_<ContainerAllocator2> & rhs)
{
  return lhs.first_name == rhs.first_name &&
    lhs.last_name == rhs.last_name &&
    lhs.age == rhs.age &&
    lhs.score == rhs.score &&
    lhs.stamp == rhs.stamp;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::jace3373_hw1::students_<ContainerAllocator1> & lhs, const ::jace3373_hw1::students_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace jace3373_hw1

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::jace3373_hw1::students_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::jace3373_hw1::students_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jace3373_hw1::students_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::jace3373_hw1::students_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jace3373_hw1::students_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::jace3373_hw1::students_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::jace3373_hw1::students_<ContainerAllocator> >
{
  static const char* value()
  {
    return "52d1b2c81d8b2c8bfa3060186c7aba94";
  }

  static const char* value(const ::jace3373_hw1::students_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x52d1b2c81d8b2c8bULL;
  static const uint64_t static_value2 = 0xfa3060186c7aba94ULL;
};

template<class ContainerAllocator>
struct DataType< ::jace3373_hw1::students_<ContainerAllocator> >
{
  static const char* value()
  {
    return "jace3373_hw1/students";
  }

  static const char* value(const ::jace3373_hw1::students_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::jace3373_hw1::students_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string first_name\n"
"string last_name\n"
"uint8 age\n"
"uint32 score\n"
"time stamp\n"
;
  }

  static const char* value(const ::jace3373_hw1::students_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::jace3373_hw1::students_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.first_name);
      stream.next(m.last_name);
      stream.next(m.age);
      stream.next(m.score);
      stream.next(m.stamp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct students_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::jace3373_hw1::students_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::jace3373_hw1::students_<ContainerAllocator>& v)
  {
    s << indent << "first_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.first_name);
    s << indent << "last_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.last_name);
    s << indent << "age: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.age);
    s << indent << "score: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.score);
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JACE3373_HW1_MESSAGE_STUDENTS_H
