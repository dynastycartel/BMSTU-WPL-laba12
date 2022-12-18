require "test_helper"

class PalindromesControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get palindromes_input_url
    assert_response :success
  end

  test "should get output" do
    get palindromes_output_url
    assert_response :success
  end
end
