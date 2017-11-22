connection: "big_squid_bigquery_test"

include: "*_big_query.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: google_analytics_reporting {

}
