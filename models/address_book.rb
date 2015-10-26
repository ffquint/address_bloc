require_relative 'entry'

class AddressBook
  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone_number, email)
    index = 0
    @entries.each do |entry|
      if name < entry.name
        break
      end
      index += 1
    end

    @entries.insert(index, Entry.new(name, phone_number, email))
  end
# Code for assignment: remove_entry method.
  def remove_entry(name, phone_number, email)
    delete_entryj = nil

    @entries.each do |entry|
      if name == entry.name && phone == entry.phone_number && email == entry.email
        delete_entry = entry
      end
    end

    @entries.delete(delete_entry)
  end
end
