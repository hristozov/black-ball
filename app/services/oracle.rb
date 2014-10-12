class Oracle
  def self.give_answer(question)
    question.answer = ["Твърдо да", "Май не", "Да", "Не", "Зависи от времето", "Питай Юрий", "Едва ли", "Може би",
                       "По-скоро не", "Попитай отново по-късно"].sample
    question.save!
  end
end