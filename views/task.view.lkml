view: task {
  sql_table_name: Task ;;
  drill_fields: [task_id]

  dimension: task_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.TaskId ;;
  }
  dimension: correlation_id {
    type: string
    sql: ${TABLE}.CorrelationId ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CreatedTime ;;
  }
  dimension_group: do_not_create_iteration_after {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.DoNotCreateIterationAfter ;;
  }
  dimension: info {
    type: string
    sql: ${TABLE}.Info ;;
  }
  dimension: max_aggregation_size {
    type: number
    sql: ${TABLE}.MaxAggregationSize ;;
  }
  dimension: max_client_version {
    type: string
    sql: ${TABLE}.MaxClientVersion ;;
  }
  dimension: max_parallel {
    type: number
    sql: ${TABLE}.MaxParallel ;;
  }
  dimension: min_aggregation_size {
    type: number
    sql: ${TABLE}.MinAggregationSize ;;
  }
  dimension: min_client_version {
    type: string
    sql: ${TABLE}.MinClientVersion ;;
  }
  dimension: population_name {
    type: string
    sql: ${TABLE}.PopulationName ;;
  }
  dimension_group: start_task_no_earlier_than {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.StartTaskNoEarlierThan ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.StartTime ;;
  }
  dimension: status {
    type: number
    sql: ${TABLE}.Status ;;
  }
  dimension_group: stop {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.StopTime ;;
  }
  dimension: total_iteration {
    type: number
    sql: ${TABLE}.TotalIteration ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	task_id,
	population_name,
	created_time,
	aggregation_batch.count,
	aggregation_batch_status_history.count,
	assignment.count,
	assignment_status_history.count,
	iteration.count,
	iteration_status_history.count,
	task_status_history.count
	]
  }

}
