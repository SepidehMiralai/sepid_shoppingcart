# README
How to run this project:

This project should be run by commands dev up and dev s. If you had some errors when running it with dev up for the first time, please try 'bin/rails db:drop db:create db:schema:load' command.

What does this project do?
This project is modeling a shopping cart. Users should sign up/sign in first. 
If the user is a customer he/she will be directed to the store page to view and select some products. The customer can add some products to his/her shopping cart and proceed to checkout. After checkout a new order will be generated. The customer can also add his/her favorite products to his/her wishlist and save them there to view and purchase them later.
If the user is admin, he/she will be directed to the admin page in which he/she has access to the users, orders and productss information. The user can add, update, view and edit products, users and orders.

This project can be improved to add wishlist items to the shopping cart. The wishlist part can be implemented as an embedded app in Shopify in future.
