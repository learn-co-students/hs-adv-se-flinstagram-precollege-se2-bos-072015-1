## Building Your Own Photo Share!

Today, you'll be working in groups to build your own Photo sharing app, or Flinstagram. Follow the steps below to get started.

**Step 1** - Time for the MVC! First things first - the M. We'll start off with one model/table for Photos with the following attributes/columns:

```ruby
:link
:caption
```

Set up your Photo class in `photos.rb` (don't forget to inherit from from ActiveRecord::Base) and create a migration for the items table `rake db:create_migration NAME="create_photos"`. Fill in your `up` and `down` methods in the migration file then run it with `rake db:migrate`.

**Step 2** - Let's add some photos to our database! We've got a seeds file full of great pictures - run `rake db:seed` to add them! BONUS: add some photos of your own to the seed file - they'll need to have a link and a description. 

**Step 3** - We've got the M covered, now let's move onto the V. In your views directory create a `photos.erb` that will display all of the photos and their descriptions. 

**Step 4** - Set up your `get '/photos'` route to pull all of your items from the database and display them in your new `photos.erb` template.

Nice pix!!!

## Features/Challenges

+ Create a User model with some appropriate attributes - `:name, :bio`, etc.

+ Every user should have a page that displays their name and bio. 

+ A User should be able to "post photos" to their page. 
	* Clicking an "Add Photos" link on the users page should take them to a form. 
	* The form should show all available photos in the database. 
	* The user should be able to select a photo. 
	* After submitting the form, the photo should display in their "my photos section."

### BONUS

+ The "All Photos" form should only show available pictures. Once one User is associated with a photo, another user can't take it from them. 
+ The user should be able to add a caption to the photo as part of the same form. 

### DOUBLE BONUS

+ It would be nice if 





