view: order_items_2 {
  sql_table_name: public.order_items ;;

  dimension: id {
    primary_key: yes
    sql: ${TABLE}.id ;;
    hidden: yes
    type: number
  }

  dimension: order_no {
    type: number
    sql: ${TABLE}.order_id ;;
  }

  dimension_group: created {
    type: time
    timeframes: [time, date, week, month, year, quarter]
    sql: ${TABLE}.created_at ;;
  }

  measure: total_order_amt {
    type: sum
    sql: ${order_no} ;;
  }

}
