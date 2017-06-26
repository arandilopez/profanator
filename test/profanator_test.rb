require 'test_helper'

class Profanator::Test < ActiveSupport::TestCase
  setup do
    Profanator.clear_config!
  end

  test "is module" do
    assert_kind_of Module, Profanator
  end

  test "module is configurable" do
    assert Profanator.respond_to?(:configure)
    Profanator.configure do |c|
      c.dictionaries = %w{en es}
    end
    assert_equal ["en", "es"], Profanator.config.dictionaries
  end

  test "module load by default an english file" do
    assert Profanator.config.dictionaries.include? 'en'
  end

  test "base load some known words" do
    assert Profanator::Base.swear_words.include?("fuck")
  end

  test "string evaluate its profanity" do
    assert "fuck".respond_to?(:profane?)
    assert "fuck".profane?
  end
end
