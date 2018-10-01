class Todolist
  include Mongoid::Document
  field :titulo, type: String
  field :descricao, type: String
end
