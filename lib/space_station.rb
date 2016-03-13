require "space_station/version"

module SpaceStation
  class SpaceShuttle
    def initialize(app)
      @app = app
    end

    def call(env)
      space_shuttle_path = File.join( File.dirname(__FILE__), './space_station/ascii/space_shuttle' )
      puts IO.read(space_shuttle_path)

      @app.call(env)
    end
  end
end
