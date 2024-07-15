require "sinatra"
require "sinatra/reloader"

get ("/howdy") do
  erb (:hello)
end 

get ("/goodbye") do
  erb (:bye)
end

#Number One Option
get ("/square/new") do
  erb (:new_square_calc)
end

get ("/square/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num**2

  erb (:square_results)
end

#Number Two Option
get ("/square_root/new") do
  erb (:square_root_calc)
end

get ("/square_root/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num**(0.5)

  erb (:square_root_results)
end

#Number Three Option
get ("/payment/new") do
  erb (:payment_calc)
end

get ("/payment/results") do
  @the_apr = params.fetch("APR").to_f
  @the_years = params.fetch("number_years").to_f
  @the_principal = params.fetch("principal").to_f

  @n_periods = @the_years * -12
  @rate = @the_apr/12/100

  @numerator = @rate * @the_principal

  @denominator_one = (1 + @rate) ** @n_periods
  @denominator = 1 - @denominator_one

  @the_payment = @numerator / @denominator
  @the_payment_refined = @the_payment.to_fs(:currency) 

  erb (:payment_results)
end

#Number Four Option
get ("/square/new") do
  erb (:new_square_calc)
end

get ("/square/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num**2

  erb (:square_results)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
