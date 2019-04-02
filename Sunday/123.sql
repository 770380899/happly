select * from v_administrator;
create table v_menu(

);
select * from v_menu;
delete from v_menu where id=1;
insert into v_menu values(1,'���ܹ���','icon-user','1','','');
insert into v_menu values(2,'����Ա����','icon-user','2','${pageContext.request.contextPath}/administrator/shouAllAdministrator','1'); 
insert into v_menu values(3,'Ա������','icon-user','2','${pageContext.request.contextPath}/user/shou','1');  
commit;

select * from v_menu

select *  from v_menu m 
inner join v_menu e
on m.id = e.parentId;

      
    select * from v_menu
     update v_menu set href='user/shou' where id =3 ;
     commit;
