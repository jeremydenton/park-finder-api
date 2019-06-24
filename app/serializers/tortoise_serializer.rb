class TortoiseSerializer < ActiveModel::Serializer
  attributes :id, :color, :age, :user_id, :editable

  def editable
    scope == object.user
  end
end
