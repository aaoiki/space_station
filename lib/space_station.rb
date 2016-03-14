require "space_station/version"

module SpaceStation
  class SpaceStation
    ASCII_PATH = File.join(File.dirname(__FILE__), '/space_station/ascii/')

    def initialize(app)
      @app = app
    end

    def call(env)
      write_before_response

      @app.call(env)
    end

    def write_before_response
      ""
    end
  end
end

require 'space_station/space_shuttle'
require 'space_station/f16'
require 'space_station/airplane'
require 'space_station/ufo'
require 'space_station/apollo'
