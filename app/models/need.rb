class Need < ApplicationRecord
  belongs_to :user
  has_many :helps, dependent: :destroy
  enum status: { open: 0, in_progress: 1, completed: 2 }

  # Validaciones y relaciones aquí
end
