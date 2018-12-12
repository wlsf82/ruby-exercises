class Stack
  def initialize
    @elements = []
  end

  def empty?
    @elements.empty?
  end

  def push(element)
    @elements << element
  end

  def pop
    if @elements.empty?
      raise Exception.new('Cannot pop an empty stack')
    end
    @elements.pop
  end

  def size
    @elements.size
  end

  def top
    @elements.last
  end
end