require File.expand_path('../helper', __FILE__)

module Sawyer
  class ResponseTest < TestCase
    def setup
      @agent  = FakeAgent.new
      @schema = Sawyer::Schema.read @agent,
        IO.read(File.expand_path("../../example/user.schema.json", __FILE__))
      @agent.schemas['/schemas/user'] = @schema

      @rel_hash = {:name => 'self', :href => '/users/1', :method => 'get',
        :schema_href => '/schemas/user'}

      @relation = Sawyer::Relation.from(@rel_hash)
    end

    def test_
  end
end

