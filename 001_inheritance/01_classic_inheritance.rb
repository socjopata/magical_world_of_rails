class Car
  def drive!
    puts "wroom! wrrroooom!"
  end
end


class LandCruiserJ200 < Car
  def type
    :suv
  end

  def engine
    '4.5 L'
  end
end
