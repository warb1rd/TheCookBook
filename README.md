## Project 2 - The Cook Book 
---
We have been learning Ruby and Rails for the past two weeks and this project is based on our knowledge of what we learnt using full CRUD applications

![TheCookBook](https://i.imgur.com/7TiOxUU.jpg)

---
### Project Summary
---
This project is called The Cook Book where People can write quick and easy to make recipes and add images. You create an account (Can use dummy email since the email functionality is still in the works.) and start adding recipes to your page!

[Start adding recipes](https://murmuring-mountain-82441.herokuapp.com/)

---
### Technology Used
---

* Ruby on rails version (Ruby 2.5.0 ,Rails 5.1.5)
* Postgresql
* Bootstrap version 4.0
* HTML
* CSS
* Heroku cloud platform to deploy the app.

---
### Deployment instructions on local server
---

* Clone [this](https://github.com/warb1rd/TheCookBook.git) repository from Github to a local directory.

##### Configuration: 

* Open directory in terminal.
* Open Postgresql database.
* Add any necessary gems using ```bundle install```and run ```rails server``` to start a local server to view app in browser at localhost:3000.

##### Database initialization:

* In your terminal, run rails db:migrate to migrate the app's existing tables on Postgresql. 

This app is now deployed locally.

---
### App architecture
---
This app has utilized the entire CRUD action for atleast 1 model.

I first created a new app using ```rails new the_cookbook --database=postgresql```

Then, I created four models and controllers for them: 

1. Users model with username, email and password.
2. Sessions when users login
3. Recipes with title, ingredients, directions and image.
4. Comments with body which "belongs_to" the recipes and the user models.

```rails generate <controller_name> users index show new create edit update destroy ```
```rails generate model <Model_name> username: string, email: string, password:string, password_digest```

I used the app architecture and rails errors to guide me through to create the entire project. 

I created wireframes using flashcards and iterated through it, which helped me design the site better. 

![ERD](https://github.com/warb1rd/TheCookBook/blob/master/app/assets/images/ERD.png?raw=true)

![Wireframes](https://github.com/warb1rd/TheCookBook/blob/master/app/assets/images/Wireframes.jpg?raw=true)

![Pages](https://github.com/warb1rd/TheCookBook/blob/master/app/assets/images/Pages.jpg?raw=true)

---
### User experience
---
This app is designed to be used with ease. As a user I want to be able to sign up quickly and access my recipes quickly. 

As a user I would like to be able to see other users recipes and comment, if necessary.

#### Goals
* To create a recipe website that allows users to sign up and add recipes with images. 
* To let users upload images.
* To allow users to make a choice between making a recipe private or public using radio buttons.
* To let users comment on recipes. 

#### Sprint
* Sign up/login functionality.
* Basic CRUD for recipes.
* Link input for images.
* CSS

#### Current
*  Working on adding a search bar and setting search parameters

#### Bonus implementations
* Users can search for recipes using a search bar.
* Users can comment on other recipes.

#### Done
* Sign up/login functionality.
* Full CRUD for recipe model. 
* CRD for comments model


---
### Dream Works
---
Plans are:  

* To add ingredients dynamically by clicking the "add more" or "+" buttons.
* To add qty field next to ingredients.
* To add folders for users to be able to save favorite recipes.
* To change image url to image input(users upload their images)
* To be able to login using real email addresses.



### References

http://railscasts.com/episodes/37-simple-search-form
