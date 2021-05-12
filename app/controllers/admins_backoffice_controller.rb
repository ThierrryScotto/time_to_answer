class AdminsBackofficeController < ApplicationController
  before_action: autheticate_admin!

  layout 'admins_backoffice'
end
