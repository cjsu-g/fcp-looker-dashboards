connection: "metric_db_prod"

include: "/views/metric_db_views/*.view.lkml"


datagroup: fcp_prod_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fcp_prod_default_datagroup

explore: metric {
}
