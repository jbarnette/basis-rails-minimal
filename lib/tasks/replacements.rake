Rake::TaskManager.class_eval do # HACK
  def nuke task_name
    @tasks.delete task_name.to_s
  end
end

disabled = %w(test doc notes rails:template)
names    = Rake.application.tasks.map { |t| t.name }

names.each do |n|
  Rake.application.nuke n if disabled.any? { |d| /\A#{d}/ =~ n }
end

# Rails' default test task loads the environment three times. Once for
# units, once for functionals, and once for integration.

Rake::TestTask.new :test do |t|
  t.libs   << "test"
  t.pattern = "test/**/*_test.rb"
end
