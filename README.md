# inventory-code

[![Build Status](https://travis-ci.org/camelmasa/inventory-code.png)](https://travis-ci.org/camelmasa/inventory-code)
[![Code Climate](https://codeclimate.com/github/camelmasa/inventory-code.png)](https://codeclimate.com/github/camelmasa/inventory-code)
[![Coverage Status](https://coveralls.io/repos/camelmasa/inventory-code/badge.png?branch=master)](https://coveralls.io/r/camelmasa/inventory-code?branch=master)

Check type of inventory.

Instration
----------

Add this line to your application's Gemfile:

    gem 'inventory-code'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install inventory-code

Usage
-----

```
inventory_code = InventoryCode::Code.new('4915512371')

inventory_code.upc?  # => false
inventory_code.asin? # => true
inventory_code.type  # => ['isbn', 'asin']
```

Test
----

test command.

```
rake
```

Source
------
http://www.amazon.co.jp/gp/seller/asin-upc-isbn-info.html
