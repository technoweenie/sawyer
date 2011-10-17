module Sawyer
  class Response
    attr_reader :relation, :api_response

    def initialize(relation, res, data)
      @relation     = relation
      @api_response = res

      if (data = @relation.build(data)).is_a?(Array)
        @resources = data
        @resource  = nil
      else
        @resources = [@resource = data]
      end
    end

    def each(&block)
      @resources.each(&block)
    end

    # Public: Gets the parsed Resources from the API response.
    #
    # Returns an Array of Sawyer::Resource instances.
    attr_reader :resources

    # Public: Gets a parsed Sawyer::Resource from the API response.
    #
    # Returns a Sawyer::Resource if only one was returned, or nil.
    attr_reader :resource
  end
end
