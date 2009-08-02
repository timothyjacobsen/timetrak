class Control < ActiveRecord::Base
  set_table_name 'control'
  self.primary_key = 'controlid'

  # class methods
  class << self
    def next
      ensure_data
      control = Control.last
      control.update_attribute(:recid, control.recid + 1)
      control.recid
    end

    def ensure_data
      control = Control.last
      unless control
        control = Control.new(:recid=>1)
        control.id = 1
        control.save!
      end
    end
  end
end
