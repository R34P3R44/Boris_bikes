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