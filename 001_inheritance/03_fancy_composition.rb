class LandCruiserJ200
  drivable type: :suv, engine: '4.5 L'
end

LandCruiserJ200.new.drive! # will I drive?

#---

LandCruiserJ200.method(:drivable) # => #<Method: Class(Drivable)#drivable>
LandCruiserJ200.method(:drivable).source_location # => /some/gem/drivable/lib/drivable.rb:123
