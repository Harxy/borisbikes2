require 'van'

describe Van do
 it "should be able to load bikes to van" do

   expect (subject).to respond_to :load_bike

 end

end
