class Todo < ApplicationRecord
    belongs_to :project
    # указываю, что нужно проверять text и isCompleted на наличие
    validates :text, presence: true
end
