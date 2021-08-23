class Response
  attr_reader :status, :body

  def initialize(status:, body:)
    @status = status
    @body = body
  end
end

response = Request.get('some_url')
puts response # => #<Response:0x00007f9e3f1a0150>




###



#leveraging to_s convention
class Response
  attr_reader :status, :body

  def initialize(status:, body:)
    @status = status
    @body = body
  end

  def to_s
    "status: #{@status}, body: #{@body}"
  end
end

response = Request.get('some_url')
puts response # => "status: 200, body: some page body"
