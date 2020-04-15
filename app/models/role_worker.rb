class RoleWorker < ApplicationRecord
  belongs_to :worker
  belongs_to :role
  belongs_to :group
end
