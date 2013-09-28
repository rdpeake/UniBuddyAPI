class BaseModel < ActiveRecord::Base
  self.abstract_class = true

  def self.pluck_h (*columns)
    retrieved_rows = self.pluck(*columns)

    topics = []
    retrieved_rows.each do |row|
      topic = {}

      if columns.length > 1
        columns.each_with_index do |column, index|
          topic[column] = row[index]
        end
      else
        topic[columns.first] = row
      end

      topics.append(topic)
    end

    return topics
  end
end