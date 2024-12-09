/* MAPPING_MODE_ENABLED: false */
/* {"version":1,"sourceType":"clean","mappings":[{"from":"externalId","to":"externalId","asType":"STRING"},{"from":"","to":"_type","asType":"STRUCT<`space`:STRING, `externalId`:STRING>"},{"from":"","to":"aliases","asType":"ARRAY<STRING>"},{"from":"name","to":"name","asType":"STRING"},{"from":"","to":"sourceUnit","asType":"STRING"},{"from":"","to":"sourceUpdatedUser","asType":"STRING"},{"from":"","to":"sourceUpdatedTime","asType":"TIMESTAMP"},{"from":"","to":"equipment","asType":"ARRAY<STRUCT<`space`:STRING, `externalId`:STRING>>"},{"to":"unit","asType":"STRUCT<`space`:STRING, `externalId`:STRING>"},{"from":"metadata","to":"type","asType":"STRING"},{"from":"","to":"sourceCreatedUser","asType":"STRING"},{"from":"","to":"sourceId","asType":"STRING"},{"from":"isStep","to":"isStep","asType":"BOOLEAN"},{"from":"","to":"source","asType":"STRUCT<`space`:STRING, `externalId`:STRING>"},{"from":"","to":"assets","asType":"ARRAY<STRUCT<`space`:STRING, `externalId`:STRING>>"},{"from":"description","to":"description","asType":"STRING"},{"from":"","to":"tags","asType":"ARRAY<STRING>"},{"from":"","to":"sourceCreatedTime","asType":"TIMESTAMP"},{"from":"","to":"sourceContext","asType":"STRING"}],"sourceLevel1":"_cdf","sourceLevel2":"timeseries"} */
select
  cast(`externalId` as STRING) as externalId,
  cast(`name` as STRING) as name,
  try_element_at(metadata, 'type') as type,
  cast(`isStep` as BOOLEAN) as isStep,
  cast(`description` as STRING) as description
from
  `_cdf`.`timeseries`;


  /* Second attempt */

  /* MAPPING_MODE_ENABLED: false */
/* {"version":1,"sourceType":"clean","mappings":[{"from":"externalId","to":"externalId","asType":"STRING"},{"from":"","to":"_type","asType":"STRUCT<`space`:STRING, `externalId`:STRING>"},{"from":"","to":"aliases","asType":"ARRAY<STRING>"},{"from":"name","to":"name","asType":"STRING"},{"from":"","to":"sourceUnit","asType":"STRING"},{"from":"","to":"sourceUpdatedUser","asType":"STRING"},{"from":"","to":"sourceUpdatedTime","asType":"TIMESTAMP"},{"from":"","to":"equipment","asType":"ARRAY<STRUCT<`space`:STRING, `externalId`:STRING>>"},{"to":"unit","asType":"STRUCT<`space`:STRING, `externalId`:STRING>"},{"from":"metadata","to":"type","asType":"STRING"},{"from":"","to":"sourceCreatedUser","asType":"STRING"},{"from":"","to":"sourceId","asType":"STRING"},{"from":"isStep","to":"isStep","asType":"BOOLEAN"},{"from":"","to":"source","asType":"STRUCT<`space`:STRING, `externalId`:STRING>"},{"from":"","to":"assets","asType":"ARRAY<STRUCT<`space`:STRING, `externalId`:STRING>>"},{"from":"description","to":"description","asType":"STRING"},{"from":"","to":"tags","asType":"ARRAY<STRING>"},{"from":"","to":"sourceCreatedTime","asType":"TIMESTAMP"},{"from":"","to":"sourceContext","asType":"STRING"}],"sourceLevel1":"_cdf","sourceLevel2":"timeseries"} */
select
  cast(`externalId` as STRING) as externalId,
  cast(`name` as STRING) as name,
  'numeric' as type,
  cast(`isStep` as BOOLEAN) as isStep,
  cast(`description` as STRING) as description
from
  `_cdf`.`timeseries`;