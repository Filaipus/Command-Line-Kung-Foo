# 1. Search all files of a given extension for a specified string.  (eg:  search [drive] [extension] [string]) 

Dir.glob("*.txt").each do |filez|
file = File.open(filez)
puts file.find_all { |line| line =~ /kung fu/}
end
