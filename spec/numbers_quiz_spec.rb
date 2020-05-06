require 'numbers_quiz'
require 'question'

RSpec.describe Question do
  it 'is a struct with :prompt and :answer' do
    question = Question.new
    expect(question).to respond_to(:prompt)
    expect(question).to respond_to(:answer)
  end
end

RSpec.describe NumbersQuiz do
  let (:new_quiz) { NumbersQuiz.new }

  it 'works' do
    raise unless NumbersQuiz
  end

  it 'can quiz hex to decimal' do
    expect(new_quiz).to respond_to(:hex_to_decimal)
  end

  it 'does powers of 2' do
    expect(new_quiz).to respond_to(:powers_of_2)
  end

  it 'why did i think i needed to practice my twos times tables?' do
    # probably to focus on designing the quiz algo/objects
    expect(new_quiz).to respond_to(:times_2)
  end

  context 'generating questions' do
    it 'responds to generate_question' do
      expect(new_quiz).to respond_to(:generate_question)
      expect(new_quiz.generate_question).to be_an_instance_of(Question)
    end
  end

  context 'putting it all together' do
    it 'a new quiz has no questions' do
      expect(new_quiz.questions.count).to eq(0)
    end
  end
end
__END__
ok, so how does a question work?

it has a question and and and an answer
  and the answer is either right or wrong
  but calling the class Question and the method question is
    weird? confusing? wrong?
      i mean weird is good but
      there's gotta be some domain lingo i can use
      site:.edu how to write quizzes

__LINGO__
quiz exam test
grade passing
multiple choice
free sequential redo

attempt ← ding ding ding
response

correct
marks
feed
back

alternative


i need an important words filter.  reading takes too long.


doc > strip_bs(html punctuation etc) > tally(words)
  and then rank/weight(?) them vs. their commonality in the language at large

  https://www.english-corpora.org/coca/

