require 'pry'

class String

  def sentence?
    unless self.end_with?(".")
      false
    else
      true
    end
  end

  def question?
    unless self.end_with?("?")
      false
    else
      true
    end
  end

  def exclamation?
    unless self.end_with?("!")
      false
    else
      true
    end
  end

  def count_sentences
    counter = 0
    self.split.each do |word|
      if word.sentence? || word.question? || word.exclamation?
        counter += 1
      end
    end
    counter
  end
end
