require './config/environment'
require "zeitwerk"

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use DestinantionController
use UsersController
run ApplicationController
