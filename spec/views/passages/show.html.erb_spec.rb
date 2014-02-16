require 'spec_helper'

describe "passages/show" do
  before(:each) do
    @passage = assign(:passage, stub_model(Passage,
      :title => "Title",
      :body => "MyText",
      :test_body => "MyText",
      :user_id => 1,
      :file_name => "File Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/File Name/)
  end
end
