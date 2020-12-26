#### Boris_bikes

# This app is a mock version of the boris bikes application. It will interact with users and allow them to take and return bikes.

## User stories:

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working.

As a person,
So that I can return a bike,
I'd like to dock my bike.

As a person
So that Im not charged unnecessarily
I'd like the docking stattion not to release unavailable bikes.

As a system admin,
So that I can plan the distribution of bikes,
I want the docking station to have a default capacity of 20 bikes.

As a system admin,
So that busy areas can be served with more bikes,
I want to be able to add a larger capacity of bikes when needed.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,             
I'd like docking stations not to release broken bikes.

As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like docking stations to accept returning bikes (broken or not).    


## Diagram:


============================|
OBJECT          | MESSAGE   |
============================|
User            |           |
================|===========|
Docking station |release_bike|
================|===========|
Bike            |Is_working?|
================|===========|   