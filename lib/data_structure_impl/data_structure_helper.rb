# Copyright (C) 2020 Diligent Software LLC. All rights reserved. Released
# under the GNU General Public License, Version 3. Refer LICENSE.txt.

require_relative '../data_structure_impl'

# DataStructureHelper.
# @module_description
#   Contains class helper methods.
module DataStructureHelper

  extend_object(DataStructure)

  # types_element?(type = nil).
  # @description
  #   Verifies an identifier is a TYPES element.
  # @param type [*] Any identifier.
  # @return [TrueClass, FalseClass]
  #   True in the case the argument is a TYPES element. False otherwise.
  def types_element?(type = nil)
    boolean = TYPES.include?(type)
    return boolean
  end

  # type_child?(type = nil).
  # @description
  #   Boolean method. Verifies a type is a data structure type's
  #   child.
  # @param type [*] Any identifier.
  # @return [TrueClass, FalseClass]
  #   True in the case a TYPES element is type's ancestor. False otherwise.
  def type_child?(type = nil)

    boolean        = false
    type_ancestors = type.ancestors()
    type_ancestors.each { |ancestor|
      if (self.types_element?(ancestor) && !self.types_element?(type))
        boolean = true
      end
    }
    return boolean

  end

  TYPES = [Array, Hash, Queue, SizedQueue].freeze()

end
