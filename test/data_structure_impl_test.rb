require_relative 'test_helper'

# DataStructureTest.
# @class_description
#   Tests the DataStructure class.
class DataStructureTest < Minitest::Test

  CLASS = DataStructure

  # test_conf_doc_f_ex().
  # @description
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, and
  #   README.md files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')

  end

  # test_version_declared().
  # @description
  #   The version was declared.
  def test_version_declared()
    refute_nil(::DataStructure::VERSION)
  end

  # setup().
  # @description
  #   Set fixtures.
  def setup()

    @x1_data_0 = []
    @x2_data_0 = 1
    @x1_data_1 = Hash
    @x2_data_1 = Integer
    @x1_data_2 = SizedQueue
    @x2_data_2 = Numeric
    @x1_data_3 = Array
    @x2_data_3 = Integer

  end

  # private_method :TYPES

  # test_pc_x().
  # @description
  #   The TYPES constant is inaccessible.
  def test_pc_x()
    # assert_raises(NameError) {
    #   CLASS.const_get(:TYPES)
    # }
    # assert_raises(NameError) {
    #   CLASS::TYPES
    # }
  end

  # self.instance?(obj = nil)

  # test_c_inst_x1().
  # @description
  #   A valid instance.
  def test_c_inst_x1()
    assert(CLASS.instance?(@x1_data_0))
  end

  # test_c_inst_x2()
  # @description
  #   An invalid object.
  def test_c_inst_x2()
    refute(CLASS.instance?(@x2_data_0))
  end

  # self.type?(type = nil)

  # test_ct_x1().
  # @description
  #   A valid type.
  def test_ct_x1()
    assert(CLASS.type?(@x1_data_1))
  end

  # test_ct_x2().
  # @description
  #   An invalid type.
  def test_ct_x2()
    refute(CLASS.type?(@x2_data_1))
  end

  # Comment private_constant statement.
  # self.types_element?(type = nil)

  # test_te_x1().
  # @description
  #   A DataStructure type.
  def test_te_x1()
    assert(CLASS.types_element?(@x1_data_2))
  end

  # test_te_x2().
  # @description
  #   An invalid type.
  def test_te_x2()
    refute(CLASS.types_element?(@x2_data_2))
  end

  # self.type_child?(type = nil)

  # test_tc_x1().
  # @description
  #   A TYPES element.
  def test_tc_x1()
    refute(CLASS.type_child?(@x1_data_3))
  end

  # test_tc_x2().
  # @description
  #   An invalid type. No ancestors are TYPES elements.
  def test_tc_x2()
    refute(CLASS.type_child?(@x2_data_3))
  end

  # teardown().
  # @description
  #   Cleanup.
  def teardown()
  end

end

