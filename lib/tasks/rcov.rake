unless Rails.env.production?
  require "rcov/rcovtask"

  Rcov::RcovTask.new "rcov" do |t|
    t.libs      << "test"
    t.output_dir = "coverage"
    t.rcov_opts  = %w(--html --text-report)
    t.rcov_opts << "--exclude 'gems|^(config|db)'"
    t.test_files = Dir["test/**/*_test.rb"]
  end
end
