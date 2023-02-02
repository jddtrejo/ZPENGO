class ZPGOCO_PENGO_SOAP definition
  public
  inheriting from CL_PROXY_CLIENT
  create public .

public section.

  methods CONSTRUCTOR
    importing
      !LOGICAL_PORT_NAME type PRX_LOGICAL_PORT_NAME optional
    raising
      CX_AI_SYSTEM_FAULT .
  methods CREATE_MATERIAL
    importing
      !INPUT type ZPGOCREATE_MATERIAL_SOAP_IN
    exporting
      !OUTPUT type ZPGOCREATE_MATERIAL_SOAP_OUT
    raising
      CX_AI_SYSTEM_FAULT .
  methods DISPLAY_CUSTOMER
    importing
      !INPUT type ZPGODISPLAY_CUSTOMER_SOAP_IN
    exporting
      !OUTPUT type ZPGODISPLAY_CUSTOMER_SOAP_OUT
    raising
      CX_AI_SYSTEM_FAULT .
  methods DISPLAY_MATERIAL
    importing
      !INPUT type ZPGODISPLAY_MATERIAL_SOAP_IN
    exporting
      !OUTPUT type ZPGODISPLAY_MATERIAL_SOAP_OUT
    raising
      CX_AI_SYSTEM_FAULT .
  methods DISPLAY_MATERIALIST
    importing
      !INPUT type ZPGODISPLAY_MATERIALIST_SOAP_I
    exporting
      !OUTPUT type ZPGODISPLAY_MATERIALIST_SOAP_O
    raising
      CX_AI_SYSTEM_FAULT .
  methods DISPLAY_MATERIALSTOCK
    importing
      !INPUT type ZPGODISPLAY_MATERIALSTOCK_SOA1
    exporting
      !OUTPUT type ZPGODISPLAY_MATERIALSTOCK_SOAP
    raising
      CX_AI_SYSTEM_FAULT .
  methods DISPLAY_PURCHARSEORDER
    importing
      !INPUT type ZPGODISPLAY_PURCHARSEORDER_SO1
    exporting
      !OUTPUT type ZPGODISPLAY_PURCHARSEORDER_SOA
    raising
      CX_AI_SYSTEM_FAULT .
  methods GET_PRODUCTATTRIBUTE
    importing
      !INPUT type ZPGOGET_PRODUCTATTRIBUTE_SOAP1
    exporting
      !OUTPUT type ZPGOGET_PRODUCTATTRIBUTE_SOAP
    raising
      CX_AI_SYSTEM_FAULT .
  methods LOGIN
    importing
      !INPUT type ZPGOLOGIN_SOAP_IN
    exporting
      !OUTPUT type ZPGOLOGIN_SOAP_OUT
    raising
      CX_AI_SYSTEM_FAULT .
  methods SALESORDER_UPDATE
    importing
      !INPUT type ZPGOSALESORDER_UPDATE_SOAP_IN
    exporting
      !OUTPUT type ZPGOSALESORDER_UPDATE_SOAP_OUT
    raising
      CX_AI_SYSTEM_FAULT .
  methods UPDATE_CUSTOMER
    importing
      !INPUT type ZPGOUPDATE_CUSTOMER_SOAP_IN
    exporting
      !OUTPUT type ZPGOUPDATE_CUSTOMER_SOAP_OUT
    raising
      CX_AI_SYSTEM_FAULT .
  methods UPDATE_MATERIALSTOCK
    importing
      !INPUT type ZPGOUPDATE_MATERIALSTOCK_SOAP1
    exporting
      !OUTPUT type ZPGOUPDATE_MATERIALSTOCK_SOAP
    raising
      CX_AI_SYSTEM_FAULT .
  methods UPDATE_MATERIAL_PRICE
    importing
      !INPUT type ZPGOUPDATE_MATERIAL_PRICE_SOA1
    exporting
      !OUTPUT type ZPGOUPDATE_MATERIAL_PRICE_SOAP
    raising
      CX_AI_SYSTEM_FAULT .
  methods UPDATE_MATERIAL_PRICE2
    importing
      !INPUT type ZPGOUPDATE_MATERIAL_PRICE2SOA1
    exporting
      !OUTPUT type ZPGOUPDATE_MATERIAL_PRICE2SOAP
    raising
      CX_AI_SYSTEM_FAULT .
  methods UPDATE_PURCHARSEORDER
    importing
      !INPUT type ZPGOUPDATE_PURCHARSEORDER_SOA1
    exporting
      !OUTPUT type ZPGOUPDATE_PURCHARSEORDER_SOAP
    raising
      CX_AI_SYSTEM_FAULT .
protected section.
private section.
ENDCLASS.



CLASS ZPGOCO_PENGO_SOAP IMPLEMENTATION.


  method CONSTRUCTOR.

  super->constructor(
    class_name          = 'ZPGOCO_PENGO_SOAP'
    logical_port_name   = logical_port_name
  ).

  endmethod.


  method CREATE_MATERIAL.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'CREATE_MATERIAL'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method DISPLAY_CUSTOMER.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'DISPLAY_CUSTOMER'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method DISPLAY_MATERIAL.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'DISPLAY_MATERIAL'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method DISPLAY_MATERIALIST.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'DISPLAY_MATERIALIST'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method DISPLAY_MATERIALSTOCK.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'DISPLAY_MATERIALSTOCK'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method DISPLAY_PURCHARSEORDER.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'DISPLAY_PURCHARSEORDER'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method GET_PRODUCTATTRIBUTE.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'GET_PRODUCTATTRIBUTE'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method LOGIN.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'LOGIN'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method SALESORDER_UPDATE.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'SALESORDER_UPDATE'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method UPDATE_CUSTOMER.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'UPDATE_CUSTOMER'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method UPDATE_MATERIALSTOCK.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'UPDATE_MATERIALSTOCK'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method UPDATE_MATERIAL_PRICE.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'UPDATE_MATERIAL_PRICE'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method UPDATE_MATERIAL_PRICE2.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'UPDATE_MATERIAL_PRICE2'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.


  method UPDATE_PURCHARSEORDER.

  data:
    ls_parmbind type abap_parmbind,
    lt_parmbind type abap_parmbind_tab.

  ls_parmbind-name = 'INPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>importing.
  get reference of INPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  ls_parmbind-name = 'OUTPUT'.
  ls_parmbind-kind = cl_abap_objectdescr=>exporting.
  get reference of OUTPUT into ls_parmbind-value.
  insert ls_parmbind into table lt_parmbind.

  if_proxy_client~execute(
    exporting
      method_name = 'UPDATE_PURCHARSEORDER'
    changing
      parmbind_tab = lt_parmbind
  ).

  endmethod.
ENDCLASS.
