class Network < ActiveRecord::Base
  has_many :shows

  def sorry
    "We're sorry about passing on John Mulaney's pilot"
  end

  # def actors_list
  #   self.shows.each{|show| show.actors.map{|actor| actor.full_name}}
  # end


end
