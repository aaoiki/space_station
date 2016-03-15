module SpaceStation
  class Unicorn < SpaceStation
    def write_before_response
      puts IO.read("#{ASCII_PATH}/unicorn")
    end
  end
end

