class Batman
  MAGIC_NUMBER = 1

  def rotfl
    Apricot.lol
  end
end

class Apricot
  def self.lol
    Batman::MAGIC_NUMBER
  end
end


require "batman"
require "apricot"
