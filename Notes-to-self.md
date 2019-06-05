# Sinatra Basic Forms Lab
LEARN To Do Checklist
Puppy class
  can create a new instance of the puppy class
  can read a puppy name     (attr_accessor)
  can change puppy name     (attr_accessor)
  can read a puppy breed    (attr_reader)
  can read a puppy age in months (puppy#months_old) (attr_accessor)
  can change puppy age in months (puppy#months_old=)(attr_accessor)
  

App
  GET /
    sends a 200 status code (FAILED - 1)
    has a link with the text "List a Puppy" (FAILED - 2)
    has a link to list a puppy that links to /new (FAILED - 3)
  GET /new
    sends a 200 status code (FAILED - 4)
    renders a form that can POST a name, breed, and age (FAILED - 5)
  POST /puppy
    sends a 200 status code (FAILED - 6)
    recieves a request from /new at /puppy (FAILED - 7)
    displays the puppy information dynamically (FAILED - 8)

## Objectives
    1. Implement a POST request to the controller to display data from a user in the view
    2. Implement both POST and GET requests
    3. Connect a controller action with both a view and a model

## Instructions
The focus of this lab is to build a way for a user to go to a homepage, follow a link to a form where they can enter a puppy's information, and, upon submission, view the puppy's information.

<!-- 1. Build out a puppy class in `models/puppy.rb`. 
    √ Puppies should have `name`, `breed`, and `months_old` 
    √ Attributes Pass these three attributes to initialization
    √ Need readers or accessors for the attributes. -->
    <!-- All done in puppy.rb  -->

2. In `app.rb` build out a GET request to load a homepage. The homepage should go to the main route `/`.

3. The home page will also need a new view `index.erb`. This page should
   welcome you to the Puppy Adoption Site. Add this view to the controller action.

4. Now, we need to create a form for a user to list a new puppy that is
   available for adoption. You can create this form in `views/create_puppy.erb`.
   Remember, you'll need to set up another controller action for a user to be
   able to view this form in the browser. The "submit" button
   of a form can be an `<input>` element with a `type` of `"submit"` (or a
   `<button>` element with a `type` of `"submit`) — a plain old `<button>`
   won't do it. If you want to change the text in the button, check out these docs:

- [MDN: Input — submit](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/submit)
- [MDN: Button](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/button)

5. Now we need to make sure the form is being submitted properly. You'll need
   to have a third controller action that takes the input from the user and
   renders a third view (`views/display_puppy.erb`) which displays the info for
   the puppy that was just created. Create an instance of a puppy to hold the data about the puppy you just created.

6. Add a link on the homepage to the new puppy form.

<p class='util--hide'>View <a href='https://learn.co/lessons/sinatra-basic-forms-lab'>Sinatra Basic Forms Lab</a> on Learn.co and start learning to code for free.</p>
