class role::masterserver{
  include profile::base
  include profile::agent_nodes
  include profile::puppetmaster
}
