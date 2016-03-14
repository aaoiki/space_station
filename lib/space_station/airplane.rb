module SpaceStation
  class Airplane < SpaceStation
    def write_before_response
      puts IO.read("#{ASCII_PATH}/airplane")
    end
  end
end

