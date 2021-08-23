class LandCruiserJ200
  include Drivable

  def type
    :suv
  end

  def engine
    '4.5 L'
  end
end

#what happens if I drive?
LandCruiserJ200.new.drive!
