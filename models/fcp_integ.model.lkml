connection: "task_db_integ"

# include all the views
include: "/views/**/*.view.lkml"
include: "/dashboards/*.dashboard.lookml"

datagroup: fcp_prod_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fcp_prod_default_datagroup

explore: apm_assigned {
  sql_always_where: Status = 0 ;;
}

explore: apm_canceled {
  sql_always_where: Status = 101 ;;
}

explore: apm_local_failed {
  sql_always_where: Status = 102 ;;
}

explore: apm_local_not_eligible {
  sql_always_where: Status = 103 ;;
}

explore: apm_local_timeout {
  sql_always_where: Status = 151 ;;
}

explore: apm_upload_completed {
  sql_always_where: Status = 2 ;;
}

explore: apm_upload_timeout {
  sql_always_where: Status = 152 ;;
}

explore: task {
}

explore: iteration{
}
