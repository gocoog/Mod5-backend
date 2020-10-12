class User < ApplicationRecord
    has_many :children, class_name: "User", foreign_key: "parent_id"
    belongs_to :parent, class_name: "User", optional: true
    
    has_many :goals
    has_many :tasks

    has_secure_password
    validates :email_address, uniqueness: { case_sensitive: false }, presence: true
    validates :first_name, presence: true
    validates :last_name, presence: true 
    validates :password, presence: true

    
end
