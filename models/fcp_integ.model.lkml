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
}

explore: apm_canceled {
}

explore: apm_local_failed {
}

explore: apm_local_not_eligible {
}

explore: apm_local_timeout {
}

explore: apm_upload_completed {
}

explore: apm_upload_timeout {
}

explore: task {
}

explore: iteration{
}
