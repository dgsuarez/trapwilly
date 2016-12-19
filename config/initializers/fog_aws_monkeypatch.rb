
# Workaround for fakes3+fog problems

module FogAwsStorageExtensions
  def request(params, &block)
    params[:body] = params[:body].read if params[:body].respond_to?(:read) && (Rails.env.development? || Rails.env.test?)
    super
  end
end
module Fog
  module Storage
    class AWS
      class Real
        prepend FogAwsStorageExtensions
      end
    end
  end
end
