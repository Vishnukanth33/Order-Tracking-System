@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZORDER_TRACK_D'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_ORDER_TRACK_D
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_ORDER_TRACK_D
  association [1..1] to ZR_ORDER_TRACK_D as _BaseEntity on $projection.TRACKINGUUID = _BaseEntity.TRACKINGUUID
{
  key TrackingUUID,
  OrderID,
  DeliveryStatus,
  CurrentLocation,
  UpdateTimestamp,
  @Semantics: {
    User.Createdby: true
  }
  CreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  CreatedAt,
  @Semantics: {
    User.Lastchangedby: true
  }
  LastChangedBy,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  _BaseEntity
}
