module SpaceStation
  class MiddleFinger < SpaceStation
    def write_before_response
      puts IO.read("#{ASCII_PATH}/middle_finger")
    end
  end
end

