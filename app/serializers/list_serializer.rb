class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :user, :tasks
end
