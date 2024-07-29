view: metric {
  sql_table_name: ModelMetrics ;;

  dimension: population_name {
    type: string
    sql: ${TABLE}.PopulationName ;;
  }

  dimension: task_id {
    type: number
    sql: ${TABLE}.TaskId ;;
  }

  dimension: iteration_id {
    type: number
    sql: ${TABLE}.IterationId ;;
  }


  dimension: metric_name {
    type: string
    sql: ${TABLE}.MetricName ;;
  }

#  dimension: metric_name {
#    type: string
#    sql: CONCAT(${TABLE}.PopulationName, '-', CONCAT(CAST(${TABLE}.TaskId AS STRING), '-', ${TABLE}.MetricName)) ;;
#  }

  dimension: metric_value {
    type: number
    sql: ${TABLE}.MetricValue ;;
  }

}
