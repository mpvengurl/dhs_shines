view: sample_data_v3 {
  sql_table_name: `mpv-only-bq.dhs_sample_caseworker_data.sample_data_v3`
    ;;

  dimension: cd_stage {
    type: string
    description: "case stage id number"
    sql: ${TABLE}.CD_STAGE ;;
  }

  dimension_group: dt_stage_close {
    label: "stage close date"
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
    label: "stage start date"
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
    label: "case number"
    type: number
    sql: ${TABLE}.ID_CASE ;;
  }

  dimension: id_event {
    label: "event number"
    type: number
    sql: ${TABLE}.ID_EVENT ;;
  }

  dimension: id_stage {
    type: number
    sql: ${TABLE}.ID_STAGE ;;
  }

  dimension: narrative {
    label: "cases"
    type: string
    sql: ${TABLE}.NARRATIVE ;;
    description: "case details with therapy, medical and foster care"
  }

  dimension: nm_stage {
    label: "case stage"
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
