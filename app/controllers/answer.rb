get '/answers/:id' do
  @answers_user = Answer.where(user_id: current_user.id)
  erb :answers
end

get '/like/answer/:user_id/:answer_id' do
  @questions = Question.all.order("id DESC")
  p user = params[:user_id].to_i
  p ans = params[:answer_id].to_i
  voto = AnswerVote.find_by(answer_id: 1, user_id: 1)
  p "asdasd" * 34
  p voto
  if voto
    voto.votes += 1
    voto.save
  else
    AnswerVote.create(answer_id: ans, user_id: user, votes: 1)
  end
  erb :all_questions
end

get '/like/question/:user_id/:question_id' do
  @questions = Question.all.order("id DESC")
  user = params[:user_id]
  question = paramas[:question_id]
  voto = QuestionVote.find_by(answer_id: 1, user_id: 1)
  p "asdasd" * 34
  p voto
  if voto
    voto.votes += 1
    voto.save
  else
    QuestionVote.create(answer_id: ans, user_id: user, votes: 1)
  end
  erb :all_questions
end
#action para responder preguntas
post '/responde_to/:id' do
  answer = params[:answer]
  Answer.create(user_id: current_user.id, question_id:params[:id] ,answer: answer)
  redirect to 'logeado'
end
