require "test_helper"

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get hello via root" do
    get root_url
    assert_response :success
    assert_match "hello Lam", response.body
  end

  test "should get hello via test/hello" do
    get test_hello_url
    assert_response :success
    assert_match "hello Lam", response.body
  end
end
