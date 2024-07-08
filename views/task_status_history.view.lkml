view: task_status_history {
  sql_table_name: TaskStatusHistory ;;

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CreatedTime ;;
  }
  dimension: population_name {
    type: string
    sql: ${TABLE}.PopulationName ;;
  }
  dimension: status {
    type: number
    sql: ${TABLE}.Status ;;
  }
  dimension: status_id {
    type: number
    sql: ${TABLE}.StatusId ;;
  }
  dimension: task_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.TaskId ;;
  }
  measure: count {
    type: count
    drill_fields: [population_name, created_time, task.population_name, task.task_id, task.created_time]
  }
}
