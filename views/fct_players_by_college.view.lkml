view: fct_players_by_college {
  sql_table_name: "WAREHOUSE"."FCT_PLAYERS_BY_COLLEGE" ;;

  # dimension: player_count {
  #   type: number
  #   sql: ${TABLE}."PLAYER_COUNT" ;;
  # }
  dimension: school {
    type: string
    sql: ${TABLE}."SCHOOL" ;;
  }
  # measure: count {
  #   type: count
  # }
  measure: player_count {
    type: number
    sql: ${TABLE}."PLAYER_COUNT" ;;
  }
}
