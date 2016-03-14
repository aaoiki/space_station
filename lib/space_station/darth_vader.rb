module SpaceStation
  class DarthVader < SpaceStation
    def write_before_response
      puts IO.read("#{ASCII_PATH}/darth_vader")
    end
  end
end

