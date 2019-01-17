# encoding: utf-8

require "test/unit"

class NoEncodingErrorTest < Test::Unit::TestCase
  
  test 'no_encoding_error' do
    # FAILURE -> The messages including diffs are shown correctly.
    assert_equal 'あいうえお', 'あいうえ'
  end
end
