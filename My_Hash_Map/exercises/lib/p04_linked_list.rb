class Node
  include Enumerable

  attr_accessor :key, :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    # optional but useful, connects previous link to next link
    # and removes self from list.
  end
end

class LinkedList < Node

  def initialize
    @first = Node.new
    @last = Node.new
    @first.next = @last

  end

  def [](i)
    each_with_index { |link, j| return link if i == j }
    nil
  end

  def first
    @first
  end

  def last
    @last
  end

  def empty?
    return true if @first.val.nil?

    

  end

  def get(key)

    current_node = @first
    until current_node.next.nil?
      current_node.key
      return current_node.val if current_node.key == key
      current_node = current_node.next
    end
    nil
  end

  def include?(key)
  end

  def append(key, val)
    temp = Node.new(key, val)
    @first.prev = temp
    @first = temp
  end

  def update(key, val)
  end

  def remove(key)
  end

  def each
  end

  # uncomment when you have `each` working and `Enumerable` included
  # def to_s
  #   inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
  # end
end
