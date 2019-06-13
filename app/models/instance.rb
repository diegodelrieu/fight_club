class Instance < ApplicationRecord
  belongs_to :champion
  belongs_to :weapon
  belongs_to :shield
end
