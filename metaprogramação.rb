class User
  def initialize(name)
    User.create_method(name)
  end

  def self.create_method(name)
    define_method :"speak_#{name.downcase}!" do
      "Hello, everyone! I'm #{name}"
    end
  end
end

u = User.new("test")
puts u.speak_test!