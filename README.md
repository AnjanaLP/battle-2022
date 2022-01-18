# Battle

This is a battle game between two users that can be can played on the web. Implementation of the user stories below has been test driven using a Behaviour Driven Development cycle - feature tests are written using Capybara and unit tests are written in raw RSpec. The app has been set up to use Sinatra's Modular Style.

## User stories
```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```

## How to setup

Clone the repo to your local machine, change into the directory and install the needed gems:
```
$ bundle install
```

Run the app using rackup:
```
$ rackup
```
Visit http://localhost:9292/ and follow the instructions on screen.

To run the test suite:
```
$ rspec
```

## Technologies Used

* Capybara
* HTML
* RSpec
* Ruby
* Sinatra
