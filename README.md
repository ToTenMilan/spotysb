# [WHATSPOTS](http://whatspots.herokuapp.com/)

* is an app where skaters from Wroclaw can come and leave a note, where they will be skating today. Note can be left after picking one of the spots ie. 'Zajezdnia', 'Pomorska', 'Renoma' etc.
* Everyone who will come here can check who will hit the exact spot today and also leave a note for others
* To preserve mess, all notes will be deleted every day at midnight to prepare a fresh new wall for new notes for upcoming day
* This app should replace groups on facebook, calling and texting to each other to set up at particular spot and encourage skaters to go out more spontaneously

## Dev diary

### I1

* Spots feature has been added
* Comments under spots has been added. For now, I decided to not create `User` model. Logging in just to leave a super short message is not needed at the moment. Instead `Comment` model has `author` column.

### I2

* Using [Clockwork](https://github.com/Rykian/clockwork) gem, I was able to automate comments removing every day at midnight. Problem is that, its doing the job only in development environment and only when `clockwork app/clock.rb` is running on terminal.
* Need to figure out how to make it running nonstop in production, to automatically remove user notes(comments) at midnight. [This](http://tutorials.jumpstartlab.com/topics/systems/automation.html) may help.
