require 'spec_helper'

describe "custom gitlab-test" do
  let(:project) { create(:project, :repository) }

  it "has custom-encoding-gitattributes branch" do
    expect(project.repository.branch_exists?("custom-encoding-gitattributes"))
      .to eq(true)
  end
end
