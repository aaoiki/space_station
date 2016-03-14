module SpaceStation
  class SpaceShuttle < SpaceStation
    def write_before_response
      puts IO.read("#{ASCII_PATH}/space_shuttle")
    end
  end
end
