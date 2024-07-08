view: allowed_authorization_token {
  sql_table_name: AllowedAuthorizationToken ;;

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.CreatedAt ;;
  }
  dimension_group: expired {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.ExpiredAt ;;
  }
  dimension: token {
    type: string
    sql: ${TABLE}.Token ;;
  }
  measure: count {
    type: count
  }
}
