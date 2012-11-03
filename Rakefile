# Rakefile

# Se define la tarea por defecto
task :default => :bin

desc " Run bin/ppt_main.rb"
task :bin do
  sh "ruby -w -Ilib bin/ppt_main.rb" 
end

desc " Run tests with --format documentation"
task :test do
  sh "rspec -Ilib -Itest test/ppt_spec.rb --format documentation --color"
end

desc " Run tests with --format documentation"
task :html do
  sh "rspec -Ilib -Itest test/ppt_spec.rb --format html --color"
end