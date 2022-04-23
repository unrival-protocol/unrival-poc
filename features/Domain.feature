Feature: Domain

  Scenario: create a domain
    Given a name
    Given an agent's cid
    When a domain is created
    Then this domain can be read
    And this agent's cid is attached to a create proposal within the domain
  
  Scenario: add promise to domain w/o vote
    Given a domain with a 
    When 

  

  Scenario: create an entity
    Given a cid
    Given a domain
    Given a set of promises belonging to this domain
    When this cid is added to entities
    Then it can be assessed according to §
