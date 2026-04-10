@AccessControl.authorizationCheck: #MANDATORY
@Metadata.allowExtensions: true
@ObjectModel.sapObjectNodeType.name: 'ZORDER_TRACK_D'
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_ORDER_TRACK_D
  as select from ZORDER_TRACK_D
{
  key tracking_uuid as TrackingUUID,
  order_id as OrderID,
  delivery_status as DeliveryStatus,
  current_location as CurrentLocation,
  update_timestamp as UpdateTimestamp,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.lastChangedBy: true
  last_changed_by as LastChangedBy,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt
}
