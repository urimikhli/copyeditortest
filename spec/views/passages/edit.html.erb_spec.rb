require 'spec_helper'

describe "passages/edit" do
  before(:each) do
    @passage = assign(:passage, stub_model(Passage,
      :title => "MyString",
      :body => "MyText",
      :test_body => "MyText",
      :user_id => 1,
      :file_name => "MyString"
    ))
  end

  it "renders the edit passage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => passages_path(@passage), :method => "post" do
      assert_select "input#passage_title", :name => "passage[title]"
      assert_select "textarea#passage_body", :name => "passage[body]"
      assert_select "textarea#passage_test_body", :name => "passage[test_body]"
      assert_select "input#passage_user_id", :name => "passage[user_id]"
      assert_select "input#passage_file_name", :name => "passage[file_name]"
    end
  end
end
