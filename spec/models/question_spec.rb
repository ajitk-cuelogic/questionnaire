require 'rails_helper'

describe Question do
	it "is invalid without a title" do
    	FactoryGirl.build(:question, title: nil).should_not be_valid
  	end

  	it "is invalid without a description" do
    	FactoryGirl.build(:question, description: nil).should_not be_valid
  	end

  	it "is valid question" do
    	FactoryGirl.build(:question).should be_valid
  	end
end