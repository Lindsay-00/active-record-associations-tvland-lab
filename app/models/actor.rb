class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        self.first_name + " " + self.last_name
    end
  
    def list_roles
        list = []
        self.characters.each do |cha|
            first_half = cha.name
            last_half = cha.show.name
            whole = first_half + " - " + last_half
            list << whole
        end
        list
    end


       

end