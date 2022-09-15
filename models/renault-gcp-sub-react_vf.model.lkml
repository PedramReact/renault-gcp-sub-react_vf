connection: "renault-gcp-sub-react"

# include all the views
include: "/views/**/*.view"

datagroup: renault-gcp-sub-react_vf_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: renault-gcp-sub-react_vf_default_datagroup

explore: data_pareto_v2 {}

explore: ig_2j {}

explore: pareto {}
