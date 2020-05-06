class NumbersQuiz
  def questions
    []
  end

  def generate_question
    number = rand(10)
    question = Question.new
    question.prompt = "2 * #{number} = ? "
    question.answer = (2 * number).to_s
    question
  end

  def hex_to_decimal
    require_relative 'lib/base_convertor'
    1.upto(8) do |level|
      puts "LEVEL #{level}"
      16.times do
        number = rand 16**level
        puts BaseConvertor.ten_to_sixteen number
        gets
        puts number
        puts
      end
    end
  end

  def powers_of_2
    def random_power
      (0..16).to_a.sample
    end

    loop do
      this_power = random_power
      answer = 2 ** this_power
      correct = false

      system('clear')
      print "\n\t2 to the power of #{this_power}\t"

      until correct do
        if gets.strip.to_i == answer
          puts "yes"
          correct = true
        else
          `say no`
        end
      end
    end
  end

  def times_2
    def generate_question
    end

    def prompt_for_answer
      @answer_recieved = gets.strip
    end

    def right_answer?
      out = (@answer_received == @question.answer)
      puts "right_answer? #{out}"
      out
    end

    loop do
      @question = generate_question
      puts @question 

      loop do
        puts @question.prompt
        prompt_for_answer
        puts @question.answer
        break if right_answer?
      end
    end
  end
end
