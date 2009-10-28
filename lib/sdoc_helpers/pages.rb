require 'rake/rdoctask'

module Rake
  # Just a customized version of the normal RDoc task for generating SDocs.
  class SDocTask < RDocTask
    def initialize(name = :rdoc)
      if name.is_a?(Hash)
        invalid_options = name.keys.map { |k| k.to_sym } - [:rdoc, :clobber_rdoc, :rerdoc]
        if !invalid_options.empty?
          raise ArgumentError, "Invalid option(s) passed to RDocTask.new: #{invalid_options.join(", ")}"
        end
      end

      @name = name
      @rdoc_files = Rake::FileList.new
      @rdoc_files.include('README*')
      @rdoc_files.include('LICENSE*')
      @rdoc_files.include('lib/**/*.rb')
      @rdoc_dir = 'docs'
      @main = Dir['README*'].first
      @title = nil
      @template = 'direct'
      @external = false
      @inline_source = true
      @options = ['--fmt', 'shtml']
      yield self if block_given?
      define
    end
  end
end

namespace :pages do
  task :publish => [ :check_dirty, :rerdoc ] do
    `git checkout gh-pages`
    `ls -1 | grep -v docs | xargs rm -rf; mv docs/* .; rm -rf docs`
    `git add .; git commit -m "update docs"; git push origin gh-pages`
    `git checkout master`
    puts :done
  end

  desc "Initialize GitHub Pages with documentation"
  task :init => [ :check_dirty, :rerdoc ] do
    `git symbolic-ref HEAD refs/heads/gh-pages`
    `rm .git/index`
    `ls -1 | grep -v docs | xargs rm -rf; mv docs/* .; rm -rf docs`
    `git add .;git commit -m "create docs"; git push origin gh-pages`
    `git checkout master`
    puts :done
  end

  task :check_dirty do
    if !`git status`.include?('nothing to commit')
      abort "dirty index - not publishing!"
    end
  end
end

desc "Build and publish documentation using GitHub Pages."
task :pages => "pages:publish"
