module SpaceStation
  class Apollo < SpaceStation
    def write_before_response
      puts IO.read("#{ASCII_PATH}/apollo")
    end
  end
end

