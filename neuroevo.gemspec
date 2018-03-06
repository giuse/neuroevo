DEPRECATION_NOTICE = %Q[\
    IMMEDIATE DEPRECATION WARNING: this gem has been deprecated.
    
    Please find the same functionality with extended feature, better scoping and
    integration to more methods in the
    [`machine_learning_workbench` gem](https://github.com/giuse/machine_learning_workbench):
    check out the
    [nes classes](https://github.com/giuse/machine_learning_workbench/tree/master/lib/machine_learning_workbench/optimizer/natural_evolution_strategies),
    [neural network classes](https://github.com/giuse/machine_learning_workbench/tree/master/lib/machine_learning_workbench/neural_network), and
    [neuroevo example](https://github.com/giuse/machine_learning_workbench/blob/master/examples/neuroevolution.rb).
    You should be able to transition in no time. Any problem: just ping me.
    Apologies for the inconvenience, hope you will enjoy the new gem!
  ].gsub('  ', '')

Gem::Specification.new do |s|
  s.name          = 'neuroevo'
  s.version       = `git describe`
  s.platform      = Gem::Platform::RUBY
  s.author        = 'Giuseppe Cuccu'
  s.email         = 'giuseppe.cuccu@gmail.com'
  s.summary       = "Neuroevolution in Ruby."
  s.description   = DEPRECATION_NOTICE

  s.homepage      = 'https://github.com/giuse/neuroevo'
  s.license       = 'MIT'
  s.post_install_message = DEPRECATION_NOTICE

  s.rubyforge_project = "neuroevo" # required for validation
  s.files         = `git ls-files -z`.split("\x0")
  # s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  # s.extensions = "ext/extconf.rb" # C extensions
  s.test_files    = s.files.grep(%r[^(spec)/])
  s.required_ruby_version = '~> 2.0'

  # Install
  s.add_development_dependency 'bundler', '~> 1.12'
  s.add_development_dependency 'rake', '~> 11.1'

end
