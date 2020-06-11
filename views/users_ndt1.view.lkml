view: users_ndt1 {
    derived_table: {
      explore_source: users {
        column: age_group {}
        column: gender {}
        column: count {}
      }
    }
    dimension: age_group {
      type: tier
      tiers: [18, 23, 30, 40, 50, 60]
    }
    dimension: gender {}
    dimension: count {
      type: number
    }
  }
