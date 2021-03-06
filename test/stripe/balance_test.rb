require File.expand_path('../../test_helper', __FILE__)

module Stripe
  class BalanceTest < Test::Unit::TestCase
    should "balance should be retrievable" do
      @mock.expects(:get).once.returns(test_response(test_balance))
      balance = Stripe::Balance.retrieve
      assert_equal('balance', balance['object'])
    end
  end
end
