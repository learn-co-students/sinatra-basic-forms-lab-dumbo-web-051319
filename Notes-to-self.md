# Sinatra Basic Forms Lab
LEARN To Do Checklist                                              WHAT I DID
Puppy class
  can create a new instance of the puppy class                     (in models directory: touch puppy.rb)
  can read a puppy name                                            (attr_accessor in puppy.rb)
  can change puppy name                                            (attr_accessor in puppy.rb)
  can read a puppy breed                                           (attr_reader in puppy.rb)
  can read a puppy age in months (puppy#months_old)                (attr_accessor in puppy.rb)
  can change puppy age in months (puppy#months_old=)               (attr_accessor in puppy.rb)
  

App
  GET /
    sends a 200 status code                                        (in app.rb: get '/' do end)
    has a link with the text "List a Puppy"                        (index.erb has everything linked and will automatically do this)
    has a link to list a puppy that links to /new 
  
  GET /new
    sends a 200 status                                             (in app.rb: get '/new' do end)
    renders a form that can POST a name, breed, and age            (added erb :create_puppy.erb/form)
  
  POST /puppy
    sends a 200 status code                                        (in app.rb: post '/puppy' do end)
    recieves a request from /new at /puppy                         (controller automatically does it)
    displays the puppy information dynamically

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
  <!--1. All done in puppy.rb  -->

<!-- 2. In `app.rb` build out a GET request to load a homepage. The homepage should go to the main route `/`. -->
  <!--2. Did get '/' do end in app.rb -->

<!-- 3. √ The home page will also need a new view `index.erb`. 
   √  This page should welcome you to the Puppy Adoption Site.
   √ Add this view to the controller action.  -->
   <!-- 3a. Created index.erb in model
   3b. Check it out in shotgun!
   3c. Added erb :index into the get '/' do end in app.rb -->

<!-- 4. Now, we need to create a form for a user to list a new puppy that is available for adoption. 
    Create this form in `views/create_puppy.erb`
    Need to set up another controller action for a user to be
    able to view this form in the browser. 
    The "submit" button of a form can be an `<input>` element with a `type` of `"submit"` (or a `<button>` element with a `type` of `"submit`) 
      — a plain old `<button>` won't do it. If you want to change the text in the button, check out these docs:
      - [MDN: Input — submit](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/submit)
      - [MDN: Button](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/button) -->
  <!-- 4a. <form></form> in create_puppy.erb in Views      4b. get '/new' do end in app.rb(the new came from  the instructions)
  4c. <input type="submit" value="submit"> -->

5. Now we need to make sure the form is being submitted properly. 
   a. Need 3rd controller action that takes the input from the user
  b.  Need 3rd controller action to render a third view (`views/display_puppy.erb`) which displays the info for
   the puppy that was just created. 
   c. Create an instance of a puppy to hold the data about the puppy you just created.
5a. In app.rb added post '/puppy' do end (I did post method because of LEARN instructions)
5b. 


6. Add a link on the homepage to the new puppy form.

<p class='util--hide'>View <a href='https://learn.co/lessons/sinatra-basic-forms-lab'>Sinatra Basic Forms Lab</a> on Learn.co and start learning to code for free.</p>
