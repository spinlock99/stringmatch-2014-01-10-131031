require 'spec_helper'
require 'stringmatch'

describe StringMatch do
  let(:base_string) { "hello world" }
  let(:string_match) { StringMatch.new(base_string) }

  shared_examples "initialize" do
    specify { expect { subject }.to_not raise_exception }
  end

  describe "new" do
    subject { StringMatch.new(base_string) }
    it_behaves_like "initialize"

    context "empty initialization" do
      subject { StringMatch.new }
      it_behaves_like "initialize"
    end
  end

  describe ".base_string" do
    let(:things) { "things" }

    subject { string_match.base_string }

    it { should eq(base_string) }

    it "resets the base string" do
      string_match.base_string = things
      subject.should eq(things)
    end
  end

  describe ".match" do
    let(:base_string) { "hello" }
    let(:match_string) { "example" }
    subject { string_match.match(match_string) }
    specify { expect { subject }.to_not raise_error }
    it { should eq("el") }
  end
end
