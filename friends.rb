def get_name(person)
  return @person5[:name]
end

def tv_show(person)
  return @person2[:favourites][:tv_show]
end

def snacks(person, scran)
    for food in person[:favourites][:snacks]
      if food == scran
        return true
    end
  end
end
# setup[@person3][:friends].push!("Scrappy-Doo")
def add_pal(person, pal)
  person[:friends].push(pal)
end

def remove_pal(person, pal)
  person[:friends].delete(pal)
end
#6
def cash(people)
total = 0
for person in people
  total += person[:monies]
end
  return total.to_i()
end

def loan(p1, p2, cash)
  p1[:monies]-= cash
  p2[:monies]+= cash
end


def everyone_snacks(array)
  set_food = []
  for snack in array
    set_food.push(snack[:favourites][:snacks])
  end
  return set_food.flatten
end

def no_friends(array)
  friend_array = []
  for person in array
    if person[:friends].length == 0
    friend_array.push(person[:name])
  end
  end
  return friend_array
end
