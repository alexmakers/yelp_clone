Given(/^no emails have been sent$/) do
  clear_emails
end

Then(/^an email should be sent to "(.*?)"$/) do |email_address|
  open_email email_address
  expect(current_email).not_to be_nil
end

Then(/^the email should contain "(.*?)"$/) do |content|
  expect(current_email).to have_content content
end