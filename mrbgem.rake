require File.expand_path('../lib/files', __FILE__)
LIB_ROOT = File.expand_path('../lib/host-stats', __FILE__)

MRBFILES = [
  File.join(LIB_ROOT, 'mruby.rb'),
]

RBFILES.each do |path|
  MRBFILES << File.join(LIB_ROOT, "#{path}.rb")
end

if defined?(MRuby)
  MRuby::Gem::Specification.new('mruby-host-stats') do |spec|
    spec.license = 'MIT'
    spec.authors = 'Julien Ammous'
    spec.version = "0.0.1"
    
    spec.rbfiles = MRBFILES
    
    spec.add_dependency('mruby-rubyffi-compat', '>= 0.0.0')
  end
end
