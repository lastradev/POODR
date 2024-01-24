class Gear
  def initialize(chainring: default_chainring, cog:)
    @chainring = chainring
    @cog = cog
  end
  
  def gear_inches(diameter)
    ratio * diameter
  end

  def ratio
    chainring / cog.to_f
  end
  
  private

  attr_reader :chainring, :cog

  def default_chainring
    (100/2) - 10 # silly code, useful example
  end
end
