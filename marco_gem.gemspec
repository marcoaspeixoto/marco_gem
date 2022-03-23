require_relative 'lib/marco_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "marco_gem"
  spec.version       = MarcoGem::VERSION
  spec.authors       = ["Marco Peixoto"]
  spec.email         = ["marcoaspeixoto@gmail.com"]

  spec.summary       = %q{Gem para teste}
  spec.description   = %q{Gem para teste}
  spec.homepage      = "https://github.com/marcoaspeixoto/marco_gem.git"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = "https://github.com/marcoaspeixoto/marco_gem.git"
  spec.metadata["source_code_uri"] = "https://github.com/marcoaspeixoto/marco_gem.git"
  spec.metadata["changelog_uri"] = "https://github.com/marcoaspeixoto/marco_gem.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
