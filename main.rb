class LinkedList
  attr_accessor :head
  def initialize(head)
    @head = head
  end

  def append(value)
    if(@head == nil)
      @head = value
    else
      cur = @head
      while cur.next_node != nil
        cur = cur.next_node
      end
      cur.next_node = Node.new(value)
    end
  end

  def prepend(value)
    if(@head == nil)
      @head = Node.new(value)
      @head
    else
      cur = @head
      @head = Node.new(value)
      @head.next_node = cur
      @head
    end
  end

  def size()
    count = 0
    cur = head
    while cur != nil
      cur = cur.next_node
      count += 1
    end
    count
  end



  def tail()
    if head == nil
      return head
    end
    cur = head
    while cur.next_node != nil
      cur = cur.next_node
    end
    cur
  end

  def at(index)
    count = 0
    cur = head
    while index > count
      cur = cur.next_node
      count += 1
    end
    cur
  end

  def pop()
    cur = head
    while cur.next_node.next_node != nil
      cur = cur.next_node
    end
    cur.next_node = nil
    head
  end

  def contains?(value)
    cur = head
    while cur != nil
      if cur.value == value
        return true
      end
      cur = cur.next_node
    end
    return false
  end

  def to_s()
    res = ""
    cur = head
    while cur != nil
      res += "#{cur.value}-> "
      cur = cur.next_node
    end
    res += "nil"
  end


end

class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

head0 = Node.new(1)
list = LinkedList.new(head0)
#node1 = Node.new(2)
#node2 = Node.new(3)
list.append(2)
list.prepend(3)
list.pop()
puts list.size()
