require 'spec_helper'

describe "passages/index" do
  before(:each) do
    assign(:passages, [
      stub_model(Passage,
        :title => "Title",
        :body => "MyText",
        :test_body => "MyText",
        :user_id => 1,
        :file_name => "File Name"
      ),
      stub_model(Passage,
        :title => "Title",
        :body => "MyText",
        :test_body => "MyText",
        :user_id => 1,
        :file_name => "File Name"
      )
    ])
  end

  it "renders a list of passages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "File Name".to_s, :count => 2
  end
end
