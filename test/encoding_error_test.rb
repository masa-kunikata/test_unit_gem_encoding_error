# NO MAGIC COMMENT !

require "test/unit"

class EncodingErrorTest < Test::Unit::TestCase
  
  test 'encoding_error' do
    # FAILURE -> "ArgumentError: invalid byte sequence in Windows-31J" raised
    assert_equal 'あいうえお', 'あいうえ'
  end
end
