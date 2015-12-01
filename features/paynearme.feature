Feature: Exploring PayNearMe mobile website

  @hiw
  Scenario: How It Works functionality (Consumers)
    Given I am on PayNearMe website
    When I tap on "How It Works" link
    Then I will redirect to How It Works page
    And I should see three steps instruction


  @locations
  Scenario: Payment Locations functionality
    Given I am on PayNearMe website
    When I tap on "Payment Locat" link on Menu
    And I type "Sunnyvale, CA" for location
    And I click on Search button
    Then I will see the search results

