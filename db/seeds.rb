User.destroy_all
List.destroy_all
Task.destroy_all

user = User.create(email: "test@test.com", password: "password")
user2 = User.create(email: "email@email.com", password: "password")

list1 = user.lists.create(name:"Shopping List")
list2 = user.lists.create(name:"School Lessons")
list3 = user2.lists.create(name:"House Chores")

task1 = user.tasks.create(body: "Milk", completed: false, list: list1)
task2 = user.tasks.create(body: "Eggs", completed: false, list: list1)
task3 = user.tasks.create(body: "Cheese", completed: false, list: list1)
task4 = user.tasks.create(body: "3 Lectures Monday", completed: false, list: list2)
task5 = user.tasks.create(body: "3 Lectures Tuesday", completed: false, list: list2)
task6 = user.tasks.create(body: "3 Lectures Wednesday", completed: false, list: list2)
task7 = user.tasks.create(body: "3 Lectures Thurday", completed: false, list: list2)
task8 = user.tasks.create(body: "3 Lectures Friday", completed: false, list: list2)
task9 = user2.tasks.create(body: "Do Laundry", completed: false, list: list3)
task10 = user2.tasks.create(body: "Clean Carpet", completed: false, list: list3)