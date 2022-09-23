view: data_pareto_v2 {
  sql_table_name: `REACT_DEV_DATA.DATA_PARETO_V2`
    ;;
    #modif

  dimension: annemois {
    type: number
    sql: ${TABLE}.annemois ;;
  }

  dimension: cod_et_apv_prov {
    type: number
    sql: ${TABLE}.cod_et_apv_prov ;;
  }

  dimension: cod_ident_pb {
    type: string
    sql: ${TABLE}.COD_IDENT_PB ;;
  }

  dimension: date_deliv_pieces_def {
    type: string
    sql: ${TABLE}.date_deliv_pieces_def ;;
  }

  dimension: date_livraison {
    type: string
    sql: ${TABLE}.date_livraison ;;
  }

  dimension_group: datealerte {
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
    sql: ${TABLE}.datealerte ;;
  }

  dimension_group: dateapplipremsiteserprov {
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
    sql: ${TABLE}.dateapplipremsiteserprov ;;
  }

  dimension_group: datemaxapvprov {
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
    sql: ${TABLE}.datemaxapvprov ;;
  }

  dimension_group: datemaxserdef {
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
    sql: ${TABLE}.datemaxserdef ;;
  }

  dimension_group: datemaxserprov {
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
    sql: ${TABLE}.datemaxserprov ;;
  }

  dimension_group: datep3 {
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
    sql: ${TABLE}.datep3 ;;
  }

  dimension_group: datephyreelap {
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
    sql: ${TABLE}.datephyreelap ;;
  }

  dimension: delivery_region {
    type: string
    sql: ${TABLE}.delivery_region ;;
  }

  dimension: delivery_region_label_fr {
    type: string
    sql: ${TABLE}.delivery_region_label_fr ;;
    drill_fields: [distribution_country_label_fr]
  }

  dimension: distribution_country {
    type: string
    sql: ${TABLE}.distribution_country ;;
  }

  dimension: distribution_country_label_fr {
    type: string
    sql: ${TABLE}.distribution_country_label_fr ;;
  }

  dimension_group: distribution {
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
    sql: ${TABLE}.distribution_date ;;
  }

  dimension: dll_checksum {
    type: number
    sql: ${TABLE}.DLL_CHECKSUM ;;
  }

  dimension_group: dll_date_creation {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DLL_DATE_CREATION ;;
  }

  dimension_group: dll_date_maj {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.DLL_DATE_MAJ ;;
  }

  dimension: dll_validite {
    type: number
    sql: ${TABLE}.DLL_VALIDITE ;;
  }

  dimension_group: dt_appli_prev_ser_def {
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
    sql: ${TABLE}.dt_appli_prev_ser_def ;;
  }

  dimension_group: dtappliprevsolprov {
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
    sql: ${TABLE}.dtappliprevsolprov ;;
  }

  dimension: efficiency_rate {
    type: number
    sql: ${TABLE}.efficiency_rate ;;
  }

  dimension: engine_index {
    type: number
    sql: ${TABLE}.engine_index ;;
  }


  dimension: engine_type {
    type: string
    sql: ${TABLE}.engine_type ;;
  }

  dimension: factory_manufacturing_box {
    type: string
    sql: ${TABLE}.factory_manufacturing_box ;;
  }

  dimension: factory_manufacturing_box_label_fr {
    type: string
    sql: ${TABLE}.factory_manufacturing_box_label_fr ;;
  }

  dimension: factory_manufacturing_engine {
    type: string
    sql: ${TABLE}.factory_manufacturing_engine ;;
  }

  dimension: factory_manufacturing_engine_label_fr {
    type: string
    sql: ${TABLE}.factory_manufacturing_engine_label_fr ;;
  }

  dimension: factory_manufacturing_vehicle {
    type: number
    sql: ${TABLE}.factory_manufacturing_vehicle ;;
  }

  dimension: factory_manufacturing_vehicle_label_fr {
    type: string
    sql: ${TABLE}.factory_manufacturing_vehicle_label_fr ;;
  }

  dimension_group: fic_opening {
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
    sql: ${TABLE}.fic_opening_date ;;
  }

  dimension: function_code_label_fr {
    type: string
    sql: ${TABLE}.function_code_label_fr ;;
  }

  dimension: gearbox_index {
    type: number
    sql: ${TABLE}.gearbox_index ;;
  }

  dimension: gearbox_type {
    type: string
    sql: ${TABLE}.gearbox_type ;;
  }

  dimension_group: global_incident {
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
    sql: ${TABLE}.global_incident_date ;;
  }

  dimension: gq05_plantdesc {
    type: string
    sql: ${TABLE}.gq05_plantdesc ;;
  }

  dimension: gq23_alertlabel {
    type: string
    sql: ${TABLE}.gq23_alertlabel ;;
  }

  dimension_group: gq23_createddate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.gq23_createddate ;;
  }

  dimension: gq28_elementname {
    type: string
    sql: ${TABLE}.gq28_elementname ;;
  }

  dimension: gq30_incidentname {
    type: string
    sql: ${TABLE}.gq30_incidentname ;;
  }

  dimension_group: gq38_putinplace {
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
    sql: ${TABLE}.gq38_putinplace ;;
  }

  dimension: gq41_elementcode {
    type: string
    sql: ${TABLE}.gq41_elementcode ;;
  }

  dimension: gq42_incidentcode {
    type: string
    sql: ${TABLE}.gq42_incidentcode ;;
  }

  dimension_group: gq50_closeddate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.gq50_closeddate ;;
  }

  dimension: gq50_qflabel {
    type: string
    sql: ${TABLE}.gq50_qflabel ;;
  }

  dimension: gq50_statuscode {
    type: number
    sql: ${TABLE}.gq50_statuscode ;;
  }

  dimension_group: icm_connection {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.icm_connection_date ;;
  }

  dimension: id_ig {
    type: number
    sql: ${TABLE}.id_ig ;;
  }

  dimension: ig_has_drg {
    type: yesno
    sql: ${TABLE}.ig_has_drg ;;
  }

  dimension: ig_has_fic {
    type: yesno
    sql: ${TABLE}.ig_has_fic ;;
  }

  dimension: ig_has_icm {
    type: yesno
    sql: ${TABLE}.ig_has_icm ;;
  }

  dimension: is_incident {
    type: yesno
    sql: ${TABLE}.is_incident ;;
  }

  dimension: lborigineprobleme {
    type: string
    sql: ${TABLE}.lborigineprobleme ;;
  }

  dimension: lbscodpr {
    type: string
    sql: ${TABLE}.lbscodpr ;;
  }

  dimension: lbscodts {
    type: string
    sql: ${TABLE}.lbscodts ;;
  }

  dimension: lbscriticite {
    type: number
    sql: ${TABLE}.lbscriticite ;;
  }

  dimension: lbsdirpt1 {
    type: string
    sql: ${TABLE}.lbsdirpt1 ;;
  }

  dimension: lbsetat {
    type: number
    sql: ${TABLE}.lbsetat ;;
  }

  dimension: lbsite2 {
    type: string
    sql: ${TABLE}.lbsite2 ;;
  }

  dimension: lbspoletrait {
    type: string
    sql: ${TABLE}.lbspoletrait ;;
  }

  dimension: lbsquestion {
    type: string
    sql: ${TABLE}.lbsquestion ;;
  }

  dimension: lbsstatusapp {
    type: number
    sql: ${TABLE}.lbsstatusapp ;;
  }

  dimension: lib_ident_pb {
    type: string
    sql: ${TABLE}.LIB_IDENT_PB ;;
  }

  dimension: llbquestion {
    type: string
    sql: ${TABLE}.llbquestion ;;
  }

  dimension_group: manufacturing {
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
    sql: ${TABLE}.manufacturing_date ;;
  }

  dimension: mis_alliance {
    type: number
    sql: ${TABLE}.mis_alliance ;;
  }

  dimension: model_code {
    type: string
    sql: ${TABLE}.model_code ;;
  }

  dimension: nitg {
    type: string
    sql: ${TABLE}.nitg ;;
  }

  dimension: nitg_label_fr {
    type: string
    sql: ${TABLE}.nitg_label_fr ;;
  }

  dimension: numero_nc {
    type: string
    sql: ${TABLE}.numero_nc ;;
  }

  dimension_group: opening_date_or {
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
    sql: ${TABLE}.opening_date_or ;;
  }

  dimension: pivot_engine {
    type: string
    sql: ${TABLE}.pivot_engine ;;
  }

  dimension: pivot_gearbox {
    type: string
    sql: ${TABLE}.pivot_gearbox ;;
  }

  dimension: project_code {
    type: string
    sql: ${TABLE}.project_code ;;
  }

  dimension: protection {
    type: string
    sql: ${TABLE}.protection ;;
  }

  measure: max_protection{
    type: string
    sql:  MAX(${protection}) OVER (PARTITION BY ${id_ig}) ;;
  }


  dimension: rob_ap {
    type: string
    sql: ${TABLE}.ROB_AP ;;
  }

  dimension: tags {
    type: string
    sql: ${TABLE}.tags ;;
  }

  dimension: tauxefficacitequ {
    type: number
    sql: ${TABLE}.tauxefficacitequ ;;
  }

  dimension: topic_id {
    type: string
    sql: ${TABLE}.topic_id ;;
  }

  dimension: topic_labell {
    type: string
    sql: ${TABLE}.topic_labell ;;
  }

  dimension: type_protection {
    type: string
    sql: ${TABLE}.type_protection ;;
  }

  dimension: warranty_1 {
    type: yesno
    sql: ${TABLE}.warranty_1 ;;
  }

  dimension: warranty_2 {
    type: yesno
    sql: ${TABLE}.warranty_2 ;;
  }

  dimension: warranty_3 {
    type: yesno
    sql: ${TABLE}.warranty_3 ;;
  }

  measure: count {
    type: count
    drill_fields: [gq30_incidentname, gq28_elementname]
  }


######################################################################"Les code Lookml ajoute par BAHA "

# paramter garantie  pour les choix d'utilisateur

  parameter: garantie_year {

    suggestions: ["1 year","2 years ","3 years"]
  }

  dimension: Garantie_3_ans{
    type: yesno
    sql: ${TABLE}.warranty_3 ;;
  }
  dimension: Garantie_2_ans {
    type: yesno
    sql: ${TABLE}.warranty_2 ;;
  }
  dimension: Garantie_1_ans {
    type: yesno
    sql: ${TABLE}.warranty_1 ;;
  }
 # application de choix de garantie sur les look
  dimension: verification_garantie {
    sql:
       case when
            {% condition garantie_year%} "1 year" {% endcondition%} and ${Garantie_1_ans}
            then 'Yes'
            when
            {% condition garantie_year%} "2 years" {% endcondition%} and ${Garantie_2_ans}
            then 'Yes'
            when
            {% condition garantie_year%} "3 years" {% endcondition%} and ${Garantie_3_ans}
            then 'Yes'

      else 'No'

      end
      ;;
  }


 # paramter nature d'incident  pour les choix d'utilisateur

  parameter: nature_d_incident {
    suggestions: ["All","DRG","FIC","D&F","DOF"]
  }

# application de choix de nature d'incident sur les look
  dimension: verification_indice {
    sql:
       case when
            {% condition nature_d_incident%} "All" {% endcondition%}
            then 'Yes'
            when
            {% condition nature_d_incident%} "DRG" {% endcondition%} and ${status_drg}
            then 'Yes'
            when
            {% condition nature_d_incident%} "FIC" {% endcondition%} and ${status_fic}
             then 'Yes'
             when
              {% condition nature_d_incident%} "D&F" {% endcondition%} and ${status_DandF}
             then 'Yes'
             when
               {% condition nature_d_incident%} "DOF" {% endcondition%} and ${status_DOF}
             then 'Yes'

      else 'No'

      end
      ;;
  }

#les dimension cacher utiliser dans les verification indice
  dimension: status_drg {
    type: yesno
    sql:ig_has_drg = TRUE   ;;
  }

  dimension: status_fic {
    type: yesno

    sql: ig_has_fic = TRUE;;
  }

  dimension: status_DandF {
    type: yesno

    sql:  (${TABLE}.ig_has_drg = TRUE and ${TABLE}.ig_has_fic = TRUE);;
  }
  dimension: status_DOF {
    type: yesno

    sql:   ( ${TABLE}.ig_has_fic = TRUE or ${TABLE}.ig_has_drg = TRUE  );;
  }

# paramter Couleurs incident pour les RVB

  parameter: Couleurs_incident {
    suggestions: ["R","V","G","B"]
  }

  # Calcul de dimension RVB_APV
  dimension: calcule_RVB_APV_VP {

    #hidden: yes

    sql:

      case

                       when ${data_pareto_v2.type_protection} = "LUP" and ${cod_et_apv_prov} = 6 and ${datemaxapvprov_date} is not null

      then "C"

      when ${data_pareto_v2.type_protection} = "GQU"

      then "B"

      else 'A'
      end

      ;;

  }
  # Calcul de mesure cache pour le max RVB_APV
  #ABC VGR
  measure: max_RVB_APV_VP {

    hidden: yes

    sql: MAX(${calcule_RVB_APV_VP}) ;;

  }

  measure: RVB_APV_VP {

    #ABC VGR

    sql: case

                           when ${max_RVB_APV_VP} = 'C'

      then 'V'

      when ${max_RVB_APV_VP} = 'B'

      then 'G'

      when ${max_RVB_APV_VP} = 'A'

      then 'R'

      end

      ;;

  }

  # Calcul caché pour la dimension RVB_Def
  dimension: ccalcul_RVB_Definitive_VP_v1{

    hidden: yes



    sql: case when ${data_pareto_v2.type_protection} = "GQU"

                               then 'C'

      when

      ${data_pareto_v2.type_protection} = "LUP" and ${lbscodts} = "SERIE DEFINITIVE" and ${lbsstatusapp} = 5 and ${datephyreelap_date} IS NOT NULL

      then 'D'

      when

      ${data_pareto_v2.type_protection} = "LUP" and ${lbscodts}= "SERIE DEFINITIVE" and ${lbsstatusapp} = 0 and ${dt_appli_prev_ser_def_date} IS NOT NULL and ${dt_appli_prev_ser_def_date} > CURRENT_DATE

      then 'B'

      else 'A'

      end ;;

  }

  dimension: calcul_RVB_Definitive_VP_v2 {

    hidden: yes

    sql:

    case

                      when ${type_protection} = "LUP" and ${lbscodts} = "SERIE DEFINITIVE" and ${lbsstatusapp} = 5 and ${datephyreelap_date} is not null

      then ${ccalcul_RVB_Definitive_VP_v1}

      when ${type_protection} = "LUP" and ${lbscodts} = "SERIE DEFINITIVE" and ${lbsstatusapp} = 0 and ${dt_appli_prev_ser_def_date} is not null

      then ${ccalcul_RVB_Definitive_VP_v1}

      when ${type_protection} = 'GQU'

      then ${ccalcul_RVB_Definitive_VP_v1}

      else 'A'

      end  ;;

  }
# Calcul de max pour la measur  RVB_DEF
  measure: max_RVB_Definitive_VP {

    hidden: yes

    sql: MAX(${calcul_RVB_Definitive_VP_v2}) ;;

  }

  #ABCD VGBR

  measure: RVB_Def_VP {
    sql: case

                             when ${max_RVB_Definitive_VP} = 'D'

      then 'V'

      when ${max_RVB_Definitive_VP} = 'C'

      then 'G'

      when ${max_RVB_Definitive_VP} = 'B'

      then 'B'

      when ${max_RVB_Definitive_VP} = 'A'

      then 'R'

      end

      ;; }



 # Calcul de dimension RVB_Imm

  dimension: calcul_RVB_Immediate_VP {

    hidden: yes

    sql:

         case

                             when ${data_pareto_v2.type_protection} = "LUP" and ${lbscodts} = "SERIE PROVISOIRE" and ${lbsstatusapp} = 5 and ${datephyreelap_date} is not null

      then "D"

      when ${data_pareto_v2.type_protection} = "LUP" and ${lbscodts} = "SERIE PROVISOIRE" and ${lbsstatusapp} = 0 and ${dtappliprevsolprov_date} is not null and ${dtappliprevsolprov_date} < CURRENT_DATE

      then "B"

      when ${data_pareto_v2.type_protection} = "LUP" and ${lbscodts} = "SERIE PROVISOIRE" and ${lbsstatusapp} = 0 and ${dtappliprevsolprov_date} is not null and ${dtappliprevsolprov_date} > CURRENT_DATE

      then "C"

      when ${data_pareto_v2.type_protection} = "LUP" and ${lbscodts} = "SERIE PROVISOIRE" and ${lbsstatusapp} = 9

      then "A"

      when ${data_pareto_v2.type_protection} = "LUP" and ${lbscodts} = "SERIE DEFINITIVE " and ${lbsstatusapp} = 5 and ${datephyreelap_date} is not null

      then "A"

      when ${data_pareto_v2.type_protection} = "GQU" and ${gq38_putinplace_date} is not null

      then "D"

      else 'B' end

      ;;
  }

# Calcul de max pour la mesure RVB_Imm
  #ABCD VBRG }
  measure: max_calcule_RVB_Immediate_VP {
    hidden: yes
    sql: MAX(${calcul_RVB_Immediate_VP}) ;;

  }
  measure: RVB_Immediate_VP {

    #ABCD VBRG
    sql: case

                      when ${RVB_Def_VP} = 'V' and ${max_calcule_RVB_Immediate_VP} = 'B'

      then 'G'

      when ${max_calcule_RVB_Immediate_VP} = 'D'

      then 'V'

      when ${max_calcule_RVB_Immediate_VP} = 'C'

      then 'B'

      when ${max_calcule_RVB_Immediate_VP} = 'B'

      then 'R'

      when ${max_calcule_RVB_Immediate_VP} = 'A'

      then 'G'

      end

      ;;}


# Calcul La date SOl_Ser_Def

  dimension: Calcul_Date_Solution_Serie_Definitive_VP {

    hidden: yes


    sql:

    case

                        when ${lbscodts}= 'SERIE DEFINITIVE' and (${lbsstatusapp} = 5)

      then ${datephyreelap_date}

      when ${lbscodts} = 'SERIE DEFINITIVE' and ${lbsstatusapp} = 0

      then ${dt_appli_prev_ser_def_date}

      else

      date(1900,01,01)

      end

      ;;

  }

# Calcul Le max date de sol_ser_def et identifier les couleurs RVB dans la colonne

  measure: Date_Solution_Serie_Definitive_VP {

    type: date

    sql: MAX(${Calcul_Date_Solution_Serie_Definitive_VP}) ;;


    html:

       {% if RVB_Def_VP._value == 'V'  %}

                    <p style="color: black; background-color: #00c853; font-size:100%; text-align:center"> {{rendered_value}} </p>

      {% elsif RVB_Def_VP._value == 'R' %}

      <p style="color: #FF0000 ; background-color: #FF0000 ; font-size:100%; text-align:center"> {{rendered_value}} </p>

      {% elsif RVB_Def_VP._value == 'G' %}

      <p style="color: #a4a4a4; background-color: #a4a4a4; font-size:100%; text-align:center"> {{rendered_value}} </p>

      {% elsif RVB_Def_VP._value == 'B' %}

      <p style="color: black; background-color: #00b0ff; font-size:100%; text-align:center"> {{rendered_value}} </p>

      {% endif %} ;;}


# Calcul La date SOl_APV

  measure: Calcul_Date_Solution_APV_VP {



    sql: case

                           when ${data_pareto_v2.cod_et_apv_prov} = 6

      then ${data_pareto_v2.datemaxapvprov_date}

      else

      date(1900,01,01)

      end;;

    # Calcul Le max date de sol_APV et identifier les couleurs RVB dans la colonne

  } measure: Date_Solution_APV_VP {

    type: date

    sql:max(${Calcul_Date_Solution_APV_VP})

                             ;;
    html:

    {% if RVB_APV_VP._value == 'V'  %}

                      <p style="color: black; background-color: #00c853; font-size:100%; text-align:center"> {{rendered_value}} </p>

      {% elsif RVB_APV_VP._value == 'R'  %}

      <p style="color: #FF0000 ; background-color: #FF0000 ; font-size:100%; text-align:center;"> {{rendered_value}}  </p>

      {% elsif RVB_APV_VP._value == 'G'  %}

      <p style="color: #a4a4a4; background-color: #a4a4a4; font-size:100%; text-align:center"> {{rendered_value}} </p>

      {% elsif RVB_APV_VP._value == 'B'  %}

      <p style="color: black; background-color: #00b0ff; font-size:100%; text-align:center"> {{rendered_value}} </p>

      {% endif %} ;;
  }

# Calcul la dimension date sol_ser_IMM

  dimension: Calcul_Date_Solution_Serie_Immediate_VP {


    hidden: yes

    sql:

       case

                           when ${lbscodts}= 'SERIE PROVISOIRE' and ${lbsstatusapp} = 5

      then ${datephyreelap_date}

      when ${lbscodts} = 'SERIE PROVISOIRE' and ${lbsstatusapp} = 0

      then ${dtappliprevsolprov_date}

      when ${type_protection} = 'GQU' and (${gq38_putinplace_date} is null)

      then date(1900,01,01)

       when ${type_protection} = 'GQU'

      then ${gq38_putinplace_date}


      else date(1900,01,01)

      end

      ;;

  }

# Calcul Le max date de sol_ser_IMM et identifier les couleurs RVB dans la colonne

  measure: Date_Solution_Serie_Immediate_VP {

    type: date

    sql: MAX(${Calcul_Date_Solution_Serie_Immediate_VP})

                             ;;
    html:

    {% if RVB_Immediate_VP._value == 'V'  %}

                      <p style="color: black; background-color: #00c853; font-size:100%; text-align:center"> {{rendered_value}} </p>

      {% elsif RVB_Immediate_VP._value == 'R'  %}

      <p style="color: #FF0000 ; background-color: #FF0000 ; font-size:100%; text-align:center"> {{rendered_value}} </p>

      {% elsif RVB_Immediate_VP._value == 'G'  %}

      <p style="color: #a4a4a4; background-color: #a4a4a4; font-size:100%; text-align:center"> {{rendered_value}} </p>

      {% elsif RVB_Immediate_VP._value == 'B'  %}

      <p style="color: black; background-color: #00b0ff; font-size:100%; text-align:center"> {{rendered_value}} </p>

      {% endif %} ;;



  }

# Calcul la nombre de jour
  dimension: Age {
    type : number
    sql: if(${data_pareto_v2.type_protection} ="LUP" ,
          if(${data_pareto_v2.lbsetat} = 5,
                   DATE_DIFF(${datep3_date},${datealerte_date},DAY),
                  DATE_DIFF(CURRENT_DATE,${datealerte_date},DAY)),
       if(${data_pareto_v2.type_protection}= "GQU" ,
          if(${data_pareto_v2.gq50_statuscode} = 4 ,
                   DATE_DIFF(${gq50_closeddate_date},${gq23_createddate_date},DAY),
                  DATE_DIFF(CURRENT_DATE,${gq23_createddate_date},DAY)), null));;

  }


# Calcul la dimension Site application pour LUP et GQU
  dimension: Site_Application_LUP_GQU  {
    type: string
    sql:
      if((${data_pareto_v2.lbsite2} IS NOT NULL) ,${data_pareto_v2.lbsite2},${data_pareto_v2.gq05_plantdesc});;
  }


# Calcul la dimension Code projet
  dimension: Code_Projet_Calcule {
    type: string
    sql:
      if((${lbscodpr} IS NOT NULL) ,${lbscodpr},${project_code});;
  }

# Calcul la dimension de EC: FM: titre LUP

  dimension: EC_FM_Titre_LUP {

    type: string
    sql:
      if((${data_pareto_v2.llbquestion} IS NOT NULL),
      SUBSTR( if(NOT STRPOS(${data_pareto_v2.llbquestion}, "//") = 0,
      SUBSTR(${data_pareto_v2.llbquestion} , STRPOS(${data_pareto_v2.llbquestion}, "//")+2,
      length( ${data_pareto_v2.llbquestion} ) - STRPOS(${data_pareto_v2.llbquestion}, "//")+2), ""),1,
      STRPOS(if(NOT STRPOS(${data_pareto_v2.llbquestion}, "//") = 0,
      SUBSTR(${data_pareto_v2.llbquestion} , STRPOS(${data_pareto_v2.llbquestion}, "//")+2,
      length( ${data_pareto_v2.llbquestion} ) - STRPOS(${data_pareto_v2.llbquestion}, "//")+2), ""), "//") +if(STRPOS(if(NOT STRPOS(${data_pareto_v2.llbquestion}, "//") = 0,
      SUBSTR(${data_pareto_v2.llbquestion} , STRPOS(${data_pareto_v2.llbquestion}, "//")+2,
      length( ${data_pareto_v2.llbquestion} ) - STRPOS(${data_pareto_v2.llbquestion}, "//")+2), ""), "//") = 0 ,0 , -1
      )),"");;
  }



# Calcul la dimension Direction Traitement pour LUP et GQU
  dimension: Direction_Traitement_LUP_GQU {
    type: string
    sql:if(${data_pareto_v2.type_protection} = "GQU" , ${factory_manufacturing_vehicle_label_fr},
      if(${data_pareto_v2.type_protection} = "LUP" ,
        if(length(${data_pareto_v2.lib_ident_pb})!=0 ,
          if(length(${data_pareto_v2.lbspoletrait})!=0 ,
          Concat(${data_pareto_v2.lbspoletrait},"/",${data_pareto_v2.lib_ident_pb}),${data_pareto_v2.lib_ident_pb}),${data_pareto_v2.lbspoletrait}),null));;
  }

  # parameter nature de doublon pour les choix d'utilisateur

  parameter: nature_de_doublon {
    suggestions: ["avc","sns"]
  }

  dimension: Doublon {
    sql:
       case
            when
              (NOT CONTAINS_SUBSTR(${data_pareto_v2.tags}   ,"Doublon")  OR  (${data_pareto_v2.tags} IS NULL))
            then 'Sans Doublon'
            when
              (${id_ig} IS NOT NULL)
            then 'Avec Doublon'

      end
      ;;
  }

 # Calcule de la dimension protection gardé pour les LUP et GQU

  dimension: Protection_garde{

    sql: case when
          ${type_protection} = "LUP"
           then 'LUP'
          when
          ${type_protection} = "GQU"
          then 'GQU'
          else
          'GQE'
          end ;;
  }


 # Calcule la measure IG
  measure:IG {

    type: count_distinct
    sql:${id_ig};;
    filters: [status_IG: "Yes"]

  }
  dimension:status_IG {

    type: yesno
    sql: (${type_protection} = ${Protection_garde} and (${type_protection} = "LUP") ) OR (${type_protection} = ${Protection_garde} AND (${type_protection} = "GQU"));;
  }


# Measure de Numéro Question

  measure:Num_Question {

    sql: case
      when ${lbsquestion} IS NOT NULL
      then ${lbsquestion}
      when ${gq23_alertlabel} IS NOT NULL
      then ${gq23_alertlabel}

      else
      'null'
      end ;;

  }

# Calcule une measure de criticite Groupé : K1,K2,K3,A définir

  measure: Criticite_Groupee {
    type: string
    sql:
      if(${type_protection} = "LUP" ,
      if(${lbscriticite} IS NOT NULL ,CONCAT("K",${lbscriticite}),"À Définir"),
      if((${type_protection} = "GQU" ) AND (${gq23_alertlabel} IS NOT NULL),"K3",
      if((${Num_Question} IS NOT NULL) , "NA" ,NULL)))
      ;;
  }

# Calcule une measure de concatination pour le Customer_Effect_Failure_Mode_Formate

  measure: Customer_Effect_Failure_Mode_Formate {
    type: string
    sql:
       IF((${lbsquestion} IS NULL) AND (${gq23_alertlabel} IS NOT NULL),
        CONCAT("Elément:",${gq41_elementcode},"  " ,${gq28_elementname}, "\n Incident:" ,${gq42_incidentcode} ,"  ",${gq30_incidentname}),

      if(${EC_FM_Titre_LUP} IS NOT NULL,
      CONCAT("EC:",LEFT(${EC_FM_Titre_LUP} ,STRPOS(${EC_FM_Titre_LUP} ,"/" ) + if(STRPOS(${EC_FM_Titre_LUP} ,"/" ) = 0 , 0 , -1) ),"\n FM:",
      SUBSTR(${EC_FM_Titre_LUP},STRPOS(${EC_FM_Titre_LUP} ,"/" ) +1)),"")


      )

      ;;
  }

# Calcule une Dimension LUP MAX

  dimension: LUP_MAX {

    hidden: yes
    sql: if(${type_protection}= 'LUP', ${protection},null) ;;
  }

  dimension: Max_Test {
    sql:
      Max(${LUP_MAX});;
  }

# Calcule une measure de Taux_EFF

  measure: Taux_Eff{
    type: number
    sql: if((max(${data_pareto_v2.efficiency_rate}) IS NOT NULL) ,max(${data_pareto_v2.efficiency_rate}), null )  ;;
  }
#####################################################################" Fin de code Lookml ajoute par Baha "


}
