require 'spec_helper'

describe "copyeditor_tests/index" do
  before(:each) do
    assign(:copyeditor_tests, [
      stub_model(CopyeditorTest,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :user_id => 1,
        :email => "Email",
        :passage_id => 2,
        :attempt => "Attempt"
      ),
      stub_model(CopyeditorTest,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :user_id => 1,
        :email => "Email",
        :passage_id => 2,
        :attempt => "Attempt"
      )
    ])
  end

  it "renders a list of copyeditor_tests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Attempt".to_s, :count => 2
  end
end
