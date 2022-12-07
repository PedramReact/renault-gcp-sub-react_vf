view: vin_data {
    sql_table_name:`REACT_DEV_DATA.Vin_Data`
      ;;


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: order_id {
    type: string
    sql: ${TABLE}.order_id ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }

  dimension: fuel_type {
    type: string
    sql: ${TABLE}.fuel_type ;;
  }

  dimension: engine {
    type: string
    sql: ${TABLE}.engine ;;
  }

  dimension: dealer_name {
    type: string
    sql: ${TABLE}.dealer_name ;;
  }

  dimension: catalogue_price {
    type: number
    sql: ${TABLE}.catalogue_price ;;
  }

  dimension: marginal_profit {
    type: number
    sql: ${TABLE}.marginal_profit ;;
  }

  dimension: client_discount {
    type: number
    sql: ${TABLE}.client_discount ;;
  }

  dimension: invoice_date {
    type: date
    datatype: date
    sql: ${TABLE}.invoice_date ;;
  }

  dimension: order_date {
    type: date
    datatype: date
    sql: ${TABLE}.order_date ;;
  }

  set: detail {
    fields: [
      order_id,
      brand,
      model,
      version,
      fuel_type,
      engine,
      dealer_name,
      catalogue_price,
      marginal_profit,
      client_discount,
      invoice_date,
      order_date
    ]
  }
}
