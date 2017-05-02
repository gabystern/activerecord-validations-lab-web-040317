class MyValidator < ActiveModel::Validator
  def validate(record)
    array = ["Won't Believe", 'Secret', 'Top [number]', 'Guess']
    unless array.any?{ |w| record.title =~ /#{w}/ }
      record.errors[:title] << 'This is not a baitclick-y title!'
    end
  end
end
