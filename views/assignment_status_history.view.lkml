view: assignment_status_history {
  sql_table_name: AssignmentStatusHistory ;;

  dimension: attempt_id {
    type: number
    sql: ${TABLE}.AttemptId ;;
  }
  dimension: batch_id {
    type: string
    sql: ${TABLE}.BatchId ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CreatedTime ;;
  }
  dimension: iteration_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.IterationId ;;
  }
  dimension: population_name {
    type: string
    sql: ${TABLE}.PopulationName ;;
  }
  dimension: session_id {
    type: string
    sql: ${TABLE}.SessionId ;;
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
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	population_name,
	created_time,
	task.population_name,
	task.task_id,
	task.created_time,
	iteration.population_name,
	iteration.base_iteration_id
	]
  }

}
