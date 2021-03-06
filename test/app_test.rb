require File.expand_path(File.dirname(__FILE__)) + '/../app'
require 'test/unit'
require 'rack/test'

ENV['RACK_ENV'] = 'test'

class AppTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_it_says
    get '/'
    assert last_response.ok?
  end
end
