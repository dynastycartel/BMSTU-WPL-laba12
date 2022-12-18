require 'rails_helper'

RSpec.describe 'Content', type: :system do
	scenario 'valid input' do
		visit home_path
		expect(find("#loginmsg")).to have_text('In order to be able to use this service, you have to be signed in.')
	end
end