--articles et kaywods
select c.id_article,k.mot
from keyword k,contenir c
where k.id_keyword=c.id_keyword;
----------------

--nombre d'auteur pour chaque maladie
select m.id_maladie,m.nom_maladie,count(t.id_auteur)
from article a,Concerner c,maladie m,auteur t,ecrire e
where a.id_article = e.id_article and e.id_auteur=t.id_auteur and a.id_article=c.id_article and m.id_maladie=c.id_maladie
group by m.id_maladie,m.nom_maladie;
--having count(a.id_article)>1;
-------------

--nombre d'article par maladie
select m.id_maladie,m.nom_maladie,count(a.id_article)
from maladie m,article a,Concerner c
where a.id_article=c.id_article and m.id_maladie=c.id_maladie
group by m.id_maladie,m.nom_maladie;
--------------
--nb d'article par auteur
select t1.nom_auteur,count(a.id_article)
from auteur t1,auteur t2,article a,ecrire e
where a.id_article = e.id_article and t1.nom_auteur=t2.nom_auteur
group by t1.nom_auteur
having count(a.id_article)>1;
-------------
--noms des auteurs de chaque article
select t1.nom_auteur
from auteur t1,auteur t2
where t1.nom_auteur=t2.nom_auteur;


------------------------------------------------------------
-- insertion dans la Table: Maladie
------------------------------------------------------------
insert into Maladie values(1,'cardiovascular disease');
insert into Maladie values(2,'cancer',Null);
insert into Maladie values(3,'asthma',Null);
insert into Maladie values(4,'alzheimer',Null);
insert into Maladie values(5,'diabetes',Null);
insert into Maladie values(6,'AIDS',Null);
insert into Maladie values(7,'schizophrenia',Null);
insert into Maladie values(8,'Neurodegenerative Diseases',Null);
