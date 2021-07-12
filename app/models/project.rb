class Project < ApplicationRecord
    has_many :todos, dependent: :destroy
    # Указываю, что перед записью нужно проверять title на наличие и уникальность
    validates :title, presence: true, uniqueness: true
end
