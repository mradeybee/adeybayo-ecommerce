require 'rails_helper'

describe Order do
  let(:order) { Order.new }

  it "validates the presence" do
    order.status = nil
    order.valid?
    expect(order.errors[:status].empty?).to be false
    # expect(order.errors[:status].empty?).not_to be true
    # expect(order.errors[:status].any?).to be true
    # expect(order.errors[:status].any?).not_to be false
    # expect(order.errors[:status]).not_to be_empty
    # expect(order.errors[:status]).to be_any
    # expect(order.errors).to have_key(:status)
  end

  it "accepts valid statuses" do
    order.status = "waiting for payment"
    order.valid?
    expect(order.errors[:status].empty?).to be true

    order.status = "ready for shipping"
    order.valid?
    expect(order.errors[:status].empty?).to be true

    order.status = "shipping"
    order.valid?
    expect(order.errors[:status].empty?).to be true

    order.status = "delivered"
    order.valid?
    expect(order.errors[:status].empty?).to be true
  end

  it "doesn't accept statuses that are not in the list" do
    order.status = "something invalid"
    order.valid?
    expect(order.errors[:status].empty?).to be false
  end
end
