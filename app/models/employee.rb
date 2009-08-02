class Employee < ActiveRecord::Base
  set_table_name 'employee'
  self.primary_key = 'empid'

  attr_accessor :ourid

  def before_save
    self.id=self.ourid
  end
end
