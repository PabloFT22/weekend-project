class User < ApplicationRecord
    # macros - associations/db-relationships
    has_many :wooblies

    # this activates bycript for our password_digest
    has_secure_password

    #  class/scope methods

    #  instance methods



end
