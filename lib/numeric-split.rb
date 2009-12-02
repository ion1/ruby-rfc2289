class Numeric
  def split by
    if [0, 1].include? by
      raise ArgumentError, "The argument to split must not be #{by}", caller
    end
    if by < 0
      raise ArgumentError, "The argument to split must be positive", caller
    end

    it = self
    res = []
    while it > 0
      d, m = it.divmod by
      it = d
      res.unshift m
    end
    res
  end
end

class Array
  def merge by
    inject 0 do |total, i|
      by*total + i
    end
  end
end
