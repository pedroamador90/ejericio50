require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test 'List without title must be invalid'  do

  	list = List.new title:nil
  	assert_not list.valid?
	  	
  end
end
