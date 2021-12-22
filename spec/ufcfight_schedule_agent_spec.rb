require 'rails_helper'
require 'huginn_agent/spec_helper'

describe Agents::UfcfightScheduleAgent do
  before(:each) do
    @valid_options = Agents::UfcfightScheduleAgent.new.default_options
    @checker = Agents::UfcfightScheduleAgent.new(:name => "UfcfightScheduleAgent", :options => @valid_options)
    @checker.user = users(:bob)
    @checker.save!
  end

  pending "add specs here"
end
