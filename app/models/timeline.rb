require "control"

class Timeline < ActiveRecord::Base
  set_table_name 'timeline'
  self.primary_key = 'recid'

  def before_save
    self.id = Control.next
  end

end
