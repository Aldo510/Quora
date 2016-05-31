class Question < ActiveRecord::Base
  # Remember to create a migration!
  has_many :answers
  has_many :questionVotes
end
