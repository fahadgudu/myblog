require 'test_helper'


class PostTest < ActiveSupport::TestCase
  RSpec.describe Post do
    it "is valid with a title and body and image" do
      expect(FactoryGirl.build(:post)).to be_valid
    end

  end
end
