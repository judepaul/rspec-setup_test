require 'rails_helper'

RSpec.describe ApplnInfo, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "is valid with valid attributes" do 
    FactoryGirl.create(:appln_info).should be_valid
  end
  it "has valid with a appln_number" do 
    ApplnInfo.build(:appln_info, appln_number: 'A2016111500001').should be_valid
  end
  it "is not valid without a appln_number" do 
    FactoryGirl.build(:appln_info, appln_number: nil).should_not be_valid
  end
  it "is not valid without a appln_type" do 
    FactoryGirl.build(:appln_info, appln_type: nil).should_not be_valid
  end
  it "is not valid without a appln_status" do 
    FactoryGirl.build(:appln_info, appln_status: nil).should_not be_valid
  end
end




