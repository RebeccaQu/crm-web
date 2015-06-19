# require_relative('contacts.rb')

class Rolodex

  attr_reader :id
  attr_accessor :contacts

	def initialize
    @id = 1000
		@contacts = []
	end

  def add_contact(first_name, last_name, email, notes)
    contact = Contact.new(@id, first_name, last_name, email, notes)
    @contacts << contact
    
    @id += 1    
  end

  def modify_contact(id, attribute, new_attribute)

    contact = find(id)

    case attribute
      when "first_name" then contact.first_name = new_attribute
      when "last_name" then contact.last_name = new_attribute
      when "email" then contact.email = new_attribute
      when "notes" then contact.notes = new_attribute
    end

  end

  def display_contacts

    puts @contacts

  end

  def find(id)
    @contacts.find do |c|
      c.id == id
    end
  end

  def display_attribute(id_input, user_input)

    requested_contact = find(id_input)
    
    case user_input
      when "first name" then puts requested_contact.first_name
      when "last name" then puts requested_contact.last_name
      when "email" then puts requested_contact.email
      when "notes" then puts requested_contact.notes
    end

  end

  def delete_contact(id)
    contact = find(id)
    @contacts.delete(contact)
  end

end
