Guillotine
==========

Guillotine autoloads and executes arbitrary scripts by parsing a string. The result is the ability to make your rails app responsive to shell style commands through comments or chat messages.


####Installation
Add it to your gemfile:

`gem 'guillotine', git: 'git://github.com/JakeCataford/Guillotine'`

`bundle install`

Then create a new module under `app/guillotine/executors`, the module title is the first word of the command, ie: utility, the second word points to a function in that module, ie: utility echo, then the rest is passed as a splat into that function.

To call guillotine, do it like this:

`Guillotine::execute opts, my_string`

where `opts` is a hash of any additional information you might need passed into the executor, and `my_string` is the string you want to parse.