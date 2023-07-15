create or replace trigger "T_FOODTYPE_LOOKUP" before insert or update on "FOODTYPE_LOOKUP" for each row begin if inserting and :new."FOODTYPE_ID" is null then 
  for c1 in (select "FOODTYPE_LOOKUP_SEQ".nextval nv from dual) loop 
     :new."FOODTYPE_ID" := c1.nv;   end loop; end if; end;
/