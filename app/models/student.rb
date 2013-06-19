require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :email, :format => { :with => /.*@.{1,}\..{2,}/,
    :message => "Valid email addresses only"}
  validates :age, :numericality => {:greater_than => 5}
  validates :email, :uniqueness => true 
  validates :phone, :format => { :with => /\(?\d{3}\)?.\d{3}.\d{4}/,
    :message => "Valid phone number only"}
  def name 
    "#{self.first_name} #{self.last_name}"
  end

  def age
    Time.now.year - self.birthday.year - ((Time.now.month > self.birthday.month || (Time.now.month == self.birthday.month && Time.now.day >= self.birthday.day)) ? 0 : 1)
    #now = Time.now
    #now - self.date
    #now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
  end
# implement your Student model here
end
