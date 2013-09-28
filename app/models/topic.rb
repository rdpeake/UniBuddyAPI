class Topic < ActiveRecord::Base
  has_many :class_types

  before_save :update_topic_code

  private
  def update_topic_code
    write_attribute :code, subject_area + topic_number

    true
  end
end
