class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        self.freebies.filter {|freebie| freebie.item_name == item_name} == [] ? false : true
    end

end
