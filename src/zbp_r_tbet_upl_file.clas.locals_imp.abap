CLASS lhc_File DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR File RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR File RESULT result.

    METHODS uploadExcelData FOR MODIFY
      IMPORTING keys FOR ACTION File~uploadExcelData RESULT result.

    METHODS fields FOR DETERMINE ON MODIFY
      IMPORTING keys FOR File~fields.

ENDCLASS.

CLASS lhc_File IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD uploadExcelData.

  if 1 = 2.
  endif.

  ENDMETHOD.

  METHOD fields.

    if 1 = 2.
  endif.

  ENDMETHOD.

ENDCLASS.

CLASS lhc_FileRes DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR FileRes RESULT result.

    METHODS saveResMon FOR MODIFY
      IMPORTING keys FOR ACTION FileRes~saveResMon RESULT result.

ENDCLASS.

CLASS lhc_FileRes IMPLEMENTATION.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD saveResMon.

    if 1 = 2.
  endif.

  ENDMETHOD.

ENDCLASS.
