Feature: Network

  Scenario: create a root agent
    Given a root agent
    Then a promise agent inherits from this root
    Then a name agent inherits from this root
    Then an assessment agent inherits from this root    

  Scenario: create a child of root agent
    Given  a root agent 
    And a child of this root is created
    And an instance of this child is created
    And this instance makes a promise
    And this instance has a name
    Then this promise is an instance of the promise agent
    And this name is an instance of the name agent

  Scenario: can't create duplicate agent through update
    
  Scenario: merge networks
    
