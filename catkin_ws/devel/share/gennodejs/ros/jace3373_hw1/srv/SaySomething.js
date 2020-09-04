// Auto-generated. Do not edit!

// (in-package jace3373_hw1.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SaySomethingRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.challenge = null;
    }
    else {
      if (initObj.hasOwnProperty('challenge')) {
        this.challenge = initObj.challenge
      }
      else {
        this.challenge = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaySomethingRequest
    // Serialize message field [challenge]
    bufferOffset = _serializer.string(obj.challenge, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaySomethingRequest
    let len;
    let data = new SaySomethingRequest(null);
    // Deserialize message field [challenge]
    data.challenge = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.challenge.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jace3373_hw1/SaySomethingRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85001950c0ca64b6557f8f4df9adaf21';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string challenge
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaySomethingRequest(null);
    if (msg.challenge !== undefined) {
      resolved.challenge = msg.challenge;
    }
    else {
      resolved.challenge = ''
    }

    return resolved;
    }
};

class SaySomethingResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response = null;
    }
    else {
      if (initObj.hasOwnProperty('response')) {
        this.response = initObj.response
      }
      else {
        this.response = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SaySomethingResponse
    // Serialize message field [response]
    bufferOffset = _serializer.string(obj.response, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaySomethingResponse
    let len;
    let data = new SaySomethingResponse(null);
    // Deserialize message field [response]
    data.response = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.response.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'jace3373_hw1/SaySomethingResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6de314e2dc76fbff2b6244a6ad70b68d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string response
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaySomethingResponse(null);
    if (msg.response !== undefined) {
      resolved.response = msg.response;
    }
    else {
      resolved.response = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SaySomethingRequest,
  Response: SaySomethingResponse,
  md5sum() { return '5cf00296e00289a29765eb8938fd9e13'; },
  datatype() { return 'jace3373_hw1/SaySomething'; }
};
