@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_TBET_FILE_DET
  provider contract transactional_query
  as projection on ZR_TBET_FILE_DET
{
  key AccdocUuid,
  key IdUpload, 
  key Bukrs,
  key Belnr,
  key Gjahr,
  key Buzei,
  Blart,
  Bldat,
  Usnam,
  Kostl,
  LocalCreatedBy,
  LocalCreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChanged
  
}
