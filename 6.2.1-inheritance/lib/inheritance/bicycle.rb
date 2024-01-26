class Bicycle
  attr_reader :style, :size,
              :tape_color,
              :front_shock, :rear_shock

  def initialize(**opts)
    @style = opts[:style]
    @size = opts[:size]
    @tape_color = opts[:tape_color]
    @front_shock = opts[:front_shock]
    @rear_shock = opts[:rear_shock]
  end

  # Every bike has the same defaults for
  # tire and chain size.
  def spares
    # Smelly code.
    if style == :road
      {
        chain: '11-speed',
        tire_size: '23',          # Millimeters.
        tape_color: tape_color
      }
    else
      {
        chain: '11-speed',
        tire_size: '2.1',         # Inches.
        front_shock: front_shock
      }
    end
  end
end
