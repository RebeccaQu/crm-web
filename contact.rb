class Contact
	attr_accessor :id, :first_name, :last_name, :email, :notes

	def initialize(first_name, last_name, email, notes)
		@first_name = first_name.capitalize
		@last_name = last_name.capitalize
		@email = email
		@notes = notes
	end

	def display
		puts "Contact ID: #{@id}"
		puts "First Name: #{@first_name}"
		puts "Last Name: #{@last_name}"
		puts "Email: #{@email}"
		puts "Notes: #{@notes}"
	end

end
