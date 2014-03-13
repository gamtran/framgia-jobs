class Entry < ActiveRecord::Base
  require 'carrierwave/orm/activerecord'
  PERMITTED_PARAMS = [:name, :email, :github_id, :m_job_id, :self_pr,
    :other_information, :cv, :cv_cache, :remove_cv]
  validates :name, :email, :m_job_id, :self_pr, :cv, presence: true
  belongs_to :m_job, class_name: M::Job.name
  mount_uploader :cv, CvUploader
end
