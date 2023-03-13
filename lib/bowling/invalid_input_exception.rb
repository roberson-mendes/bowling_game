module Bowling
    class InvalidInputException < StandardError
        def initialize(message = "generic error: invalid input in file")
            super(message = message)
        end

        def self.with_blank_error
            Bowling::InvalidInputException.new(message = "File can't be empty.")
        end
        
        def self.with_characteres_error
            Bowling::InvalidInputException.new(message = "Invalid characteres. Each line must be <name><tab><score>")
        end

        def self.with_negative_score_error
            Bowling::InvalidInputException.new(message = "Invalid score. Score must be a number between 0 and 10")
        end
    end
end