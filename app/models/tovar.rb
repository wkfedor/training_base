class Tovar < ApplicationRecord
  belongs_to :org, class_name: "NewOrg"
  scope :tovar4, -> { where(org_id: 4) }
end
