# frozen_string_literal: true

require_relative "lib/ProfanityWordsFilter/version"

Gem::Specification.new do |spec|
  spec.name          = "ProfanityWordsFilter"
  spec.version       = ProfanityWordsFilter::VERSION
  spec.authors       = ["grigordanut"]
  spec.email         = ["danut.grigor@gmail.com"]
  spec.date          = '2021-09-05'
  spec.summary       = "Replacing letters from profanity words with hashed letters.."
  spec.description   = "Profanity Words Filter."
  spec.homepage      = "https://rubygems.org/profiles/grigordanut"
  spec.files         = ["lib/ProfanityWordsFilter.rb"]
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://github.com/grigordanut/Profanity-Words-Filter-Gem"

  spec.metadata["homepage_uri"] = spec.homepage

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

end
