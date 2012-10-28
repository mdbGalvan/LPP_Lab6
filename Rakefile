# Rakefile

# Se define la tarea por defecto
task :default => :bin

desc " Run bin/ppt_main.rb"
task :bin do
  sh "ruby -w -Ilib bin/ppt_main.rb" 
end

desc " Run tests with --format documentation"
task :test do
  sh "rspec -Ilib test/ppt_spec.rb --format documentation --color"
end