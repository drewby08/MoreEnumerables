
def capitalize_each_string(input)
  input.map(&:capitalize)
end

def fetch_the_dog(input)
  input.select{|x| x=="dog"}
end

def no_dogs_allowed(input)
  input.reject{|x| x=="dog"}
end

def count_the_animals(input)
  input.size
end

def fetch_the_first_two(input)
  input.first(2)
end

def fetch_CD_animals(input)
  #input.find_all{|x| ['c','d'].include? x.downcase[0]}
  input.grep(/^[cdCD]{1}[a-zA-Z ]*$/)
end

## DO NOT CHANGE CODE BELOW THIS LINE ##

animals = ["cat", "moose", "dog", "bird"]

p capitalize_each_string(animals) == ["Cat", "Moose", "Dog", "Bird"]

p fetch_the_dog(animals) == ["dog"] 

p no_dogs_allowed(animals) == ["cat", "moose", "bird"]

p count_the_animals(animals) == 4

p fetch_the_first_two(animals)  == ["cat", "moose"]

p fetch_CD_animals(animals) == ["cat", "dog"]
