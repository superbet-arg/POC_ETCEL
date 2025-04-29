@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_TBET_UPL_FILE
  as select from ztbet_upl_file as _file
  composition [0..*] of ZR_TBET_FILE_RES as _FILERES


{
  key accdoc_uuid                                                                                        as AccdocUuid,
  key id_upload                                                                                          as IdUpload,
      @Semantics.largeObject:
      { mimeType: 'MimeType',
      fileName: 'Filename',
      acceptableMimeTypes: [ 'text/csv' ],
      contentDispositionPreference: #INLINE } // This will store the File into our table
      attachment                                                                                         as Attachment,
      @Semantics.mimeType: true
      mimetype                                                                                           as Mimetype,
      filename                                                                                           as Filename,
      status                                                                                             as Status,
//      cast( case when _file.filename is initial and _file.status is initial then 'File Not Uploaded'
//               when _file.filename is not initial and  _file.status is initial  then 'File Uploaded'
//               when _file.filename is initial then 'File Not Uploaded'
//               when  _file.status is not initial then 'File Processed' else ' ' end as abap.char( 20 ) ) as FileStatus,
//      cast( case when _file.filename is initial and _file.status is initial then '1'
//                 when _file.filename is not initial and  _file.status is initial  then '2'
//                 when _file.filename is initial then '1'
//                 when  _file.status is not initial then '3' else ' ' end as abap.char( 1 ) )             as CriticalityStatus,
//      cast( case when _file.filename is not initial then ' ' else 'X' end as boolean preserving type  )  as HideExcel,

      error_log                                                                                          as ErrorLog,
      @Semantics.user.createdBy: true
      local_created_by                                                                                   as LocalCreatedBy,
      @Semantics.systemDateTime.createdAt: true
      local_created_at                                                                                   as LocalCreatedAt,
      @Semantics.user.localInstanceLastChangedBy: true
      local_last_changed_by                                                                              as LocalLastChangedBy,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at                                                                              as LocalLastChangedAt,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed                                                                                       as LastChanged,
      
      _FILERES

}
