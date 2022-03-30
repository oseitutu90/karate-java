Feature: Tests for the Homepage

  Background: Define URL
    Given url 'https://conduit.productionready.io/api/'

  Scenario: Get all tags
    Given path 'tags'
    When method Get
    Then status 200
    And match response.tags contains ['welcome','codebaseShow']
    And match response.tags == '#array'
    And match each response.tags == '#string'


  Scenario: Get all articles from  the page
    Given params { limit: 3, offset: 0}
    Given path 'articles'
    When method Get
    Then status 200
    And match response.articles == '#[3]'