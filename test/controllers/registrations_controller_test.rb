require "test_helper"

describe RegistrationsController do
  it "must get index" do
    get registrations_index_url
    must_respond_with :success
  end

  it "must get regist" do
    get registrations_regist_url
    must_respond_with :success
  end

end
