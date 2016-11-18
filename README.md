# README

This demo shows how to use google client side OAuth2 and devise_token_auth to enable authentication with CORS.

# To run:
Create a project in the Google developer console, and add the identity scope. When starting the app, set the `WEB_CLIENT_ID` environment variable to the client id from the developer console.
Ex.
```
WEB_CLIENT_ID=<id> rails s
```
