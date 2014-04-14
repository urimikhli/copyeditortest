require 'spec_helper'

describe "copyeditor_tests/show" do
  before(:each) do
    @copyeditor_test = assign(:copyeditor_test, stub_model(CopyeditorTest,
      :firstname => "Firstname",
      :lastname => "Lastname",
      :user_id => 1,
      :email => "Email",
      :passage_id => 2,
      :attempt => "Attempt"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Firstname/)
    rendered.should match(/Lastname/)
    rendered.should match(/1/)
    rendered.should match(/Email/)
    rendered.should match(/2/)
    rendered.should match(/Attempt/)
  end
end
