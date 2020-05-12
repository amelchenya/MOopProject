class Wain < ApplicationRecord
  belongs_to :user
  


  def  self.progress(wain)
   
    wain.image.to_s
   end

   def  self.summCost(wains)
    res=0
    for wain  in wains
      if wain.cost!=nil
      res=res+wain.cost
      end
    end
    res.to_i
   end

end
