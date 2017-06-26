module Profanator
  class Base
    class << self
      def swear_words
        @swear_words ||= set_swear_words_list(Profanator.config.dictionaries)
      end

      def profane? text
        return false if text.empty?
        swear_words.each do |word|
          return true if text =~ /#{word}/iu
        end
        false
      end

      private

      def set_swear_words_list dictionaries
        words = []
        dictionaries.each do |file|
          # It's a custom dict file
          if File.exist?(file)
            words.concat File.open(file) { |f| YAML.load(f) }
          end
          # It's a dict file
          filepath = File.expand_path("../../../config/dicts/#{file}.yml", __FILE__)
          if (File.exist?(filepath))
            words.concat File.open(filepath) { |f| YAML.load(f) }
          end
        end
        words
      end
    end
  end
end
