class Contact < ApplicationRecord

  # Validation for the presence of a first_name
  validates :first_name, presence: true

  # Validation for the presence of a last_name
  validates :last_name, presence: true

  # Validation for an email address using a regular expression
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  # Validation for uniqueness of email
  validates :email, uniqueness: true

  # Validation for a phone number using a regular expression
  validates :phone, format: { with: /\A\+\d{1,3}\s\d{6,14}\z/, message: "must be in the format: '+123 4567890'" }

end
