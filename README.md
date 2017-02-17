# Book Nerd

## Synopsis

Rails web app for storing users and their reading lists.

## Code Example
```ruby   
<h2>Books</h2>
<% @user.books.each do |book| %>
  <p>
    <strong>Title:</strong>
    <%= book.title %> <strong>Read:</strong>
    <%= book.read %>
  </p>
  ```

## Motivation
Purposes for developing this rails program include:
  * To practice developing models, controllers, and views
  * To practicing utilizing active record relationships
  * To practice working with routes and rails helper methods


## Authors
* Jenn Tustin
