# frozen_string_literal: true

require_relative 'lib/procedure/version'

Gem::Specification.new do |spec|
  spec.name = 'procedure'
  spec.version = Procedure::VERSION
  spec.licenses = ['MIT']
  spec.summary = 'Creating simple and composable services objects'
  spec.authors = ['Ramon Rodrigues']
  spec.email = 'cerberus.ramon@gmail.com'
  spec.required_ruby_version = '>=2.6'

  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'rspec', '~> 3.10'
  spec.add_development_dependency 'rubocop', '~> 1.18', '>= 1.18.4'
  spec.add_development_dependency 'rubocop-rspec', '~> 2.4'
end
