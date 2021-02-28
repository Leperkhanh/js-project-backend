class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :body, :completed, :user, :list
end
