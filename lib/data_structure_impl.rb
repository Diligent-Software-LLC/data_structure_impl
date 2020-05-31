# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require_relative "data_structure_impl/version"
require 'node_comp'
require 'linked_list_comp'

# DataStructure.
# @class_description
#   A DataStructure type implementation. Implements the DataStructure type
#   interface.
class DataStructure < DataStructureInt

  # self.types().
  # @description
  #   Gets the types.
  # @return [Array]
  #   The TYPES array.
  def self.types()
    return TYPES
  end

  # self.instance?(obj = nil).
  # @description
  #   Predicate. Verifies an object is a Array, Hash, Queue, or SizedQueue
  #   instance.
  # @param obj [.]
  #   Any object.
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
  #   Predicate. Verifies a type is a DataStructure type.
  # @param type [.]
  #   Any type.
  # @return [TrueClass, FalseClass]
  #   True in the case the type is Array, Hash, Queue, or SizedQueue, or,
  #   an ancestor is in the type set. False otherwise.
  def self.type?(type = nil)

    element       = self.types_element?(type)
    element_child = self.type_child?(type)
    boolean       = (element || element_child)
    return boolean

  end

  # self.types_element?(type = nil).
  # @description
  #   Verifies an identifier is a TYPES element.
  # @param type [.]
  #   Any identifier.
  # @return [TrueClass, FalseClass]
  #   True in the case the argument is a TYPES element. False otherwise.
  def self.types_element?(type = nil)
    boolean = TYPES.include?(type)
    return boolean
  end

  # self.type_child?(type = nil).
  # @description
  #   Predicate. Verifies a type is a data structure type's child.
  # @param type [.]
  #   Any identifier.
  # @return [TrueClass, FalseClass]
  #   True in the case a TYPES element is type's ancestor. False otherwise.
  def self.type_child?(type = nil)

    boolean        = false
    type_ancestors = type.ancestors()
    type_ancestors.each { |ancestor|

      if (types_element?(ancestor) && !types_element?(type))
        boolean = true
      end

    }
    return boolean

  end

  # Private constants.
  TYPES = [Array, Hash, Queue, SizedQueue, Node, LinkedList].freeze()
  private_constant :TYPES

end
