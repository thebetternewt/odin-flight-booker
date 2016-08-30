class PassengerMailer < ApplicationMailer
	default from: 'notifications@example.com'

	def confirmation_email(passenger, booking)
		@passenger = passenger
		@booking = booking
		mail(to: @passenger.email, subject: 'Flight Booking Confirmation') 
	end
end
