# Mod5-backend
This is the Ruby on Rails backend for my Money and Sense Mod 5 project. 

## Models

### Users 
* Using a self-join user model I was able to create two types of users - a parent and child 
* A parent can have many children but a child can only have one parent
* A boolean value is added to each user created to determin different levels of admin access as well rendering two different user experiences on the frontend
* CRUD actions available for each user

### Tasks
* CRUD actions available for each task
* A Child user can have many tasks but each task can only have on child user

### Goals
* Crud actions available for each goal
* Goals belong to a Child user and a Child user can have many goals

### Wallet
* Each Child user only has one wallet and each wallet can only belong to one Child user

### Transactions
* A wallet can have many transactions and a transaction can only belong to one wallet
