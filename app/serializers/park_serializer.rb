class ParkSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :bathroom, :user_id, :editable

  def editable
    scope == object.user
  end
end
