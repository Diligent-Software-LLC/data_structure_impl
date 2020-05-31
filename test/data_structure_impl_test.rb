require_relative 'test_helper'

# DataStructureTest.
# @class_description
#   Tests the DataStructure class.
class DataStructureTest < Minitest::Test

  # Constants.
  CLASS            = DataStructure
  ARRAY_DS         = []
  INTEGER_DATA     = 1
  HASH_DS_ID       = Hash
  INTEGER_ID       = Integer
  SIZEDQUEUE_DS_ID = SizedQueue
  NUMERIC_DS_ID    = Numeric
  ARRAY_DS_ID      = Array

  # test_conf_doc_f_ex().
  # @description
  #   The .travis.yml, CODE_OF_CONDUCT.md, Gemfile, LICENSE.txt, README.md,
  #   .yardopts, .gitignore, Changelog.md, CODE_OF_CONDUCT.md,
  #   data_structure_impl.gemspec, Gemfile.lock, and Rakefile files exist.
  def test_conf_doc_f_ex()

    assert_path_exists('.travis.yml')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('Gemfile')
    assert_path_exists('LICENSE.txt')
    assert_path_exists('README.md')
    assert_path_exists('.yardopts')
    assert_path_exists('.gitignore')
    assert_path_exists('Changelog.md')
    assert_path_exists('CODE_OF_CONDUCT.md')
    assert_path_exists('data_structure_impl.gemspec')
    assert_path_exists('Gemfile.lock')
    assert_path_exists('Rakefile')

  end

  # test_version_declared().
  # @description
  #   The version was declared.
  def test_version_declared()
    refute_nil(CLASS::VERSION)
  end

  # setup().
  # @description
  #   Set fixtures.
  def setup()
  end

  # DataStructure.types().

  # test_t_x().
  # @description
  #   The types are Array, Hash, Queue, SizedQueue, Node, and LinkedList.
  def test_t_x()
    expected = [Array, Hash, Queue, SizedQueue, Node, LinkedList]
    assert_equal(expected, DataStructure.types())
  end

  # self.instance?(obj = nil).

  # test_c_inst_x1().
  # @description
  #   A valid instance.
  def test_c_inst_x1()
    assert(CLASS.instance?(ARRAY_DS))
  end

  # test_c_inst_x2().
  # @description
  #   An invalid object.
  def test_c_inst_x2()
    refute(CLASS.instance?(INTEGER_DATA))
  end

  # self.type?(type = nil).

  # test_ct_x1().
  # @description
  #   A valid type.
  def test_ct_x1()
    assert(CLASS.type?(HASH_DS_ID))
  end

  # test_ct_x2().
  # @description
  #   An invalid type.
  def test_ct_x2()
    refute(CLASS.type?(INTEGER_ID))
  end

  # teardown().
  # @description
  #   Cleanup.
  def teardown()
  end

end
