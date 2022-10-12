class PersonSerializer < ActiveModel::Serializer
  attributes :id, :image, :name, :age, :location, :description
end
