class PostSerializer < ActiveModel::Serializer

  attributes :abilities, :id, :title, :content, :created_at, :type_name, :user_email, :user_name

  has_many :tags, serializer: TagSerializer

  def user_name
    object.user.name
  end

  def user_email
    object.user.email
  end

  def type_name
    object.type.name
  end

  def abilities
    {
        destroy: scope == object.user
    }
  end



end

