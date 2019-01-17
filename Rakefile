require 'test/unit'

task default: :encoding_error_tests 

desc "encoding error tests"
task :encoding_error_tests do
  test_folder = File.join(__dir__, 'test')
  auto_runner_args = []

  Test::Unit::AutoRunner.run(true, test_folder, auto_runner_args)
end