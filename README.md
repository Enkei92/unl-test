Test ToDolist task for UNL solutions
Demo: https://unl-testapp.herokuapp.com/

Startup order:

  Setup gems:

    bundle install

  Setup database:

    rake db:create
    rake db:migrate
    rake db:seed

Start server:
   
    rails s

Enjoy at localhost:3000!

Overview: 
  You can login as admin (email: admin@exmaple.com, password: 123456) or as user (email: usr1@example.com, password: 123456), or create your own user account.

  Admin can create projects and tasks, can assign users to tasks.
  User can add first name and last name at profile page, also at profile page user can check tasks he was assigned to. User can read project pages, but can't manage projects and tasks.
  Both can use projects filter on main page.
