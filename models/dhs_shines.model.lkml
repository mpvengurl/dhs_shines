connection: "dhs_shines"

# include all the views
include: "/views/**/*.view"

datagroup: dhs_shines_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dhs_shines_default_datagroup

explore: sample_data_v3 {}
