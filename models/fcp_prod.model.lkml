connection: "task_db_prod"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: fcp_prod_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: fcp_prod_default_datagroup

explore: aggregation_batch {
  join: task {
    type: left_outer
    sql_on: ${aggregation_batch.task_id} = ${task.task_id} ;;
    relationship: many_to_one
  }

  join: iteration {
    type: left_outer
    sql_on: ${aggregation_batch.iteration_id} = ${iteration.base_iteration_id} ;;
    relationship: many_to_one
  }
}

explore: aggregation_batch_status_history {
  join: task {
    type: left_outer
    sql_on: ${aggregation_batch_status_history.task_id} = ${task.task_id} ;;
    relationship: many_to_one
  }

  join: iteration {
    type: left_outer
    sql_on: ${aggregation_batch_status_history.iteration_id} = ${iteration.base_iteration_id} ;;
    relationship: many_to_one
  }
}

explore: allowed_authorization_token {}

explore: assignment {
  join: task {
    type: left_outer
    sql_on: ${assignment.task_id} = ${task.task_id} ;;
    relationship: many_to_one
  }

  join: iteration {
    type: left_outer
    sql_on: ${assignment.iteration_id} = ${iteration.base_iteration_id} ;;
    relationship: many_to_one
  }
}

explore: assignment_status_history {
  join: task {
    type: left_outer
    sql_on: ${assignment_status_history.task_id} = ${task.task_id} ;;
    relationship: many_to_one
  }

  join: iteration {
    type: left_outer
    sql_on: ${assignment_status_history.iteration_id} = ${iteration.base_iteration_id} ;;
    relationship: many_to_one
  }
}

explore: iteration {
  join: task {
    type: left_outer
    sql_on: ${iteration.task_id} = ${task.task_id} ;;
    relationship: many_to_one
  }
}

explore: iteration_status_history {
  join: task {
    type: left_outer
    sql_on: ${iteration_status_history.task_id} = ${task.task_id} ;;
    relationship: many_to_one
  }

  join: iteration {
    type: left_outer
    sql_on: ${iteration_status_history.iteration_id} = ${iteration.base_iteration_id} ;;
    relationship: many_to_one
  }
}

explore: task {}

explore: task_status_history {
  join: task {
    type: left_outer
    sql_on: ${task_status_history.task_id} = ${task.task_id} ;;
    relationship: many_to_one
  }
}
