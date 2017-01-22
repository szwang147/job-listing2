class Resume < ApplicationRecord
  belong_to :user
  belong_to :job
end
