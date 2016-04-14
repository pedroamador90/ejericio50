require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test 'List without title must be invalid'  do

  	task = Task.new title:nil
  	assert_not task.valid?
	  	
  end
end
