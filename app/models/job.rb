class Job < ApplicationRecord
  validates :title, presence: true
  validates :wage_lower_bound, presence: true
  validates :wage_upper_bound, presence: true
  validates :wage_lower_bound, numericality: { greater_than: 0 }
  scope :recent, -> {order("created_at DESC")}
  scope :published, -> {where(is_hidden: false)}

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end

  has_many :resumes

  has_many :job_relationships
  has_many :applied_job, through: :job_relationships, source: :job
end
