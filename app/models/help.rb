class Help < ApplicationRecord
  belongs_to :user
  belongs_to :need
  enum status: { offered: 0, in_progress: 1, completed: 2 }

  # Validaciones y relaciones aquí
end
