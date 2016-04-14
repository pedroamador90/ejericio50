require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  test 'task without title must be invalid'  do

  	task = Task.new title:nil
  	assert_not task.valid?
	  	
  end

  test 'task has one list' do
  	assert_not_nil tasks(:one).list
  end

  test 'show incomplete tasks'do

  	incomplete_tasks = Task.incomplete
  	assert_includes incomplete_tasks, tasks(:one)

  end

  test 'show complete tasks' do
  	skip 'pending'
  	complete_tasks = Task.complete

  end

end
