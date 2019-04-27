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

contacts.collect do |key, value|
  if key == :favorite_icecream_flavors
    value.delete_if {|flavor| flavor == "strawberry"}
    binding.pry
  end
end
 
return contacts
      
end 

