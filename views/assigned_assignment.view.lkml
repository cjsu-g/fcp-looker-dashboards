view: assigned_assignment {
  derived_table: {
    explore_source: apm_assigned {
      column: created_time_minute_minute {}
      column: count_per_minute {}
      filters: {
        field: apm_assigned.assigned
        value: "Yes"
      }
    }
  }
  dimension: created_time_minute_minute {
    description: ""
    type: date_minute
  }
  dimension: count_per_minute {
    description: ""
    type: number
  }
}
