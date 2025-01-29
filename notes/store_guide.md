# Once you start the Rails server, new files or changes to existing files are detected and automatically loaded or reloaded as necessary. This allows you to focus on building without having to restart your Rails server after every change.

# You may also notice that Rails applications rarely use require statements like you may have seen in other programming languages. Rails uses naming conventions to require files automatically so you can focus on writing your application code.This is possible thanks to a couple of "Zeitwerk" loaders Rails sets up on your behalf, which provide autoloading, reloading, and eager loading.

# Useful Command for database-

- to run migration: bin/rails db:migrate
- to undo migration: bin/rails db:rollback
- to generate a model named Product: bin/rails generate model Product name:string
- to interact with tables: bin/rails console [
  - to check columns: Product.column_names
  - to create row: product = Product.new(name: "T-Shirt")
  - to save: product.save
  - to create and save in single call: Product.create(name: "Pants")
  - to see(Rails also updates the object in memory with the database record id along with the created_at and updated_at timestamps. We can see that by printing out the product variable): product
  - to query all: Product.all
  - to filter the results: Product.where(name: "Pants")
  - to sort records by name in ascending order: Product.order(name: :asc)
  - to find one specific record by ID: Product.find(1)
  - to update an existing record: product = Product.find(1) => product.update(name: "Shoes")
  - alternate to this: product = Product.find(1) => product.name = "T-Shirt" => product.save
  - to delete a record: product.destroy
  - to check error: product.errors or product.errors.full_messages
]
- if the console is running when you make updates to the code, you'll need to manually refresh it by running: reload!


# CRUD Action(7-routes)
- Index: Shows all the records
- New: Renders a form for creating a new record
- Create: Processes the new form submission, handling errors and creating the record
- Show: Renders a specific record for viewing
- Edit: Renders a form for updating a specific record
- Update: Handles the edit form submission, handling errors and updating the record
- Destroy: Handles deleting a specific record
- command that displays all the routes your application responds to: bin/rails routes
- generate a `ProductsController with an index action: bin/rails generate controller Products index --skip-routes(as we created routes already)
