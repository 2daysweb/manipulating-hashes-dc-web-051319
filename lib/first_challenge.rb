require 'pry'

def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we", 
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

contacts.collect do |person, data|
  data.collect do |attribute, value|
    if attribute == "favorite_icecream_flavors"
      if value.include?("strawberry")
        value.delete_if {|flavor| flavor == "strawberry"}
      end
    end
  end      
end    return contacts
      
end 

