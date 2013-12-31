require 'test_helper'

class ReadmorejsRailsTest < ActionDispatch::IntegrationTest
  teardown { clean_sprockets_cache }

  test "engine" do
    assert_equal ::Rails::Engine, Readmorejs::Rails::Engine.superclass
  end

  test "javascripts are available" do
    get "/assets/readmore.js"
    assert_response :success
    get "/assets/readmore-min.js"
    assert_response :success
  end

  private

  def clean_sprockets_cache
    FileUtils.rm_rf File.expand_path("../dummy/tmp",  __FILE__)
  end
end
