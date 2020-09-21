def even_next(n)
  return n/2;
end

def odd_next(n)
  return (3 * n) + 1;
end

def next_value(n)
  return n % 2 === 0 ? even_next(n) : odd_next(n);
end

def collatz(n)
  i = n
  target = [i]
  while i > 1
    i = next_value(i)
    target << i
  end
  target
end

def longest_collatz
  i = 1
  longest = -1
  while i < 1000000
    result_length = collatz(i).length
    longest = i if result_length > longest
    i += 1
  end
  longest
end
