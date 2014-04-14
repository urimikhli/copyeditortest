require "spec_helper"

describe CopyeditorTestsController do
  describe "routing" do

    it "routes to #index" do
      get("/copyeditor_tests").should route_to("copyeditor_tests#index")
    end

    it "routes to #new" do
      get("/copyeditor_tests/new").should route_to("copyeditor_tests#new")
    end

    it "routes to #show" do
      get("/copyeditor_tests/1").should route_to("copyeditor_tests#show", :id => "1")
    end

    it "routes to #edit" do
      get("/copyeditor_tests/1/edit").should route_to("copyeditor_tests#edit", :id => "1")
    end

    it "routes to #create" do
      post("/copyeditor_tests").should route_to("copyeditor_tests#create")
    end

    it "routes to #update" do
      put("/copyeditor_tests/1").should route_to("copyeditor_tests#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/copyeditor_tests/1").should route_to("copyeditor_tests#destroy", :id => "1")
    end

  end
end
