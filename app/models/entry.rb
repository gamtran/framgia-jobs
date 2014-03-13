class Entry < ActiveRecord::Base
  PERMITTED_PARAMS = [:name, :email, :github_id, :m_job_id, :self_pr, :other_information]
  belongs_to :m_job, class_name: M::Job.name
end
