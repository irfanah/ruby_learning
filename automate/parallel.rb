## Problem
## Your build process takes too long to run. Rake finishes copying one set of files only to
## start copying another set. You could save time by running these tasks in parallel, instead of stringing them one after another.

## Solution
## Define a task using the multitask function instead of task. Each of that task’s prerequisites
## will be run in a separate thread.

## In this code, we’ll define two long-running tasks:

task 'copy_docs' do
  # Simulate a large disk copy.
  sleep 5
end

task 'compile_extensions' do
  # Simulate a C compiler compiling a bunch of files.
  sleep 10
end

task 'build_serial' => ['copy_docs','compile_extensions']
multitask 'build_parallel' => ['copy_docs','compile_extensions']
