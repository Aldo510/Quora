get '/questions/:id' do
  @questions_user = Question.all.where(user_id: current_user.id)
  erb :questions
end

get '/answers/:id' do
  @answer_user = Answer.all.where(user_id: current_user.id)
  erb :answers
end

get '/create_question' do
  erb :create_question
end

#Preguntas hechas por usuario 
get '/all_questions' do
  @questions = Question.all.order("id DESC")
  erb :all_questions
end

get '/answer_to/:id' do
  @question = Question.find(params[:id])
  erb :answer_question
end


post '/new_question' do
  pregunta = params[:question]
  p pregunta
  Question.create(user_id: current_user.id, question: pregunta)
  redirect to '/logeado'
end