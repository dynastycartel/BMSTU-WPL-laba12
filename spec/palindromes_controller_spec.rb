require_relative 'rails_helper'
require_relative 'spec_helper'

RSpec.describe PalindromesController do
	context 'passing 10 as argument' do
		it 'returns correctly' do
			expect(PalindromesController.get_palindromes(10)).to eq(
				{1=>"1", 3=>"11", 5=>"101", 7=>"111", 9=>"1001"})
		end
	end

	context 'passing 0 as argument' do
		it 'returns nothing' do
			expect(PalindromesController.get_palindromes(0)).to eq({})
		end
	end
end