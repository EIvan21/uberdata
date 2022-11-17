view: othercarmel {
  sql_table_name: uber.othercarmel ;;

  dimension: base_no {
    type: string
    sql: ${TABLE}.Base_No ;;
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
    sql: ${TABLE}.Date ;;
  }

  dimension: pu_adress {
    type: string
    sql: ${TABLE}.PU_Adress ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
