class ImageSerializer < ActiveModel::Serializer
  attributes :id, :url, :name, :like_count, :uuid
  has_many :comments

  def like_count
    object.likes.length
  end


end
