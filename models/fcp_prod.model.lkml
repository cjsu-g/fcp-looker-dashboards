connection: "task_db_prod"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: fcp_prod_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fcp_prod_default_datagroup

explore: assigned_assignment_per_minute {
}
