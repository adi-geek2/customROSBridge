# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from carla_ackermann_control/EgoVehicleControlCurrent.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class EgoVehicleControlCurrent(genpy.Message):
  _md5sum = "f4947f35d6b5f0274303e776e887cd4b"
  _type = "carla_ackermann_control/EgoVehicleControlCurrent"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """#
# Copyright (c) 2018-2019 Intel Corporation.
#
# This work is licensed under the terms of the MIT license.
# For a copy, see <https://opensource.org/licenses/MIT>.
#
# This represents the current time/speed/accel values of the vehicle used by the controller

float32 time_sec
float32 speed
float32 speed_abs
float32 accel"""
  __slots__ = ['time_sec','speed','speed_abs','accel']
  _slot_types = ['float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       time_sec,speed,speed_abs,accel

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(EgoVehicleControlCurrent, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.time_sec is None:
        self.time_sec = 0.
      if self.speed is None:
        self.speed = 0.
      if self.speed_abs is None:
        self.speed_abs = 0.
      if self.accel is None:
        self.accel = 0.
    else:
      self.time_sec = 0.
      self.speed = 0.
      self.speed_abs = 0.
      self.accel = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_4f().pack(_x.time_sec, _x.speed, _x.speed_abs, _x.accel))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.time_sec, _x.speed, _x.speed_abs, _x.accel,) = _get_struct_4f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_4f().pack(_x.time_sec, _x.speed, _x.speed_abs, _x.accel))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.time_sec, _x.speed, _x.speed_abs, _x.accel,) = _get_struct_4f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4f = None
def _get_struct_4f():
    global _struct_4f
    if _struct_4f is None:
        _struct_4f = struct.Struct("<4f")
    return _struct_4f