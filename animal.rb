class Animal
  attr_reader :name, :voice

  def initialize(name)
    @name = name
    @voice = '...'
  end

  def cry
    "#{self.name}: #{voice}!"
  end
end