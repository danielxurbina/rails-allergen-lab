class User < ActiveRecord::Base
belongs_to :recipe
belongs_to :ingredient

validates :name, presence: true
end
