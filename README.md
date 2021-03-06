Reefer is a tiny Ruby interface to a hosted Etherpad. Currently, there is very little functionality. In future, it may provide a more complete API. You may consider that an invitation for patches...


Command-line Usage
------------------

Fetch the current contents of a pad:

    $ reefer --url http://piratepad.net/anything
    <b>alpha</b> <i>bravo</i> <u>charlie</u> <s>delta</s>

Fetch a previous revision:

    $ reefer --url http://piratepad.net/anything --revision 6
    alpha bravo


Module Usage
------------

Fetch the current contents of a pad:

    >>> url = "http://piratepad.net/anything"
    >>> Reefer::Pad.new(url).to_html
    "<b>alpha</b> <i>bravo</i> <u>charlie</u> <s>delta</s>"

Fetch a previous version:

    >>> url = "http://piratepad.net/anything"
    >>> Reefer::Pad.new(url).revision(6).to_html
    "alpha bravo"



Installation
------------

Reefer is distributed via [rubygems.org](http://rubygems.org/gems/reefer). To install it:

    $ sudo gem install reefer


Dependencies
------------
* Ruby 1.9
* Nokogiri
* Trollop
* RSpec


License
-------
Reefer is free software, available under the MIT license.
