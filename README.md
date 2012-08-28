http://shielded-temple-8057.herokuapp.com/

# Ruby on Rails Tutorial: sample application

This is the sample application for
[*Ruby on Rails Tutorial: Learn Rails by Example*](http://railstutorial.org/)
by [Michael Hartl](http://michaelhartl.com/).

Active Record maps your tables columns to attributes in your model, so you don't need to tell rails that you need more, what you really need is to create more columns and rails detect them and add the attributes:

You can add more columns to your table through migrations:

rails generate migration AddNewColumnToMyTable
this will generate a file:

db/2011.....rb
Open it and add the columns you need:

self.up
  add_column :tablename, :new_column, :type
end

Add new column to attributes in appropriate Model:

  attr_accessible :name, :email, :password, :password_confirmation, :description, :phone

if it throws an error, did you remember to run rake db:migrate?