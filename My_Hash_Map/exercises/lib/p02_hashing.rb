class Fixnum
  # Fixnum#hash already implemented for you
end

class Array
  def hash
    str = ""

    self.each do |el|
      str += el.hash.to_s
    end
    str.gsub('-', "").to_i
  end
end

class String
  def hash
    result = []
    self.each_byte do |c|
      result << c
    end

    result.hash
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
    self.values.sort.join("").hash
  end
end
