@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_TBET_UPL_FILE 
  provider contract transactional_query
  as projection on ZR_TBET_UPL_FILE
{
  key AccdocUuid,
  key IdUpload,
  Attachment,
  Mimetype,
  Filename,
  Status,
  ErrorLog,
  LocalCreatedBy,
  LocalCreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChanged,
//  CriticalityStatus,
//  HideExcel,
  
  _FILERES : redirected to composition child ZC_TBET_FILE_RES
}
