module ExternalDependencyWrapper
  def self.external_dependency(foo:, bar:)
    ExternalDependency.new(foo, bar)
  end
end
