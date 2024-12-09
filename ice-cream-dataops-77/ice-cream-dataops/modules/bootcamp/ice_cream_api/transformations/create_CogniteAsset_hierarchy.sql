select
  cast(`externalId` as STRING) as externalId,
  cast(`name` as STRING) as name,
  cast(`description` as STRING) as description,
  if(`parentExternalId`=='' OR `parentExternalId` == null, null, node_reference('icapi_dm_space', `parentExternalId`)) as parent
from
  `ice_cream_api`.`clean_assets`;