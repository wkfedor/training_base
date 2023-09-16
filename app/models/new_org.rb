class NewOrg < ApplicationRecord
  has_many :tovars, foreign_key:'org_id'
end
