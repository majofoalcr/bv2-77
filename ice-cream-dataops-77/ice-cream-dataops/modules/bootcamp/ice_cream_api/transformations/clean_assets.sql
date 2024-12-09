SELECT
  key as key,
  external_id AS externalId,
  IF(
    parent_external_id = ''
    OR parent_external_id IS NULL,
    '',
    parent_external_id
  ) AS parentExternalId,
  name AS name,
  json_tuple(metadata,'site','type', 'cycle time','Function', 'src', 'Machine type') AS (site, type, cycle_time, function, src, machine_type),
  get_json_object(labels,'isa95') AS isa95_tag,
  description AS description,
  'ICAPI Rest API' AS source
FROM
  `ice_cream_api`.`icapi_assets_extractor`