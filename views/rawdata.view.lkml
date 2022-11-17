view: rawdata {
  sql_table_name: uber.Rawdata ;;

  dimension: base {
    type: string
    sql: ${TABLE}.Base ;;
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
    sql: ${TABLE}.DateTime ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.Lat ;;
  }

  dimension: lon {
    type: number
    sql: ${TABLE}.Lon ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
