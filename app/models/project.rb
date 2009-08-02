class Project < ActiveRecord::Base
  attr_accessor :ourid

  def before_save
    self.id=self.ourid
  end
end
