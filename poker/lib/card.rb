
class Card
  attr_reader :face_value

  def initialize(face_value)
    @face_value = face_value
  end

  def to_s
    @face_value
  end
end
