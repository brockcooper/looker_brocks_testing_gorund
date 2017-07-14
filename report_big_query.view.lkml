view: report_big_query {
  sql_table_name: big_squid_ga.report;;

  dimension: source {
    description: "Source of where web traffic came from"
    type: string
    sql: ${TABLE}.source ;;
  }

  measure: sessions {
    type: sum
    sql: ${TABLE}.sessions ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: channel_grouping {
    type: string
    sql: ${TABLE}.channelgrouping ;;
  }

  measure: new_visits {
    type: sum
    sql: ${TABLE}.newvisits ;;
  }

  measure: bounce_rate {
    type: average
    sql: ${TABLE}.bouncerate ;;
  }

  measure: pageviews {
    type: sum
    sql: ${TABLE}.pageviews ;;
  }

  measure: new_users {
    type: sum
    sql: ${TABLE}.newusers ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: average_pageviews_per_session {
    type: number
    sql: SUM(${pageviews}) / SUM(${sessions}) ;;
  }

  set: detail {
    fields: [
      source,
      campaign,
      channel_grouping
    ]
  }
}
