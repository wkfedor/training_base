class Tovar < ApplicationRecord
  belongs_to :org, class_name: "NewOrg",  foreign_key:'new_id_data', primary_key: 'localization'
  scope :tovar4, -> { where(org_id: 4) }
end
