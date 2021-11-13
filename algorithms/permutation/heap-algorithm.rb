class Array

  def my_permutation
    my_permute(self.size, self)
  end

  private
  def my_permute(n, a, o = [])
    o.push a.clone if n == 1

    (0..(n-1)).to_a.each do |i|
      my_permute(n - 1, a, o)
      j = n.even? ? i : 0
      a[j], a[n-1] = a[n-1], a[j]
    end

    return o
  end

end

p [1,2,3].my_permutation
