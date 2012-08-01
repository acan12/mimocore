module Exceptions
  class InvalidTopic < StandardError
    def message
      "---------- error : Something error with your environment!"
    end
  end
end