user = User.new(first_name: "John", last_name: "Doe")
user.first_name_is?('John') # => true
user.last_name_is?('John') # => false


class User
  attr_reader :first_name, :last_name

  def initialize(first_name:, last_name:)
    @first_name = first_name
    @last_name = last_name
  end

  def method_missing(method_name, *args, &block)
    attribute_name = method_name.to_s.match(/(.*)_is\?/)&.captures&.first

    if !attribute_name.nil? && instance_variable_defined?("@#{attribute_name}")
      instance_variable_get("@#{attribute_name}") == args.first
    else
      super
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    method_name.to_s.end_with?('_is?') || super
  end
end
