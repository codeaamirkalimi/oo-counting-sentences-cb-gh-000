require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    counter = 0
    sentence_mark = ["?",".","!"]
    words = self.split("")
    words.each_with_index do |word,index|
    if sentence_mark.include?(word)
      counter +=1
      previous_index = index -1
      if words[previous_index] == words[index]
        counter-=1
      end
    end
    end
    counter
  end

end
