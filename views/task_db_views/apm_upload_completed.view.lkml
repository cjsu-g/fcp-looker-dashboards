include: "apm_base.view"
view: apm_upload_completed {
  extends: [apm_base]

  derived_table: {
    sql:
      SELECT
        PopulationName,
        TaskId,
        IterationId,
        SessionId,
        Status,
        MIN(A.CreatedTime) AS CreatedTime,
      FROM
        AssignmentStatusHistory as A
      WHERE
        Status = 2
      GROUP BY SessionId, PopulationName, TaskId, IterationId, Status ;;
  }

  measure: count_per_minute {
    type: count_distinct
    sql: ${TABLE}.SessionId ;;
    filters: {
    field: status_number
    value: "2"
    }
  }
}
