require File.dirname(__FILE__) + '/../../spec_helper'
require File.dirname(__FILE__) + '/../../shared/complex/conjugate'

ruby_version_is ""..."1.9" do
  describe "Complex#conj" do
    it_behaves_like(:complex_conjugate, :conj)
  end
end
