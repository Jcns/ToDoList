class Todolist
  include Mongoid::Document
  belongs_to :user, foreign_key: :user_id
  field :titulo, type: String
end
