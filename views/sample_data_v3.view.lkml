view: sample_data_v3 {
  sql_table_name: `mpv-only-bq.dhs_sample_caseworker_data.sample_data_v3`
    ;;

  dimension: cd_stage {
    type: string
    sql: ${TABLE}.CD_STAGE ;;
  }

  dimension_group: dt_stage_close {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DT_STAGE_CLOSE ;;
  }

  dimension_group: dt_stage_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DT_STAGE_START ;;
  }

  dimension: id_case {
    type: number
    sql: ${TABLE}.ID_CASE ;;
  }

  dimension: id_stage {
    type: number
    sql: ${TABLE}.ID_STAGE ;;
  }

  dimension: narrative {
    type: string
    sql: ${TABLE}.NARRATIVE ;;
  }

  dimension: nm_stage {
    type: string
    sql: ${TABLE}.NM_STAGE ;;
  }

  dimension: txt_stage_priority_cmnt {
    type: string
    sql: ${TABLE}.TXT_STAGE_PRIORITY_CMNT ;;
  }

  dimension: txt_stage_spvsry_cmnts {
    type: string
    sql: ${TABLE}.TXT_STAGE_SPVSRY_CMNTS ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
