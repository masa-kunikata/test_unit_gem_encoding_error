# NO MAGIC COMMENT !

require "test/unit"

class NoEncodingErrorTestMethodTest < Test::Unit::TestCase
  
  def test_no_encoding_error
    # FAILURE -> The messages including diffs are shown correctly.
    assert_equal 'あいうえお', 'あいうえ'
  end
end
