
require_relative "lib/db/postgres/version"

Gem::Specification.new do |spec|
	spec.name = "db-postgres"
	spec.version = DB::Postgres::VERSION
	
	spec.summary = "Ruby FFI bindings for libpq C interface."
	spec.authors = ["Samuel Williams"]
	spec.license = "MIT"
	
	spec.files = Dir.glob('{lib}/**/*', File::FNM_DOTMATCH, base: __dir__)
	
	spec.required_ruby_version = ">= 2.5"
	
	spec.add_dependency "ffi"
	
	spec.add_development_dependency "bake"
	spec.add_development_dependency "covered"
	spec.add_development_dependency "bundler"
	spec.add_development_dependency "rspec", "~> 3.6"
end