/* select *
from newschema.inspect;

select *
from newschema.building;

select *
from newschema.registered;

alter table newschema.building rename column `Building Address` to building_address;
alter table newschema.building rename column `Year Built` to year_built;
alter table newschema.registered rename column `Street Address` to street_address;
alter table newschema.registered rename column `Business Start Date` to business_start_date;
alter table newschema.registered rename column `Location Start Date` to location_start_date;
alter table newschema.registered rename column `DBA Name` to dba_name;



select i.business_id
, i.business_name
, i.business_address
, i.inspection_date
, i.inspection_score
, i.violation_description
, i.risk_category
, b.year_built
, r.location_start_date
, r.business_start_date
from newschema.inspect i
left join newschema.building b
on i.business_address = b.building_address
left join newschema.registered r
on i.business_address = r.street_address
*/


select count(*)
from newschema.inspect i
left join newschema.building b
on i.business_address = b.building_address
left join newschema.registered r
on i.business_address = r.street_address