
view: sql_runner_query {
  derived_table: {
    sql: Select * FROM WAREHOUSE.FCT_PLAYERS_BY_COLLEGE ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: school {
    type: string
    sql: ${TABLE}."SCHOOL" ;;
  }

  dimension: player_count {
    type: number
    sql: ${TABLE}."PLAYER_COUNT" ;;
  }

  set: detail {
    fields: [
        school,
	player_count
    ]
  }
}
