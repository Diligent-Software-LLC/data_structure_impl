# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require_relative '../data_structure_impl'

# DataStructureHelper.
# Contains class helper methods.
module DataStructureHelper

  extend_object :DataStructure

  # self.types_element?(type = nil).
  # Verifies an identifier is a TYPES element.
  # @param type [*] Any identifier.
  # @return [TrueClass, FalseClass]
  #   True in the case the argument is a TYPES element. False otherwise.
  def self.types_element?(type = nil)
    boolean = TYPES.include?(type)
    return boolean
  end

  # self.type_child?(type = nil).
  # Boolean method. Verifies a type is a data structure type's child.
  # @param type [*] Any identifier.
  # @return [TrueClass, FalseClass]
  #   True in the case a TYPES element is type's ancestor. False otherwise.
  def self.type_child?(type = nil)
    boolean        = false
    type_ancestors = type.ancestors()
    type_ancestors.each { |ancestor|
      if (DataStructure.types_element?(ancestor) &&
          !DataStructure.type_element?(type))
        boolean = true
      end
    }
    return boolean
  end

  TYPES = [Array, Hash, Queue, SizedQueue].freeze()

end
