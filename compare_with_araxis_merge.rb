# The Ruby script to compare files or folders in Araxis Merge
# Created 01/12/2014 by Eugene Naruta

BRANCH = '20140112'
PROJECTS = ['project1', 'project2']

COMPARE_APP = '/Applications/Araxis\ Merge.app/Contents/Utilities/compare'

if ARGV.count == 0
  $stderr.puts 'ERROR: Nothing to process. Select file or folder first and try again.'
  exit 1
end

first_file_name = ARGV[0]
$stdout.puts "First file name: #{first_file_name}"

second_file_name = first_file_name
PROJECTS.each do |project|
  pattern, replacement = first_file_name.include?("#{BRANCH}/") ? ["/#{project}#{BRANCH}/", "/#{project}/"] : ["/#{project}/", "/#{project}#{BRANCH}/"]
  second_file_name = second_file_name.gsub(pattern, replacement)
end
$stdout.puts "Second file name: #{second_file_name}"

$stdout.puts 'Executing Araxis Merge...'
system "#{COMPARE_APP} -nowait #{first_file_name} #{second_file_name}"
$stdout.puts 'All Done'
