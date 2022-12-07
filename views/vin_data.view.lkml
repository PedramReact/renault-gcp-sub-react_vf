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

# La hiérarchie véhicule :  brand > model#

  dimension: brand {
    type: string

    sql: ${TABLE}.brand ;;
    drill_fields: [model]
    group_label: "Véhicule"
  }

#La hiérarchie véhicule :  model > version

  dimension: model {
    type: string
    sql: ${TABLE}.model ;;
    drill_fields: [version]
    group_label: "Véhicule"
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
    group_label: "Véhicule"
  }

#La hiérarchie motorisation: fuel_type > engine

  dimension: fuel_type {
    type: string
    sql: ${TABLE}.fuel_type ;;
    drill_fields: [engine]
    group_label: "Motorisation"
  }

  dimension: engine {
    type: string
    sql: ${TABLE}.engine ;;
    group_label: "Motorisation"
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


  #Stock = invoice_date - order_date#

  dimension: Stock {
    type: number
    sql:
    DATE_DIFF(${invoice_date},${order_date},DAY);;
  }

  measure: avg_stock{
    type: average
    sql:  ${Stock}  ;;
  }

#Taux de marge = marginal_profit / (catalogue_price - client_discount)#


  measure:Taux_de_marge{
    type: number
value_format_name: "percent_0"
    sql:
    ${marginal_profit} / nullif((${catalogue_price} - ${client_discount}),0);;
  }




}
