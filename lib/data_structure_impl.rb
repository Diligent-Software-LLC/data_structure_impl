# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require_relative "data_structure_impl/version"
require_relative 'data_structure_impl/data_structure_helper'

# DataStructure.
# @class_description
#   A DataStructure type implementation. Implements the DataStructure type
#   interface.
class DataStructure < DataStructureInt

  # self.instance?(obj = nil).
  # @description
  #   Boolean method. Verifies an object is a Array, Hash, Queue, or SizedQueue
  #   instance.
  # @param obj [*] Any object.
  # @return [TrueClass, FalseClass]
  #   True in the case the object's class or an ancestor class is Array, Hash,
  #   Queue, SizedQueue, or Node. False otherwise.
  def self.instance?(obj = nil)

    boolean = false
    TYPES.each { |type|
      if (obj.is_a?(type))
        boolean = true
      end
    }
    return boolean

  end

  # self.type?(type = nil).
  # @description
  #   Boolean method. Verifies a type is a DataStructure type.
  # @param type [*] Any type.
  # @return [TrueClass, FalseClass]
  #   True in the case the type is Array, Hash, Queue, or SizedQueue, or,
  #   an ancestor is in the type set. False otherwise.
  def self.type?(type = nil)

    element       = self.types_element?(type)
    element_child = self.type_child?(type)
    boolean       = (element || element_child)
    return boolean

  end

  TYPES = [Array, Hash, Queue, SizedQueue].freeze()
  private_constant :TYPES

end

