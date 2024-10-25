class User < ApplicationRecord
    enum role: { needer: 0, helper: 1 }
    
    # Validaciones y relaciones aquí
  end
  