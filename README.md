##Project 2 - The Cook Book 
---
We have been learning Ruby and Rails for the past two weeks and this project is based on our knowledge of what we learnt.
[Start adding recipes.](https://murmuring-mountain-82441.herokuapp.com/)

---
####Project Summary
---
This project is called The Cook Book where People can write quick and easy to make recipes and add images. You create an account and start adding recipes to your page!

---
####Technology Used
---

* Ruby on rails version (Ruby 2.5.0 ,Rails 5.1.5)
* Postgresql
* Bootstrap version 4.0
* HTML
* CSS

---
####Deployment instructions on local server
---

* Clone [this](https://github.com/warb1rd/TheCookBook.git) repository from Github to a local directory.

#####Configuration: 
* Open directory in terminal.
* Open Postgresql database.
* Add any necessary gems using ```bundle install```and run ```rails server``` to start a local server to view app in browser at localhost:3000.

#####Database initialization:

* In your terminal, run rails db:migrate to migrate the app's existing tables on Postgresql. 

This app is now deployed locally.

---
#### App architecture
---
This app has utilized the entire CRUD action for atleast 1 model.

I first created a new app using ```rails new the_cookbook --database=postgresql```

Then, I created three models and controllers for them: 

1. Users model with username, email and password.
2. Sessions when users login
3. Recipes with title, ingredients, directions and image.

```rails generate <controller_name> users index show new create edit update destroy ```
```rails generate model <Model_name> username: string, email: string, password:string, password_digest```

I used the app architecture and rails errors to guide me through to create the entire project. 

#### User experience
---
This app is designed to be used with ease. As a user I want to be able to sign up quickly and access my recipes quickly. 

As a user I would like to be able to see other users recipes.

---
#### Dream Works
---
Plans are:  

* To add ingredients dynamically by clicking the "add more" or "+" buttons.
* To add folders for users to be able to save favorite recipes.
* To change image url to image input(users upload their images)



<!--####Technical Requirements
Your app must:

* Have at least 2 models (more if they make sense) – one representing someone using your application, and at least one more that represents the main functional idea for your app.
* Include sign up/log in functionality, with authentication. Implement basic authorization by restricting access to certain features, such as editing and deleting a resource, to an authenticated user.
* Have complete RESTful routes for at least one of your resources with GET, POST, PUT/PATCH, and DELETE.
* Have full CRUD for at least one of your resources.
* Have semantically clean HTML and CSS.
Be deployed online (Heroku) and accessible to the public.
-->
---


####Website references used
http://railscasts.com/episodes/37-simple-search-form
