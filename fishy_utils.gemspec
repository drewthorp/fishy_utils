# frozen_string_literal: true

require_relative 'lib/fishy_utils/version'

Gem::Specification.new do |spec|
  spec.name = 'fishy_utils'
  spec.version = FishyUtils::VERSION
  spec.authors = ['drewthorp']
  spec.email = ['drewthorp@icloud.com']

  spec.summary = 'A set of small utility methods for Rails projects'
  # spec.description = "TODO: Write a longer description or delete this line."
  spec.homepage = 'https://github.com/drewthorp/fishy_utils.git'
  spec.license = 'MIT'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/drewthorp/fishy_utils.git'
  spec.metadata['changelog_uri'] = 'https://github.com/drewthorp/fishy_utils/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.6'

  spec.add_dependency 'activesupport', '>= 6.0'
end
