class Need < ApplicationRecord
  belongs_to :user
  enum status: { open: 0, in_progress: 1, completed: 2 }

  # Validaciones y relaciones aquí
end
