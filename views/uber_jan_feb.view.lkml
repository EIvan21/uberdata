view: uber_jan_feb {
  sql_table_name: uber.uberJanFeb ;;

  dimension: active_vehicles {
    type: number
    sql: ${TABLE}.active_vehicles ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date ;;
  }

  dimension: dispatching_base_number {
    type: string
    sql: ${TABLE}.dispatching_base_number ;;
  }

  dimension: trips {
    type: number
    sql: ${TABLE}.trips ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
