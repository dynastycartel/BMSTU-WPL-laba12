class PalindromesController < ApplicationController
  include PalindromesHelper

  def input
  end

  def output
    if params[:num] == ''
      flash[:warning] = 'Fill in the field'
    elsif params[:num].to_i < 1 || params[:num].to_i > 1_000_000
      flash[:warning] = 'The number must be in range from 1 to 1.000.000'  
    end
    if flash.empty?
      num = params[:num].to_i
      @result = PalindromesController.get_palindromes(num)
    else
      redirect_to '/palindromes/input'
    end
  end

  def self.get_palindromes(num)
    @arr = (1..num).select { |i| 
      i.to_s == i.to_s.reverse && i.to_s(2) == i.to_s(2).reverse
    }
    result = Hash[@arr.zip @arr.map { |el| el.to_s(2) }]
  end
end
