# iPhone application for weather forecasts

A small sample app for weather forecasts. It uses worldweatheronline APIs.
The app is designed to work for iPhone and iPad, both portrait and landscape.

It has three screens:

- List of favourite locations
- Locations search
- Location weather

The user search for a location using the online APIs and he can add it to the list favourites.
This list is saved locally, using Core Data. When the user selects a favourite location, the app shows the detail of the weather, calling another rest API.

The code is organised functionally: it has a folder for each feature/module. The focus on this project is more on architecture and testability, not UI/UX side. All the code was written in TDD.

The project was developed in swift 4.0 and Xcode 9.0.1. Given the trivial size of the project, I decided not to use any external library.
I tried to adhere to protocol oriented programming as much as I could, so it won't be hard, e.g. to replace the network layer or the local store layer with one a third party (e.g. Alamofire, Realm, etc.).
