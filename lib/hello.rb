def hello_t(array)
  if block_given?
    i = 0
    while i<array.length
      yield array [i]
      i=i+1
    end
  array
  else puts "Hey! No block was given!"
  end
end

# call your method here!
=begin
hello_t(["Tim", "Tom", "Jim"]) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end



Enumerators under the hood
You've already worked with enumerator methods like #each and #collect.
These methods are called on collections, such as arrays.
They take blocks as their arguments and yield each element of the
collection to the block, allowing the code in the block to be applied
to each element of the collection.

In the code-along above, we built our own implementation of the #each
method. We used while to iterate through each element of the array and passed,
or yielded, each successive element to an accompanying block.
That block used a parameter placeholder, |name|, to set a variable, name,
equal to whatever value is yielded into the block at each step of the iteration.
That block also contained code to execute with each yielded element in turn.

=end
