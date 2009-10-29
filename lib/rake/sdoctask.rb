require 'rake/rdoctask'

module Rake
  # Just a customized version of the normal RDoc task for generating SDocs.
  class SDocTask < RDocTask
    def initialize
      @name = :rdoc
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
