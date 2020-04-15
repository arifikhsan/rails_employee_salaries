class ProjectWorker < ApplicationRecord
  belongs_to :project
  belongs_to :worker, through: supervisor
  belongs_to :worker
end
