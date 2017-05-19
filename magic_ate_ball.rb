@questions = []
@answer = [
	"What would your mother say?",
	"What would your father say?", 
	"It is certain", 
	"Without a doubt", 
	"Yes, Definitely", 
	"As I see it, yes",
	"Most Likely", 
	"If you wish to drown, do not torture yourself with shallow water.",
	"The one who is good at shooting does not hit the center of the target.",
	"Be master of mind, Padawan, be not mastered by mind.",
]

def clones
	@answer_clone = @answer.clone
end

def reset_answers
	@answer = @answer_clone
end

def input_answer
	puts "Please type your super-insightful answer below"
	generic_answer = gets.chomp.to_s
	@answer.push(generic_answer)
	puts "Thank you, your answer has been added to the bank"
	second_welcome
end

def first_answer
	puts "Interesting Question. Here's what I think:"
	puts "#{@answer.sample}"
	puts "It's really that simple."
	puts "Now what would you like to do?"
	second_welcome
end

def second_answer
	puts "Interesting Question. Here's what I think:"
	puts "#{@answer.sample}"
	puts "It's really that simple."
	puts "Now what would you like to do?"
	second_welcome
end

def ask_me_anything
	question = gets.chomp.to_s
	unless question.match(/^[\w\d\s?)(*&^%$#@!-_=+]+$/)
		puts "Please type an actual question :-)"
	end
	@questions.push(question)
	first_answer
end

def list_questions
	puts "Here are all the questions you've asked thus far"
	puts @questions
	
	puts "Boy you've asked some goofy stuff"
	puts "Now what...?"
	second_welcome
end

def list_answers
	puts "Here are all the available answers"
	@answer.each {
		|answer| puts "#{answer}"}
	puts "You're a scholar, and a wise-guy"
	puts "Now what can I do for you?"
	second_welcome
end


def ask_me_anything_2
	question = gets.chomp.to_s
	unless question.match(/^[\w\d\s?)(*&^%$#@!-_=+]+$/)
		puts "Please type an actual question :-)"
	end
	@questions.push(question)
	puts @questions.length
	second_answer
end

def first_selection
	decision = gets.chomp.to_i
	case decision
	when 1
		puts "Ok, ask me anything"
		ask_me_anything
	when 2
		puts "Doesn't seem like magic anymore, but whatever"
		input_answer
	when 3
		puts "Well, this was certainly entertaining \n T-T-F-N, Ta-Ta For Now"
		exit
	else
		puts "I didn't understand that"
		puts "Please select 1, 2, or 3"
		menu
	end
end

def second_selection 
	second = gets.chomp.to_i
	case second
	when 1 
		puts "Ok, ask me anything"
		ask_me_anything_2
	when 2
		puts "Doesn't seem like magic anymore, but whatever"
		input_answer
	when 3 
		list_questions
	when 4
		list_answers
	when 5
		exit
	when 6
		reset_answers
		second_welcome
	else
		puts "Please select from options above"
		second_welcome
	end
end


def second_welcome
	puts "Magic 8-ball Main Menu"
	puts "1) Ask a quesion"
	puts "2) Give a customized answer"
	puts "3) Display all questions asked"
	puts "4) Display all available answers"
	puts "5) Exit the 8-ball"
	puts "6) Reset to Original Answers"
	second_selection
end

def welcome
	puts "Welcome to the Magic Eight-ball menu"
	puts "What would you like to do:"
	""""
	menu
end

def menu
	puts "1) Ask a question"
	puts "2) Give a customized answer"
	puts "3) Leave this Ate-ball"
	first_selection
end

clones
welcome

