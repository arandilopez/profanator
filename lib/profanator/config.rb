module Profanator
  class Config
    attr_writer :dictionaries
    def initialize
      yield self if block_given?
      validate_config_options!
    end

    def dictionaries
      @dictionaries ||= %w{en}
    end

    def validate_config_options!
      #code
    end
  end
end
