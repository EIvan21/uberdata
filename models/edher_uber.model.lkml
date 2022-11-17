connection: "uber-data"

# include all the views
include: "/views/**/*.view"

datagroup: edher_uber_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: edher_uber_default_datagroup

explore: rawdata {}

explore: othercarmel {}

explore: uber_jan_feb {}
