require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length do
    collection << yield(array[i])
    yield(array[i])
    i += 1
  end
  collection
end

hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }
