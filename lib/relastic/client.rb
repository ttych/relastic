# frozen_string_literal: true

require "Faraday"

module Relastic
  # Elastic Rest Client
  class Client
    HEADERS = { "Content-Type" => "application/json",
                "Accept" => "application/json" }.freeze

    attr_reader :url, :user, :password

    def initialize(url:, user:, password:)
      @url = url
      @user = user
      @password = password
    end

    def test
      response = @conn.get('/')
    end

    def conn
      return @conn if @conn

      @conn = Faraday.new(
        url: url,
        headers: HEADERS
      )
    end
  end
end
