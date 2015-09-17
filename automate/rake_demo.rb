##
## A Rakefile is just a Ruby source file that has access to some
## special methods: task, file, directory,etc .Calling one of these methods
## defines a task, which can be run by the command-line rake program,
## or called as a dependency by other tasks.

## Problem
## You want to automatically build a gem package for your application or library whenever
## you do a release.

## Solution
## Require the rake/gempackagetask library within your Rakefile, and create a Gem::Specification
## instance that describes your project. Feed it to the Rake::GemPackageTask constructor,
## which automatically defines a number of gem-related tasks:

require 'rubygems/package_task'

# Create a gem specification
gem_spec = Gem::Specification.new do |s|
  s.name = 'docbook'
  s.version = '1.0.0'
  s.summary = 'DocBook formatting program and library.'

  # Files containing Test::Unit test cases.
  s.test_files = FileList['tests/**/*']

  # Executable scripts under the "bin" directory.
  s.executables = ['voc']

  # List of other files to be included.
  s.files = FileList['README', 'ChangeLog', 'lib/**/*.rb']
end

Gem::PackageTask.new(spec) do |pkg|
    pkg.need_zip = true
    pkg.need_tar = true
end
