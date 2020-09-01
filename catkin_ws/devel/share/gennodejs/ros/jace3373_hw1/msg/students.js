// Auto-generated. Do not edit!

// (in-package jace3373_hw1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class students {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.first_name = null;
      this.last_name = null;
      this.age = null;
      this.score = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('first_name')) {
        this.first_name = initObj.first_name
      }
      else {
        this.first_name = '';
      }
      if (initObj.hasOwnProperty('last_name')) {
        this.last_name = initObj.last_name
      }
      else {
        this.last_name = '';
      }
      if (initObj.hasOwnProperty('age')) {
        this.age = initObj.age
      }
      else {
        this.age = 0;
      }
      if (initObj.hasOwnProperty('score')) {
        this.score = initObj.score
      }
      else {
        this.score = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type students
    // Serialize message field [first_name]
    bufferOffset = _serializer.string(obj.first_name, buffer, bufferOffset);
    // Serialize message field [last_name]
    bufferOffset = _serializer.string(obj.last_name, buffer, bufferOffset);
    // Serialize message field [age]
    bufferOffset = _serializer.uint8(obj.age, buffer, bufferOffset);
    // Serialize message field [score]
    bufferOffset = _serializer.uint32(obj.score, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type students
    let len;
    let data = new students(null);
    // Deserialize message field [first_name]
    data.first_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [last_name]
    data.last_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [age]
    data.age = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [score]
    data.score = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.first_name.length;
    length += object.last_name.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'jace3373_hw1/students';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52d1b2c81d8b2c8bfa3060186c7aba94';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string first_name
    string last_name
    uint8 age
    uint32 score
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new students(null);
    if (msg.first_name !== undefined) {
      resolved.first_name = msg.first_name;
    }
    else {
      resolved.first_name = ''
    }

    if (msg.last_name !== undefined) {
      resolved.last_name = msg.last_name;
    }
    else {
      resolved.last_name = ''
    }

    if (msg.age !== undefined) {
      resolved.age = msg.age;
    }
    else {
      resolved.age = 0
    }

    if (msg.score !== undefined) {
      resolved.score = msg.score;
    }
    else {
      resolved.score = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = students;
