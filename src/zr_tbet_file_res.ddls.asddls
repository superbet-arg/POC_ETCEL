@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define view entity ZR_TBET_FILE_RES
  as select from ztbet_file_det
  association to parent ZR_TBET_UPL_FILE as _file on $projection.IdUpload = _file.IdUpload and
                                                     $projection.AccdocUuid = _file.AccdocUuid 
{
//key client as Client,
  key accdoc_uuid as AccdocUuid,
  key id_upload as IdUpload,
  key bukrs as Bukrs,
  key belnr as Belnr,
  key gjahr as Gjahr,
  key buzei as Buzei,
  blart as Blart,
  bldat as Bldat,
  usnam as Usnam,
  kostl as Kostl,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed as LastChanged,  
      
  _file
}
