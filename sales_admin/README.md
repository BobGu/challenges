# README

This is a simple application that imports a CSV and displays sales data.

Ruby Version - 2.5.1
Rails Version - 5.2.2

Please run a `bundle install` to get the necessary dependencies.  Then a `rake db:setup` and a `rake db:migrate`

### Quick Explination
I timeboxed this exercise to around 3 hours and made as many improvements as I could while adhering to the accpetance criteria.
Some other things I would have added if I had more time.

* Sad path testing for CSV uploading.  CSV data is almost always broken so could use some validation around that.
* Authentication
* There seems like a decent argument that there could be a `customers` table and a `merchants` table since all that lives on the `items` table.
* The sales report page could use some more useful info like quantity of each item, subtotal of items etc.


