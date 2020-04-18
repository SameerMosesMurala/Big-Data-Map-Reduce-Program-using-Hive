drop table GraphG;

create table GraphG (
  key int,
  value int)
row format delimited fields terminated by ',' stored as textfile;

load data local inpath '$G' overwrite into table GraphG;

select GraphG.key, GraphG.value
from GraphG;
