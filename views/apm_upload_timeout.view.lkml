view: apm_upload_timeout {
  sql_table_name: AssignmentStatusHistory ;;

  filter: assigned {
    type: yesno
    sql: ${TABLE}.Status = 152 ;;
  }

  dimension: population_name {
    type: string
    sql: ${TABLE}.PopulationName ;;
  }

  dimension: task_id {
    type: number
    sql: ${TABLE}.TaskId ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.Status ;;
  }

  dimension_group: created_time_minute {
    type: time
    timeframes: [raw, minute]
    sql: TIMESTAMP_TRUNC(${TABLE}.CreatedTime, MINUTE) ;;
  }

  measure: count_per_minute {
    type: count_distinct
    sql: ${TABLE}.SessionId ;;
  }
}
