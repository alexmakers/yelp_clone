require "spec_helper"

describe ReviewMailer do
  describe "notify_owner" do
    let(:mail) { ReviewMailer.notify_owner }

    it "renders the headers" do
      mail.subject.should eq("Notify owner")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
