module SpaceStation
  class UFO < SpaceStation
    def write_before_response
      puts IO.read("#{ASCII_PATH}/ufo")
    end
  end
end


