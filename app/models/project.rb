class Project < ApplicationRecord
    has_many :todos, -> { order('id DESC') }, dependent: :destroy
    # Указываю, что перед записью нужно проверять title на наличие и уникальность
    validates :title, presence: true, uniqueness: true
end
