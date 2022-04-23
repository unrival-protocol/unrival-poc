Feature: Proposal

  Scenario: consensus proposal leads to update without vote
    Given an agent
    And this agent has one stakeholder

  Scenario: consensus proposal leads to update with vote
    Given an agent
    And this agent has one stakeholder

  Scenario: consensus proposal leads to new version
    Given an agent
    And this agent has multiple stakeholders

  Scenario: democratic proposal is ratified
    Given an agent
    And this agent has more than two stakeholders
    And a democratic proposal is created
    And these stakeholders cast their votes for this proposal
    And the majority of these votes are in favor
    Then this proposal is ratified

  Scenario: democratic proposal is declined
    Given an agent
    And this agent has more than two stakeholders
    And a democratic proposal is created
    And these stakeholders cast their votes for this proposal
    And the majority of these votes are in favor
    Then this proposal is ratified
    
  Scenario: meritocratic proposal is ratified
    Given an agent
    And this agent has more than two stakeholders
    And a meritocratic proposal is created
    And these stakeholders cast their votes for this proposal
    And the majority of these votes are in favor
    Then this proposal is ratified

  Scenario: meritocratic proposal is declined
    Given an agent
    And this agent has more than two stakeholders
    And a meritocratic proposal is created
    And these stakeholders cast their votes for this proposal
    And the majority of these votes are in favor
    Then this proposal is ratified
