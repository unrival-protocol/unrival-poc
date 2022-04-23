Feature: Decision

  Scenario: consensus decision leads to update without vote
    Given an agent
    And this agent has one stakeholder

  Scenario: consensus decision leads to update with vote
    Given an agent
    And this agent has one stakeholder

  Scenario: consensus decision leads to new version
    Given an agent
    And this agent has multiple stakeholders

  Scenario: democratic decision is ratified
    Given an agent
    And this agent has more than two stakeholders
    And a democratic decision is created
    And these stakeholders cast their votes for this decision
    And the majority of these votes are in favor
    Then this decision is ratified

  Scenario: democratic decision is declined
    Given an agent
    And this agent has more than two stakeholders
    And a democratic decision is created
    And these stakeholders cast their votes for this decision
    And the majority of these votes are in favor
    Then this decision is ratified
    
  Scenario: meritocratic decision is ratified
    Given an agent
    And this agent has more than two stakeholders
    And a meritocratic decision is created
    And these stakeholders cast their votes for this decision
    And the majority of these votes are in favor
    Then this decision is ratified

  Scenario: meritocratic decision is declined
    Given an agent
    And this agent has more than two stakeholders
    And a meritocratic decision is created
    And these stakeholders cast their votes for this decision
    And the majority of these votes are in favor
    Then this decision is ratified
