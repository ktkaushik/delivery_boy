require 'test_helper'

class NotificationMailerTest < ActionMailer::TestCase
  test "notify_seller" do
    mail = NotificationMailer.notify_seller
    assert_equal "Notify seller", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "notify_courier_company" do
    mail = NotificationMailer.notify_courier_company
    assert_equal "Notify courier company", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
