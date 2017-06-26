require "profanator/config"
require "profanator/core_ext"

module Profanator extend self

  def configure &block
    @config = Config.new(&block)
  end

  def config
    @config ||= Config.new
  end

  def clear_config!
    @config = Config.new
  end
end
