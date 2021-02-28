class TaskSerializer
  include FastJsonapi::ObjectSerializer
  attributes :body, :completed, :list, :user
end
