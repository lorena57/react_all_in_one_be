class User < ApplicationRecord
    has_many: contacts
    has_many: groceries
    has_many: notes
end
