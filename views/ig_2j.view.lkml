view: ig_2j {
  sql_table_name: `REACT_DEV_DATA.ig_2j`
    ;;

######################################################################"Les code Lookml ajoute par Pedram "
##### Measure utilise pour Robustesse Global  cumulé à date
  measure: robustesse_global_a_date_pourcentage {
    type: number

    sql:
    {% if robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='pourcentage'  %}
    ${Taux_protege_global}
      {% elsif robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage'  %}
      ${TP_global_avc_ROB_VS}
      {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='pourcentage' %}
      ${Taux_Protection_avc_rob}
      {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage' %}
      ${TP_global_avc_ROB_mini_VS}
      {% elsif  type_de_rendu._parameter_value =='nombre' %}
      null
      {% endif %};;
    value_format: "0"

    drill_fields: [id_ig,global_incident_date, project_code, model_code, factory_manufacturing_vehicle_label_fr, engine_type, pivot_engine, engine_index,factory_manufacturing_engine_label_fr,gearbox_type,pivot_gearbox,gearbox_index,factory_manufacturing_box_label_fr,distribution_country_label_fr,delivery_region_label_fr,manufacturing_date,protection,type_protection,pimof_status,function_code_label_fr,nitg,nitg_label_fr,gq23_alertlabel,gq05_plantdesc,gq38_putinplace_date,gq50_qflabel,gq23_createddate_date,lbsquestion,lbscriticite,lbsetat,datealerte_date,lbsdirpt1,lborigineprobleme,annemois,rob_ap,lbspoletrait,datemaxserprov_date,dateapplipremsiteserprov_date,lbtypologypb,distribution_date,ig_has_drg,ig_has_fic,ig_has_icm]

  }


##### Measure utilise pour Robustesse NON PIMOF  cumulé à date
  measure: NON_PIMOF_cumule_a_date_pourcentage {
    type: number

    sql:
    {% if robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='pourcentage'  %}
   ${Tp_Non_PIMOF_sans_ROB}

      {% elsif robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage'  %}
      ${TP_NON_PIMOF_avc_ROB_VS}
      {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='pourcentage' %}
      ${Tp_Non_PIMOF_avc_ROB}
      {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage' %}
      ${TP_NON_PIMOF_avc_ROB_mini_VS}
      {% elsif  type_de_rendu._parameter_value =='nombre' %}
      null
      {% endif %};;
    value_format: "0"

    drill_fields: [id_ig,global_incident_date, project_code, model_code, factory_manufacturing_vehicle_label_fr, engine_type, pivot_engine, engine_index,factory_manufacturing_engine_label_fr,gearbox_type,pivot_gearbox,gearbox_index,factory_manufacturing_box_label_fr,distribution_country_label_fr,delivery_region_label_fr,manufacturing_date,protection,type_protection,pimof_status,function_code_label_fr,nitg,nitg_label_fr,gq23_alertlabel,gq05_plantdesc,gq38_putinplace_date,gq50_qflabel,gq23_createddate_date,lbsquestion,lbscriticite,lbsetat,datealerte_date,lbsdirpt1,lborigineprobleme,annemois,rob_ap,lbspoletrait,datemaxserprov_date,dateapplipremsiteserprov_date,lbtypologypb,distribution_date,ig_has_drg,ig_has_fic,ig_has_icm]

  }

##### Measure utilise pour Robustesse PIMOF  cumulé à date
  measure: PIMOF_cumule_a_date_pourcentage {
    type: number

    sql:
    {% if robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='pourcentage'  %}
    ${Tp_PIMOF_sans_ROB}

      {% elsif robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage'  %}
      ${Tp_PIMOF_avc_ROB_VS}

      {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='pourcentage' %}
      ${Tp_PIMOF_avc_ROB}

      {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage' %}
      ${TP_PIMOF_avc_ROB_mini_VS}
      {% elsif type_de_rendu._parameter_value =='nombre' %}
      null
      {% endif %};;
    value_format: "0"

    drill_fields: [id_ig,global_incident_date, project_code, model_code, factory_manufacturing_vehicle_label_fr, engine_type, pivot_engine, engine_index,factory_manufacturing_engine_label_fr,gearbox_type,pivot_gearbox,gearbox_index,factory_manufacturing_box_label_fr,distribution_country_label_fr,delivery_region_label_fr,manufacturing_date,protection,type_protection,pimof_status,function_code_label_fr,nitg,nitg_label_fr,gq23_alertlabel,gq05_plantdesc,gq38_putinplace_date,gq50_qflabel,gq23_createddate_date,lbsquestion,lbscriticite,lbsetat,datealerte_date,lbsdirpt1,lborigineprobleme,annemois,rob_ap,lbspoletrait,datemaxserprov_date,dateapplipremsiteserprov_date,lbtypologypb,distribution_date,ig_has_drg,ig_has_fic,ig_has_icm]

  }
##### Dimesnion  utilise pour verifier la chiox d'unitlisateur dans  Robustesse Global/PIMOF/NON PIMOF cumulé à date
  dimension: type_de_restitution_value{
    type:  string
    sql: {%if type_de_restitution._parameter_value == 'Lancement' %}
          'Lancement'
          {% elsif type_de_restitution._parameter_value == 'Vie_serie'  %}
          'vie_serie'
          {% endif %};;
  }
##### Dimesnion  utilise pour verifier la chiox d'unitlisateur dans  Robustesse Global/PIMOF/NON PIMOF cumulé à date

  dimension: type_de_rendu_value {
    type:  string
    sql: {%if type_de_rendu._parameter_value =='nombre' %}
          'Nombre'
          {% elsif type_de_rendu._parameter_value =='pourcentage'  %}
          'Pourcentage'
      {% endif %};;

  }
  ##### measure  utilise  dans  Robustesse Global/PIMOF/NON PIMOF cumulé à date

  measure: count_id_ig_pourcentage{
    type: count_distinct
    sql: ${TABLE}.id_ig ;;
    filters: [pimof_status: "no"]
  }

  ##### measure  utilise  dans  Robustesse Global/PIMOF/NON PIMOF cumulé à date

  measure: count_id_ig_pourcentage_pimof{
    type: count_distinct
    sql: ${TABLE}.id_ig ;;
    filters: [pimof_status: "yes"]
  }

  ##### Parametre de type de restitution pour choix d'utilisateur

  parameter: type_de_restitution {
    type: unquoted
    allowed_value: {
      label: "Lancement"
      value: "Lancement"
    }
    allowed_value: {
      label: "Vie_serie"
      value: "Vie_serie"
    }
  }

  # calculre nombre d'incident utiliser dans les KPI
  measure: nombre_dincident_lancement  {
    type: number
    sql:
    {% if type_de_restitution._parameter_value == 'Lancement' %}
    ${lancement}
    {% elsif type_de_restitution._parameter_value == 'Vie_serie' %}
    ${vie_serie}
    {% endif %};;

  }
  #mesure cahcer utilise pour les calcule de nombre d'incident
  measure: lancement {
    hidden: yes
    type:count_distinct
    sql: ${id_ig} ;;
    value_format_name: usd
  }
  #mesure cahcer utilise pour les calcule de nombre d'incident
  measure: vie_serie {
    hidden: yes
    type:count_distinct
    sql: ${id_ig} ;;
    filters: [global_incident_date: "2021"]
    value_format_name: usd
  }

  ##### Parametre de type de robustess pour choix d'utilisateur

  parameter: robustesse {
    type: unquoted
    allowed_value: {
      label: "Toutes Robustesse"
      value: "Toutes_Robustesse"
    }
    allowed_value: {
      label: "Robustesse mini"
      value: "Robustesse_mini"
    }
  }

  # calculre nombre d'incident proteger utiliser dans les KPI
  measure: nombre_dincident_protege  {
    type: number
    sql:
    {% if robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Lancement'   %}
    ${Taux_protege_global}
    {% elsif robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Vie_serie'  %}
    ${TP_global_avc_ROB_VS}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Lancement'  %}
    ${Taux_Protection_avc_rob}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Vie_serie'  %}
    ${TP_global_avc_ROB_mini_VS}
    {% endif %};;

  }
   #mesure cahcer utilise pour les calcule de nombre d'incident proteger

  measure: Taux_protege_global {
    hidden: yes
    type:count_distinct
    sql: ${id_ig};;
    filters: [status_Taux_protege_global: "yes"]
  }
   #mesure cahcer utilise pour les calcule de nombre d'incident proteger

  dimension: status_Taux_protege_global {
    hidden: yes
    type: yesno
    sql:  ${type_protection} = 'GQU' or ${type_protection} = 'LUP' and ${rob_ap} is not null ;;

  }
     #mesure cahcer utilise pour les calcule de nombre d'incident proteger

  measure: TP_global_avc_ROB_VS {
    hidden: yes
    type:count_distinct
    sql:  ${id_ig};;
    filters: [global_incident_year: "2021", trpi_robustness: "-NULL" ]
  }
  #mesure cahcer utilise pour les calcule de nombre d'incident proteger

  measure: Taux_Protection_avc_rob {
    hidden: yes
    type:count_distinct
    sql:  ${id_ig};;
    filters: [status_Taux_Protection_avc_rob: "yes"]
  }
  dimension: status_Taux_Protection_avc_rob {
    hidden: yes
    type:yesno
    sql: ${type_protection} = 'GQU' or  ${type_protection} = 'LUP' and ( (${pimof_status} = TRUE and ${rob_ap} = '5')  or (${pimof_status} = FALSE and  ${rob_ap} in ('3+1', '3+1+1', '3+2', '3+3', '4', '5')));;

  }
  measure: TP_global_avc_ROB_mini_VS {
    hidden: yes
    type:count_distinct
    sql:  ${id_ig};;
    filters: [status_TP_global_avc_ROB_mini_VS :"yes",global_incident_year: "2021"]
  }
  dimension: status_TP_global_avc_ROB_mini_VS {
    hidden: yes
    type:yesno
   sql: (${pimof_status} = TRUE and ${trpi_robustness} in ('5','Job observation') ) or (${trpi_robustness} in ('3+1', '3+1+1', '3+2', '3+3', '4', '5') and ${pimof_status} = FALSE) ;;

  }

  ##### Parametre de type de rendu pour choix d'utilisateur

  parameter: type_de_rendu {
    type: unquoted
    allowed_value: {
      label: "Pourcentage"
      value: "pourcentage"
    }
    allowed_value: {
      label: "Nombre"
      value: "nombre"
    }
  }

  # calculre robustesse global utiliser dans les KPI
  measure: robustesse_global_KPI {
    type: number

    sql:

    {% if robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage'  %}
    ${pourcentage_TP_global_avc_ROB_VS_KPI}
    {% elsif robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='nombre' %}
    ${TP_global_avc_ROB_VS_KPI}
   {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage' %}
      ${pourcentage_TP_global_avc_ROB_mini_VS_KPI}
      {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='nombre' %}
      ${TP_global_avc_ROB_mini_VS_KPI}
      {% elsif  type_de_restitution._parameter_value == 'Lancement'  %}
      null
      {% endif %};;
    value_format: "[=0]0;[<1]0.00%;0"

    drill_fields: [id_ig,global_incident_date, project_code, model_code, factory_manufacturing_vehicle_label_fr, engine_type, pivot_engine, engine_index,factory_manufacturing_engine_label_fr,gearbox_type,pivot_gearbox,gearbox_index,factory_manufacturing_box_label_fr,distribution_country_label_fr,delivery_region_label_fr,manufacturing_date,protection,type_protection,pimof_status,function_code_label_fr,nitg,nitg_label_fr,gq23_alertlabel,gq05_plantdesc,gq38_putinplace_date,gq50_qflabel,gq23_createddate_date,lbsquestion,lbscriticite,lbsetat,datealerte_date,lbsdirpt1,lborigineprobleme,annemois,rob_ap,lbspoletrait,datemaxserprov_date,dateapplipremsiteserprov_date,lbtypologypb,distribution_date,ig_has_drg,ig_has_fic,ig_has_icm]

  }

  #mesure cahcer utilise pour les calcule de robustesse global KPI
  measure: pourcentage_TP_global_avc_ROB_VS_KPI {
    hidden:  yes
    sql: ${TP_global_avc_ROB_VS_KPI}/NULLIF(${count_id_ig_last_year},0) ;;
  }
    #mesure cahcer utilise pour les calcule de robustesse global KPI

  measure: TP_global_avc_ROB_VS_KPI {
    hidden: yes
    type:count_distinct
    sql:  ${id_ig};;
    filters: [global_incident_year: "2020", trpi_robustness: "-NULL" ]
  }
    #mesure cahcer utilise pour les calcule de robustesse global KPI

  measure: count_id_ig_last_year{
    type: count_distinct
    sql: ${TABLE}.id_ig ;;
    filters: [global_incident_year: "2020"]
  }
    #mesure cahcer utilise pour les calcule de robustesse global KPI

  measure: pourcentage_TP_global_avc_ROB_mini_VS_KPI {
    hidden:  yes
    sql:  ${TP_global_avc_ROB_mini_VS_KPI}/NULLIF(${count_id_ig_last_year},0);;
  }
    #mesure cahcer utilise pour les calcule de robustesse global

  measure: TP_global_avc_ROB_mini_VS_KPI {
    hidden: yes
    type:count_distinct
    sql:  ${id_ig};;
    filters: [status_TP_global_avc_ROB_mini_VS :"yes",global_incident_year: "2020"]
  }



  # calcule de robustesse_GLOBAL

  measure: robustesse_global {
    type: number

    sql:
    {% if robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='pourcentage'  %}
    ${pourcentage_Taux_protege_global}
    {% elsif robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='nombre'  %}
    ${Taux_protege_global}
    {% elsif robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage'  %}
    ${pourcentage_TP_global_avc_ROB_VS}
    {% elsif robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='nombre' %}
    ${TP_global_avc_ROB_VS}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='pourcentage' %}
    ${pourcentage_Taux_Protection_avc_rob}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='nombre' %}
    ${Taux_Protection_avc_rob}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage' %}
    ${pourcentage_TP_global_avc_ROB_mini_VS}
   {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='nombre' %}
    ${TP_global_avc_ROB_mini_VS}
    {% endif %};;
    value_format: "[=0]0;[<1]0.00%;0"

    drill_fields: [id_ig,global_incident_date, project_code, model_code, factory_manufacturing_vehicle_label_fr, engine_type, pivot_engine, engine_index,factory_manufacturing_engine_label_fr,gearbox_type,pivot_gearbox,gearbox_index,factory_manufacturing_box_label_fr,distribution_country_label_fr,delivery_region_label_fr,manufacturing_date,protection,type_protection,pimof_status,function_code_label_fr,nitg,nitg_label_fr,gq23_alertlabel,gq05_plantdesc,gq38_putinplace_date,gq50_qflabel,gq23_createddate_date,lbsquestion,lbscriticite,lbsetat,datealerte_date,lbsdirpt1,lborigineprobleme,annemois,rob_ap,lbspoletrait,datemaxserprov_date,dateapplipremsiteserprov_date,lbtypologypb,distribution_date,ig_has_drg,ig_has_fic,ig_has_icm]

  }



  #les dimension et measure  cacher utiliser dans les robustesse_GLOBAL
  measure: pourcentage_TP_global_avc_ROB_mini_VS {
    hidden:  yes
    sql:  ${TP_global_avc_ROB_mini_VS}/NULLIF(${count_id_ig_this_year},0);;
  }

  measure: pourcentage_Taux_Protection_avc_rob {
    hidden:  no

    sql:${Taux_Protection_avc_rob}/NULLIF(${count_id_ig},0) ;;
  }

  measure: pourcentage_Taux_protege_global {
    hidden:  no
    sql: ${Taux_protege_global}/NULLIF(${count_id_ig},0) ;;
  }

  measure: pourcentage_TP_global_avc_ROB_VS {
    hidden:  yes
    sql: ${TP_global_avc_ROB_VS}/NULLIF(${count_id_ig_this_year},0) ;;
  }

  measure: count_id_ig{
    type: count_distinct
    sql: ${TABLE}.id_ig ;;
  }
  measure: count_id_ig_this_year{
    type: count_distinct
    sql: ${TABLE}.id_ig ;;
    filters: [global_incident_year: "2021"]
  }

  # calcule de robustesse_PIMOF_KPI

  measure: robustesse_PIMOF_KPI {
    type: number

    sql:

    {% if robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage'  %}
    ${pourcentage_Tp_PIMOF_avc_ROB_VS_KPI}
    {% elsif robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='nombre' %}
    ${Tp_PIMOF_avc_ROB_VS_KPI}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage' %}
    ${pourcentage_TP_PIMOF_avc_ROB_mini_VS}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='nombre' %}
    ${TP_PIMOF_avc_ROB_mini_VS_KPI}
        {% elsif  type_de_restitution._parameter_value == 'Lancement'  %}
null
    {% endif %};;
    value_format: "[=0]0;[<1]0.00%;0"
    drill_fields: [id_ig,global_incident_date, project_code, model_code, factory_manufacturing_vehicle_label_fr, engine_type, pivot_engine, engine_index,factory_manufacturing_engine_label_fr,gearbox_type,pivot_gearbox,gearbox_index,factory_manufacturing_box_label_fr,distribution_country_label_fr,delivery_region_label_fr,manufacturing_date,protection,type_protection,pimof_status,function_code_label_fr,nitg,nitg_label_fr,gq23_alertlabel,gq05_plantdesc,gq38_putinplace_date,gq50_qflabel,gq23_createddate_date,lbsquestion,lbscriticite,lbsetat,datealerte_date,lbsdirpt1,lborigineprobleme,annemois,rob_ap,lbspoletrait,datemaxserprov_date,dateapplipremsiteserprov_date,lbtypologypb,distribution_date,ig_has_drg,ig_has_fic,ig_has_icm]


  }
  #les dimension et measure  cacher utiliser dans les robustesse_PIMOF_KPI
  measure: pourcentage_Tp_PIMOF_avc_ROB_VS_KPI{
    sql:   ${Tp_PIMOF_avc_ROB_VS_KPI}/NULLIF(${count_id_ig_PIMOF_last_year},0);;
    hidden:  yes
  }
  measure: Tp_PIMOF_avc_ROB_VS_KPI {
    hidden: yes
    type:count_distinct
    sql:  ${id_ig};;
    filters: [status_TP_PIMOF_avc_ROB_VS :"yes", global_incident_year: "2020"]
  }
  measure: count_id_ig_PIMOF_last_year{
    type: count_distinct
    sql: ${TABLE}.id_ig ;;
    filters: [pimof_status: "yes",global_incident_year: "2020"]
  }
  measure: pourcentage_TP_PIMOF_avc_ROB_mini_VS_KPI{
    sql:    ${TP_PIMOF_avc_ROB_mini_VS_KPI}/NULLIF(${count_id_ig_PIMOF_last_year},0);;
    hidden:  yes
  }
  measure: TP_PIMOF_avc_ROB_mini_VS_KPI{
    hidden: yes
    type:count_distinct
    sql:  ${id_ig};;
    filters: [status_TP_PIMOF_avc_ROB_mini_VS :"yes", global_incident_year: "2020"]
  }

  # calcule de robustesse_PIMOF

  measure: robustesse_PIMOF {
    type: number

    sql:
    {% if robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='pourcentage'  %}
    ${pourcentage_Tp_PIMOF_sans_ROB}
    {% elsif robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='nombre'  %}
    ${Tp_PIMOF_sans_ROB}
    {% elsif robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage'  %}
    ${pourcentage_Tp_PIMOF_avc_ROB_VS}
    {% elsif robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='nombre' %}
    ${Tp_PIMOF_avc_ROB_VS}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='pourcentage' %}
    ${pourcentage_Tp_PIMOF_avc_ROB}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='nombre' %}
    ${Tp_PIMOF_avc_ROB}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage' %}
    ${pourcentage_TP_PIMOF_avc_ROB_mini_VS}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='nombre' %}
    ${TP_PIMOF_avc_ROB_mini_VS}
    {% endif %};;
    value_format: "[=0]0;[<1]0.00%;0"
    drill_fields: [id_ig,global_incident_date, project_code, model_code, factory_manufacturing_vehicle_label_fr, engine_type, pivot_engine, engine_index,factory_manufacturing_engine_label_fr,gearbox_type,pivot_gearbox,gearbox_index,factory_manufacturing_box_label_fr,distribution_country_label_fr,delivery_region_label_fr,manufacturing_date,protection,type_protection,pimof_status,function_code_label_fr,nitg,nitg_label_fr,gq23_alertlabel,gq05_plantdesc,gq38_putinplace_date,gq50_qflabel,gq23_createddate_date,lbsquestion,lbscriticite,lbsetat,datealerte_date,lbsdirpt1,lborigineprobleme,annemois,rob_ap,lbspoletrait,datemaxserprov_date,dateapplipremsiteserprov_date,lbtypologypb,distribution_date,ig_has_drg,ig_has_fic,ig_has_icm]

  }

  #les dimension et measure  cacher utiliser dans les robustesse_PIMOF
  measure: pourcentage_Tp_PIMOF_sans_ROB{
    sql:    ${Tp_PIMOF_sans_ROB}/NULLIF(${count_id_ig_PIMOF},0);;
    hidden:  yes
  }

  measure: pourcentage_Tp_PIMOF_avc_ROB_VS{
    sql:   ${Tp_PIMOF_avc_ROB_VS}/NULLIF(${count_id_ig_PIMOF_this_year},0);;
    hidden:  yes
  }
  measure: pourcentage_Tp_PIMOF_avc_ROB{
    sql:    ${Tp_PIMOF_avc_ROB}/NULLIF(${count_id_ig_PIMOF},0);;
    hidden:  yes
  }

  measure: pourcentage_TP_PIMOF_avc_ROB_mini_VS{
    sql:    ${TP_PIMOF_avc_ROB_mini_VS}/NULLIF(${count_id_ig_PIMOF_this_year},0);;
    hidden:  yes
  }
  measure: Tp_PIMOF_sans_ROB {
    hidden: yes
    type:count_distinct
    sql:  ${id_ig};;
    filters: [status_Tp_PIMOF_sans_ROB :"yes"]
  }
  dimension: status_Tp_PIMOF_sans_ROB {
    hidden: yes
    type:yesno
    sql:(${pimof_status} = TRUE and ${type_protection} = 'GQU') or  (${type_protection} = 'LUP' and  ${pimof_status} = TRUE and ${rob_ap} is not null);;

  }

  measure: Tp_PIMOF_avc_ROB_VS {
    hidden: yes
    type:count_distinct
    sql:  ${id_ig};;
    filters: [status_TP_PIMOF_avc_ROB_VS :"yes", global_incident_year: "2021"]
  }
  dimension: status_TP_PIMOF_avc_ROB_VS {
    hidden: yes
    type:yesno
    sql:(${pimof_status} = TRUE and ${trpi_robustness} is not null);;

  }
  measure: count_id_ig_PIMOF_this_year{
    type: count_distinct
    sql: ${TABLE}.id_ig ;;
    filters: [pimof_status: "yes",global_incident_year: "2021"]
  }
  measure: count_id_ig_PIMOF{
    hidden: yes
    type: count_distinct
    sql: ${TABLE}.id_ig ;;
    filters: [pimof_status: "yes"]
  }
  measure: Tp_PIMOF_avc_ROB{
    hidden: yes
    type:count_distinct
    sql:  ${id_ig};;
    filters: [status_Tp_PIMOF_avc_ROB :"yes"]
  }
  dimension: status_Tp_PIMOF_avc_ROB {
    hidden: yes
    type:yesno
    sql:(${pimof_status} = TRUE and ${type_protection} = 'GQU') or  (${type_protection} = 'LUP' and  (${pimof_status} = TRUE and ${rob_ap} = '5'));;

  }
  measure: TP_PIMOF_avc_ROB_mini_VS{
    hidden: yes
    type:count_distinct
    sql:  ${id_ig};;
    filters: [status_TP_PIMOF_avc_ROB_mini_VS :"yes", global_incident_year: "2021"]
  }
  dimension: status_TP_PIMOF_avc_ROB_mini_VS {
    hidden: yes
    type:yesno
    sql:(${pimof_status} = TRUE and ${trpi_robustness} in ('5','Job observation') );;

  }

  # calcule de robustesse_NON_PIMOF_KPI
  measure: robustesse_NON_PIMOF_KPI {
    type: number
    value_format: "[=0]0;[<1]0.00%;0"

    sql:

    {% if robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage'  %}
    ${pourcentage_TP_NON_PIMOF_avc_ROB_VS_KPI}
    {% elsif robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='nombre' %}
    ${TP_NON_PIMOF_avc_ROB_VS_KPI}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage' %}
    ${pourcentage_TP_NON_PIMOF_avc_ROB_mini_VS}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='nombre' %}
    ${TP_NON_PIMOF_avc_ROB_mini_VS}
    {% elsif   type_de_restitution._parameter_value == 'Lancement' %}
null
    {% endif %};;

    drill_fields: [id_ig,global_incident_date, project_code, model_code, factory_manufacturing_vehicle_label_fr, engine_type, pivot_engine, engine_index,factory_manufacturing_engine_label_fr,gearbox_type,pivot_gearbox,gearbox_index,factory_manufacturing_box_label_fr,distribution_country_label_fr,delivery_region_label_fr,manufacturing_date,protection,type_protection,pimof_status,function_code_label_fr,nitg,nitg_label_fr,gq23_alertlabel,gq05_plantdesc,gq38_putinplace_date,gq50_qflabel,gq23_createddate_date,lbsquestion,lbscriticite,lbsetat,datealerte_date,lbsdirpt1,lborigineprobleme,annemois,rob_ap,lbspoletrait,datemaxserprov_date,dateapplipremsiteserprov_date,lbtypologypb,distribution_date,ig_has_drg,ig_has_fic,ig_has_icm]


  }
  #les dimension et measure  cacher utiliser dans les robustesse_NON_PIMOF_KPI

  measure: pourcentage_TP_NON_PIMOF_avc_ROB_VS_KPI{
    sql:    ${TP_NON_PIMOF_avc_ROB_VS_KPI}/NULLIF(${count_id_ig_NON_PIMOF_last_year},0);;
    hidden:  yes
  }
  measure: TP_NON_PIMOF_avc_ROB_VS_KPI{
    type:count_distinct
    sql:  ${id_ig};;
    filters: [status_TP_NON_PIMOF_avc_ROB_VS:"yes",global_incident_year: "2020" ]
  }
  measure: count_id_ig_NON_PIMOF_last_year{
    type: count_distinct
    sql: ${TABLE}.id_ig ;;
    filters: [pimof_status: "no",global_incident_year: "2020"]
  }
  measure: pourcentage_TP_NON_PIMOF_avc_ROB_mini_VS_KPI{
    sql:      ${TP_NON_PIMOF_avc_ROB_mini_VS_KPI}/NULLIF(${count_id_ig_NON_PIMOF_last_year},0);;
    hidden:  yes
  }
  measure: TP_NON_PIMOF_avc_ROB_mini_VS_KPI{
    type:count_distinct
    sql:  ${id_ig};;
    filters: [status_TP_NON_PIMOF_avc_ROB_mini_VS :"yes", global_incident_year: "2020"]
  }

# calcule de robustesse_NON_PIMOF
  measure: robustesse_NON_PIMOF {
    type: number
    value_format: "[=0]0;[<1]0.00%;0"
    sql:
    {% if robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='pourcentage'  %}
    ${pourcentage_Tp_Non_PIMOF_sans_ROB}
    {% elsif robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='nombre'  %}
    ${Tp_Non_PIMOF_sans_ROB}
    {% elsif robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage'  %}
    ${pourcentage_TP_NON_PIMOF_avc_ROB_VS}
    {% elsif robustesse._parameter_value == 'Toutes_Robustesse' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='nombre' %}
    ${TP_NON_PIMOF_avc_ROB_VS}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='pourcentage' %}
    ${pourcentage_Tp_Non_PIMOF_avc_ROB}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Lancement' and  type_de_rendu._parameter_value =='nombre' %}
    ${Tp_Non_PIMOF_avc_ROB}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='pourcentage' %}
    ${pourcentage_TP_NON_PIMOF_avc_ROB_mini_VS}
    {% elsif robustesse._parameter_value == 'Robustesse_mini' and  type_de_restitution._parameter_value == 'Vie_serie' and  type_de_rendu._parameter_value =='nombre' %}
    ${TP_NON_PIMOF_avc_ROB_mini_VS}
    {% endif %};;

    drill_fields: [id_ig,global_incident_date, project_code, model_code, factory_manufacturing_vehicle_label_fr, engine_type, pivot_engine, engine_index,factory_manufacturing_engine_label_fr,gearbox_type,pivot_gearbox,gearbox_index,factory_manufacturing_box_label_fr,distribution_country_label_fr,delivery_region_label_fr,manufacturing_date,protection,type_protection,pimof_status,function_code_label_fr,nitg,nitg_label_fr,gq23_alertlabel,gq05_plantdesc,gq38_putinplace_date,gq50_qflabel,gq23_createddate_date,lbsquestion,lbscriticite,lbsetat,datealerte_date,lbsdirpt1,lborigineprobleme,annemois,rob_ap,lbspoletrait,datemaxserprov_date,dateapplipremsiteserprov_date,lbtypologypb,distribution_date,ig_has_drg,ig_has_fic,ig_has_icm]


  }



#les dimension et measure  cacher utiliser dans les robustesse_NON_PIMOF

  measure: pourcentage_Tp_Non_PIMOF_sans_ROB{
    sql:    ${Tp_Non_PIMOF_sans_ROB}/NULLIF(${count_id_ig_NON_PIMOF},0);;
    hidden:  yes
  }
  measure: pourcentage_TP_NON_PIMOF_avc_ROB_VS{
    sql:    ${TP_NON_PIMOF_avc_ROB_VS}/NULLIF(${count_id_ig_NON_PIMOF_this_year},0);;
    hidden:  yes
  }

  measure: pourcentage_Tp_Non_PIMOF_avc_ROB{
    sql:      ${Tp_Non_PIMOF_avc_ROB}/NULLIF(${count_id_ig_NON_PIMOF_this_year},0);;
    hidden:  yes
  }

  measure: pourcentage_TP_NON_PIMOF_avc_ROB_mini_VS{
    sql:      ${TP_NON_PIMOF_avc_ROB_mini_VS}/NULLIF(${count_id_ig_NON_PIMOF_this_year},0);;
    hidden:  yes
  }

  measure: Tp_Non_PIMOF_sans_ROB{
    type:count_distinct
    sql:  ${id_ig};;
    filters: [status_Tp_Non_PIMOF_sans_ROB :"yes" ]
  }
  dimension: status_Tp_Non_PIMOF_sans_ROB {
    hidden: yes
    type:yesno

    sql:(${pimof_status} = FALSE  and ${type_protection} = 'GQU') or  (${type_protection} = 'LUP' and  (${pimof_status} = FALSE  and ${rob_ap} is not null));;

  }

  measure: count_id_ig_NON_PIMOF{
    type: count_distinct
    sql: ${TABLE}.id_ig ;;
    filters: [pimof_status: "no"]
  }

  measure: TP_NON_PIMOF_avc_ROB_VS{
    type:count_distinct
    sql:  ${id_ig};;
    filters: [status_TP_NON_PIMOF_avc_ROB_VS:"yes",global_incident_year: "2021" ]
  }
  dimension: status_TP_NON_PIMOF_avc_ROB_VS {
    hidden: yes
    type:yesno
    sql:(${pimof_status} = FALSE  and ${trpi_robustness} is not null);;

  }

  measure: count_id_ig_NON_PIMOF_this_year{
    type: count_distinct
    sql: ${TABLE}.id_ig ;;
    filters: [pimof_status: "no",global_incident_year: "2021"]
  }
  measure: Tp_Non_PIMOF_avc_ROB{
    type:count_distinct
    sql:  ${id_ig};;
    filters: [status_Tp_Non_PIMOF_avc_ROB :"yes" ]
  }
  dimension: status_Tp_Non_PIMOF_avc_ROB {
    hidden: yes
    type:yesno

    sql: (${pimof_status} = FALSE and ${type_protection} = 'GQU') or  (${type_protection} = 'LUP' and ${pimof_status} = FALSE and ${rob_ap} in ('3+1', '3+1+1', '3+2', '3+3', '4', '5'));;

  }
  measure: TP_NON_PIMOF_avc_ROB_mini_VS{
    type:count_distinct
    sql:  ${id_ig};;
    filters: [status_TP_NON_PIMOF_avc_ROB_mini_VS :"yes", global_incident_year: "2021"]
  }
  dimension: status_TP_NON_PIMOF_avc_ROB_mini_VS {
    hidden: yes
    type:yesno
    sql: ${pimof_status} = FALSE and ${trpi_robustness} in ('3+1', '3+1+1', '3+2', '3+3', '4', '5');;

  }

  # paramter nature d'incident  pour les choix d'utilisateur

  parameter: nature_d_incident {
    suggestions: ["All","DRG","FIC","D&F","DOF"]
    default_value: "ALL"
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
  dimension: annemois {
    type: number
    sql: ${TABLE}.annemois ;;
  }
  dimension: billing_status {
    type: number
    sql: ${TABLE}.billing_status ;;
  }

  dimension: status_drg {
    hidden: yes
    type: yesno
    sql:ig_has_drg = TRUE and ${TABLE}.billing_status <> 4  ;;
  }
  dimension: status_fic {
    hidden: yes
    type: yesno
    sql: ig_has_fic = TRUE;;
  }
  dimension: status_DandF {
    hidden: yes
    type: yesno
    sql:  (${TABLE}.ig_has_drg = TRUE and ${TABLE}.billing_status <> 4 and ${TABLE}.ig_has_fic = TRUE);;
  }
  dimension: status_DOF {
    hidden: yes
    type: yesno
    sql:   ( (${TABLE}.ig_has_fic = TRUE) or (${TABLE}.ig_has_drg = TRUE and ${TABLE}.billing_status <> 4) );;
  }

  # paramter garantie  pour les choix d'utilisateur
  parameter: garantie_year {
    suggestions: ["1 year","2 years ","3 years"]
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
  dimension: Garantie_3_ans{
    type: yesno
    sql: ${TABLE}.warranty_3  ;;
  }
  dimension: Garantie_2_ans {
    type: yesno
    sql: ${TABLE}.warranty_2 ;;
  }
  dimension: Garantie_1_ans {
    type: yesno
    sql: ${TABLE}.warranty_1 ;;
  }

  # paramter date granularity pour les choix d'utilisateur
  parameter: date_granularity {
    type: unquoted
    allowed_value: {
      label: "Week"
      value: "week"
    }
    allowed_value: {
      label: "Month"
      value: "month"
    }
    allowed_value: {
      label: "Year"
      value: "year"
    }
  }

  # application de choix de garanularity de date sur les look
  dimension: date {
    sql:
    {% if date_granularity._parameter_value == 'week' %}
      ${global_incident_week}
    {% elsif date_granularity._parameter_value == 'month' %}
      ${global_incident_month}
    {% elsif date_granularity._parameter_value == 'year' %}
      ${global_incident_year}
    {% endif %};;
  }

#####################################################################" Fin de code Lookml ajoute par Pedram "

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

  dimension: delivery_region_label_fr {
    type: string
    sql: ${TABLE}.delivery_region_label_fr ;;
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

  dimension: engine_index {
    type: number
    sql: ${TABLE}.engine_index ;;
  }

  dimension: engine_type {
    type: string
    sql: ${TABLE}.engine_type ;;
  }

  dimension: expenditure_code {
    type: string
    sql: ${TABLE}.expenditure_code ;;
  }

  dimension: factory_manufacturing_box_label_fr {
    type: string
    sql: ${TABLE}.factory_manufacturing_box_label_fr ;;
  }

  dimension: factory_manufacturing_engine_label_fr {
    type: string
    sql: ${TABLE}.factory_manufacturing_engine_label_fr ;;
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

  dimension: gq50_qflabel {
    type: string
    sql: ${TABLE}.gq50_qflabel ;;
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

  dimension: lbspoletrait {
    type: string
    sql: ${TABLE}.lbspoletrait ;;
  }

  dimension: lbsquestion {
    type: string
    sql: ${TABLE}.lbsquestion ;;
  }

  dimension: lbtypologypb {
    type: string
    sql: ${TABLE}.lbtypologypb ;;
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
    group_label: "Incident"

  }

  dimension: model_code {
    type: string
    sql: ${TABLE}.model_code ;;
  }

  dimension: nitg {
    type: string
    sql: ${TABLE}.nitg ;;
    group_label: "Incident"

  }

  dimension: nitg_label_fr {
    type: string
    sql: ${TABLE}.nitg_label_fr ;;
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
  dimension: status_pimof_status {
    type: string
    sql: ${TABLE}.pimof_status ;;
  }
  dimension: pimof_status {
    type: yesno
    sql: ${TABLE}.pimof_status ;;
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

  dimension: repair_dealer_country {
    type: string
    sql: ${TABLE}.repair_dealer_country ;;
  }

  dimension: repair_dealer_country_label_fr {
    type: string
    sql: ${TABLE}.repair_dealer_country_label_fr ;;
  }

  dimension: rob_ap {
    type: string
    sql: ${TABLE}.ROB_AP ;;
  }

  dimension: trpi_customer_effect {
    type: string
    sql: ${TABLE}.trpi_customer_effect ;;
  }

  dimension_group: trpi_definitive_solution {
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
    sql: ${TABLE}.trpi_definitive_solution_date ;;
  }

  dimension_group: trpi_immediate_solution {
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
    sql: ${TABLE}.trpi_immediate_solution_date ;;
  }

  dimension: trpi_protection {
    type: number
    sql: ${TABLE}.trpi_protection ;;
  }

  dimension: trpi_ragp_id {
    type: number
    sql: ${TABLE}.trpi_ragp_id ;;
  }

  dimension: trpi_robustness {
    type: string
    sql: ${TABLE}.trpi_robustness ;;
  }

  dimension: trpi_transfer_ic {
    type: number
    sql: ${TABLE}.trpi_transfer_ic ;;
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
    drill_fields: []
  }

}
