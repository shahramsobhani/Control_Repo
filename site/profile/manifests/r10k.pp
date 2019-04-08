class profile::r10k {
  class {'r10k':
      remote => 'https://github.com/shahramsobhani/Control_Repo',
  }
  class {'r10k::webhook::config':
    use_mcollective => false,
    enable_sl +. false,
  }
  class {r10k::webhook':
    user => 'root',
    group => 'root',
  }
}
    
      
