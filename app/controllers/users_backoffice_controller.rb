class UsersBackofficeController < ApplicationController
    before_action: autheticate_user!

    layout 'users_backoffice'
end
