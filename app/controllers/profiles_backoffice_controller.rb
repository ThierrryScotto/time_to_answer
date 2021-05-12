class ProfilesBackofficeController < ApplicationController
  before_action: autheticate_profile!

  layout 'profiles_backoffice'
end
