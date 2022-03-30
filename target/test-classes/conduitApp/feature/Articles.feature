Feature: Article Testing

  Background: Define URL
    Given url 'https://conduit.productionready.io/api/'

    Scenario: Create new article as a user
      Given path 'users/login'
      And request {"user": {"email": "hairman@gmail.com", "password": "karate1234" }}
      When method Post
      Then status 200
      * def token = response.user.token

      Given header Authorization = 'Token' + token
      Given path 'articles'
      And

