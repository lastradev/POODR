class Gear
  def initialize(chainring: default_chainring, cog: 18, wheel:)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end
  
  def gear_inches
    ratio * diameter
  end

  def ratio
    chainring / cog.to_f
  end
  
  private

  attr_reader :chainring, :cog, :wheel

  def diameter
    wheel.diameter
  end

  def default_chainring
    (100/2) - 10 # silly code, useful example
  end
end
