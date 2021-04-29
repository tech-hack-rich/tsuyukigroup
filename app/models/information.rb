class Information < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :name_spell, format: { with: /\A[ァ-ヶー－]+\z/, message: 'はカタカナで入力してください' }
    validates :birthdate
    validates :email
    validates :motivation
  end
end
