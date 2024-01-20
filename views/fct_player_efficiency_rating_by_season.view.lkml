view: fct_player_efficiency_rating_by_season {
  sql_table_name: "WAREHOUSE"."FCT_PLAYER_EFFICIENCY_RATING_BY_SEASON" ;;

  measure: player_efficiency_rating {
    type: number
    sql: sum(${TABLE}."PLAYER_EFFICIENCY_RATING") ;;
  }
  dimension: player_id {
    type: number
    sql: ${TABLE}."PLAYER_ID" ;;
  }
  dimension: player_name {
    type: string
    sql: ${TABLE}."PLAYER_NAME" ;;
  }
  dimension: season {
    type: string
    sql: ${TABLE}."SEASON" ;;
  }
}
