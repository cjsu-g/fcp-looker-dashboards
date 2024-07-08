view: iteration {
  sql_table_name: Iteration ;;
  drill_fields: [base_iteration_id]

  dimension: base_iteration_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.BaseIterationId ;;
  }
  dimension: aggregation_level {
    type: number
    sql: ${TABLE}.AggregationLevel ;;
  }
  dimension: attempt_id {
    type: number
    sql: ${TABLE}.AttemptId ;;
  }
  dimension: base_on_result_id {
    type: number
    sql: ${TABLE}.BaseOnResultId ;;
  }
  dimension_group: expiration {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ExpirationTime ;;
  }
  dimension: info {
    type: string
    sql: ${TABLE}.Info ;;
  }
  dimension: iteration_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.IterationId ;;
  }
  dimension: max_aggregation_size {
    type: number
    sql: ${TABLE}.MaxAggregationSize ;;
  }
  dimension: max_client_version {
    type: string
    sql: ${TABLE}.MaxClientVersion ;;
  }
  dimension: min_client_version {
    type: string
    sql: ${TABLE}.MinClientVersion ;;
  }
  dimension: population_name {
    type: string
    sql: ${TABLE}.PopulationName ;;
  }
  dimension: report_goal {
    type: number
    sql: ${TABLE}.ReportGoal ;;
  }
  dimension: result_id {
    type: number
    sql: ${TABLE}.ResultId ;;
  }
  dimension: status {
    type: number
    sql: ${TABLE}.Status ;;
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
	base_iteration_id,
	population_name,
	task.population_name,
	task.task_id,
	task.created_time,
	iteration.population_name,
	iteration.base_iteration_id,
	aggregation_batch.count,
	aggregation_batch_status_history.count,
	assignment.count,
	assignment_status_history.count,
	iteration.count,
	iteration_status_history.count
	]
  }

}
