require "test_helper"

describe HomesController do
  it "must get index" do
    get homes_index_url
    must_respond_with :success
  end

end
