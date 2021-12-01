# frozen_string_literal: true

module Relastic
  # cluster entrypoint
  class Cluster
    attr_reader :url, :user, :password

    def initialize(url:, user:, password:)
      @url = url
      @user = user
      @password = password
    end

    def client
      return @client if @client
    end
  end
end
