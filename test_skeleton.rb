# frozen_string_literal: true

class TestSkeleton
  def even_or_odd(number)
    if number == 2 || number.zero?
      puts 'Even'
    elsif (number % 2).zero?
      puts 'Even'
    else
      puts 'Odd'
    end
  end

  def reverse_array(number)
    number = number.to_s.chars.reverse
    print(number)
  end

  def high_and_low(test_string)
    array = test_string.split(' ')
    print "#{array.max} #{array.min}"
  end

  def my_languages(hash)
    hash = hash.sort_by { |_k, v| v }.reverse
    hash = hash.select { |_k, v| v >= 60 }
    hash = hash.to_h.keys
    print hash
  end

  def remove_array_elements(source_array, values_array)
    for i in (0..values_array.length - 1)
      for j in (0..source_array.length - 1)
        if source_array[j] == values_array[i]
          source_array.delete_at(j)
          redo
        end
      end
    end
    print source_array
  end

  def consecutive_duplicates(string)
    array = string.split(' ')
    i = 0
    for word in array
      if word == array[i + 1]
        array.delete_at(i)
        redo
      end
      i += 1
    end
    print array.join(' ')
  end

  def middle_chars(test_string)
    if (test_string.length % 2).zero?
      var = test_string.length / 2
      puts test_string[var - 1] + test_string[var]
    else
      var = (test_string.length / 2).round
      puts test_string[var]

    end
  end
end
