module SpaceStation
  class F16 < SpaceStation
    def write_before_response
      puts IO.read("#{ASCII_PATH}/f16")
    end
  end
end

