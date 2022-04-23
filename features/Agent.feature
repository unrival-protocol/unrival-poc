Feature: Agent

  Scenario: create an agent
    """ 
    This is the simplest possible agent.
    """

    Given a nonempty set of promises
    # one or more instances of promise agents
    When these promises are used to create an agent
    Then this agent has an address
    And this stakeholder can be queried at this address
    And this set of promises can be queried at this address

  Scenario: add proposal to agent
    Given an agent address
    And a proposer address
    And a description
    When a proposal is created with this description by the proposer
    Then this proposal is attached to the agent

  Scenario: add stakeholder to agent without vote
    Given an agent
    And this has no stakeholders
    And a proposing agent
    When this proposing agent creates a stakeholding proposal for themselves 
    Then this proposing agent is a stakeholder of the agent

  Scenario: remove stakeholder to agent without vote
    Given an agent
    And this has one stakeholder
    When this stakeholder creates a removal of stakeholding proposal for themselves 
    Then this proposing agent is no longer a stakeholder of the agent
    
  Scenario: add promise to stakeless agent without vote
    Given an agent
    And this has no stakeholders
    And a proposing agent
    When this proposing agent creates a promise proposal 
    Then this agent has this promise

  Scenario: add promise to staked agent without vote
    Given an agent
    And this has one stakeholder
    And this stakeholder creates a promise proposal
    Then this agent has this promise

  Scenario: remove promise from stakeless agent without vote

  Scenario: remove promise from staked agent without vote

  Scenario: add name to stakeless agent without vote

  Scenario: add name to staked agent without vote

  Scenario: remove name from stakeless agent without vote

  Scenario: remove name from staked agent without vote

  Scenario: add vote to agent

  Scenario: can't add vote to agent without proposal


  Scenario: add promise to agent with vote


  Scenario: remove promise from agent with vote


  Scenario: add name to agent with vote


  Scenario: remove name from agent with vote


  Scenario: create an instance of an agent
