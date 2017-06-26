require_relative "base"

module Profanator
  module String
    def profane?
      Profanator::Base.profane? self
    end
  end
end

String.include Profanator::String
