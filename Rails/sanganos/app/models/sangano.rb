class Sangano < ActiveRecord::Base
  attr_accessible :apellido, :descripcion, :name
  validates :name, presence: true
end
