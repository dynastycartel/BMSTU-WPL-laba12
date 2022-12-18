require 'spec_helper'
require 'rails_helper'

RSpec.describe SessionsController, type: :system do
	include RSpec::Expectations

	it 'should create an account' do
		visit '/users/new'
		fill_in 'email', with: 'test@test'
		fill_in 'login', with: 'test'
		fill_in 'password', with: 'test'
		fill_in 'password-confirmation', with: 'test'
		click_button 'Sign up'
		expect(page).to have_text('Welcome, test!')
	end

	it 'should sign up and calculate' do
		visit '/users/new'
		fill_in 'email', with: 'test@test'
		fill_in 'login', with: 'test'
		fill_in 'password', with: 'test'
		fill_in 'password-confirmation', with: 'test'
		click_button 'Sign up'
		fill_in 'num-input', with: '10'
		click_button 'Submit'
		expect(page).to have_text('Palindromes output')
	end

	it 'should not be able to calculate without being signed in' do
		visit home_path
		expect(page).to have_text('In order to be able to use this service, you have to be signed in.')
	end
end