require('pry')

class String
  define_method(:word_find)do |word|
    whole_string=self
    counter=0
    whole_string=whole_string.split(" ")
    whole_string.each do |each_word|
      if(word==each_word)
        counter+= 1
      end
    end
    counter
  end
  define_method(:letter_find)do |letter|
    whole_string=self
    word_length=letter.length
    counter=0
    whole_string=whole_string.split(" ")
    whole_string.each do |each_word|
      each_word.length.times do |time|
        slice = each_word.slice(time,time+word_length)
        if(letter==slice)
          counter+= 1
        end
      end
    end
    counter
  end
end
