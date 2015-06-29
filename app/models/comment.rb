class Comment < ActiveRecord::Base
  belongs_to :post
  has_many :tags, dependent: :destroy
end
