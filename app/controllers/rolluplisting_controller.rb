class RolluplistingController < ApplicationController 
 def index
 @listings = Listing.find(:all)
  end
end