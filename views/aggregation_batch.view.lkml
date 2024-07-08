view: aggregation_batch {
  sql_table_name: AggregationBatch ;;

  dimension: aggregated_by {
    type: string
    sql: ${TABLE}.AggregatedBy ;;
  }
  dimension: aggregation_level {
    type: number
    sql: ${TABLE}.AggregationLevel ;;
  }
  dimension: attempt_id {
    type: number
    sql: ${TABLE}.AttemptId ;;
  }
  dimension: batch_id {
    type: string
    sql: ${TABLE}.BatchId ;;
  }
  dimension: batch_size {
    type: number
    sql: ${TABLE}.BatchSize ;;
  }
  dimension: created_by_partition {
    type: string
    sql: ${TABLE}.CreatedByPartition ;;
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
