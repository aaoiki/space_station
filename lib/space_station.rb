require "space_station/version"

module SpaceStation
  class SpaceShuttle
    def initialize(app)
      @app = app
    end

    def call(env)
      s = IO.read("space_station/ascii/space_shuttle")
      puts s
      @app.call(env)
    end
  end
end
