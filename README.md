## Building Your Own Photo Share!

Today, you'll be working in groups to build your own Photo sharing app, or Flinstagram. Follow the steps below to get started.

**Step 1** - Time for the MVC! First things first - the M. We'll start off with one model/table for Photos with the following attributes/columns:

```ruby
:link
:caption
```

Set up your Photo class in `photo.rb` (don't forget to inherit from from ActiveRecord::Base) and create a migration for the items table `rake db:create_migration NAME="create_photos"`. Fill in your `up` and `down` methods in the migration file then run it with `rake db:migrate`.

**Step 2** - Let's add some photos to our database! We've got a seeds file full of great pictures - run `rake db:seed` to add them! BONUS: add some photos of your own to the seed file - they'll need to have a link and a description. 

**Step 3** - We've got the M covered, now let's move onto the V. In your views directory create a `photos.erb` that will display all of the photos and their descriptions. 

**Step 4** - Set up your `get '/photos'` route to pull all of your items from the database and display them in your new `photo.erb` template.

Nice pix!!!

## Features/Challenges

+ Create a User model with some appropriate attributes - `name`, `bio`, etc. 

+ A photo should belong_to a user, and a user should have_many photos. That means the photo table in the database is going to be modified to have a user_id column. Remember, that's how we store which photo belongs to which user.

+ You'll want to create a sign-up page which has a corresponding POST route in the controller. This action should first look to see if that name exists in the database. If not, it should create the user and then log them in.

+ You'll want to add sessions to your site so that a user remains logged in.

+ This also means we need a sign-in and a sign out page. The sign in page should check the user's name. If they match the database, then the user_id should be added to the session hash. When a user signs out, the user_id should be set to nil.


+ You should build a page to see your own profile page that displays your name, bio, and photos.

+ A User should be able to "post photos" to their page. 
	* Clicking an "Add Photos" link on your profile page should take them to a form. 
	* The form should show all available photos in the database. 
	* The user should be able to select a photo. 
	* After submitting the form, the photo should display in their "my photos section."

### BONUS

+ The "All Photos" form should only show available pictures. Once one User is associated with a photo, another user can't take it from them. 
+ The user should be able to add a caption to the photo as part of the same form. 





