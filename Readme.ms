# Project 4: Postman Dynamic Workflows

The goal I had for this project was to explore the `pm.sendRequest()` feature, as well as to learn how to make API calls from within my pre-request scripts

**Goals:**
*   To understand and correctly use `pm.sendRequest()` for making asynchronous HTTP calls from scripts.
*   To practice handling the asynchronous responses, specifically callbacks, from these internal requests.
*   To extract data like an authentication token or a user ID from a `pm.sendRequest()` response.
*   To use this extracted data to dynamically update the main request's headers, URL path, or body.

**API Used:**
*   ReqRes.in: `https://reqres.in/api`, using the `baseUrl` from the `ReqRes Env (Project 4)`.

**Results:**
*   **Token Fetching Task:** I successfully created a script using `pm.sendRequest()` to call the `/login` endpoint on ReqRes.in. It extracted the mock token and then dynamically added this token as an `Authorization` header to the main request.
*   **Dependent Data Task:** I wrote a script that first fetched a list of users with `pm.sendRequest()`. It then selected a user ID from that list and dynamically modified the main request's URL and body to perform a PUT operation on that specific user.
*   This project really helped me understand how to make my test flows more intelligent by fetching and using data in real-time within the script itself.

**Problems I Faced:**
*   The main difficulty I facede was managing the asynchronous nature of `pm.sendRequest()`. 
    I had to make sure that any logic relying on the response from `pm.sendRequest()` was placed correctly within its callback function. Thus ensuring it executed only after the needed data was available.