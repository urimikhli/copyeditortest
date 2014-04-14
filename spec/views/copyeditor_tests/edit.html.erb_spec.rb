require 'spec_helper'

describe "copyeditor_tests/edit" do
  before(:each) do
    @copyeditor_test = assign(:copyeditor_test, stub_model(CopyeditorTest,
      :firstname => "MyString",
      :lastname => "MyString",
      :user_id => 1,
      :email => "MyString",
      :passage_id => 1,
      :attempt => "MyString"
    ))
  end

  it "renders the edit copyeditor_test form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => copyeditor_tests_path(@copyeditor_test), :method => "post" do
      assert_select "input#copyeditor_test_firstname", :name => "copyeditor_test[firstname]"
      assert_select "input#copyeditor_test_lastname", :name => "copyeditor_test[lastname]"
      assert_select "input#copyeditor_test_user_id", :name => "copyeditor_test[user_id]"
      assert_select "input#copyeditor_test_email", :name => "copyeditor_test[email]"
      assert_select "input#copyeditor_test_passage_id", :name => "copyeditor_test[passage_id]"
      assert_select "input#copyeditor_test_attempt", :name => "copyeditor_test[attempt]"
    end
  end
end
