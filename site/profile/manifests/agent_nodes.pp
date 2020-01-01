class profile::agent_nodes {
  include dockeragent
  include dockeragent::node {'web.puppet.vm':}
  include dockeragent::node {'db.puppet.vm':}
}
