output = `git branch`

branches = output.split

branches.delete("*")
frozen_list = ["master"]

branches.each do |branch|
  puts `git checkout #{branch}`
  puts `git reset --hard start`
  puts `git checkout master`
  puts `git branch -D #{branch}` unless frozen_list.include?(branch)
end

puts `rm README`

puts `clear`
