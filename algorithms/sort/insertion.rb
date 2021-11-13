class Array

  def insertion_sort
    aux = self.dup
    (0..(aux.size-1)).each do |i|
      j = i - 1
      while j >= 0 && aux[j] > aux[j+1]
        aux[j], aux[j+1] = aux[j+1], aux[j]
        j -= 1
      end
    end

    aux
  end

end

p [10,5,4,8,11].insertion_sort
