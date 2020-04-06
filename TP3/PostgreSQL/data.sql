INSERT INTO public.journee (id_journee, date_journee, type_journee) VALUES (1, '2020-03-03', 'WE');
INSERT INTO public.journee (id_journee, date_journee, type_journee) VALUES (2, '2020-03-03', 'WE');

INSERT INTO public.enfant (id_enfant, nom, prenom, classe) VALUES (1, 'Baudelet', 'Conrad', '3E');
INSERT INTO public.enfant (id_enfant, nom, prenom, classe) VALUES (2, 'Le Feyer', 'Aymeric', '3E');
INSERT INTO public.enfant (id_enfant, nom, prenom, classe) VALUES (3, 'Toto', 'Tutu', '4E');

INSERT INTO public.categorie (id_categorie, nom, typeactivite, volumehorairequotidien) VALUES (1, 'Cat1', 'Sport', 3);
INSERT INTO public.categorie (id_categorie, nom, typeactivite, volumehorairequotidien) VALUES (2, 'Cat2', 'Sport', 3);

INSERT INTO public.activite (id_activite, nom, nomreferent, id_categorie) VALUES (1, 'Act1', 'Ref1', 1);
INSERT INTO public.activite (id_activite, nom, nomreferent, id_categorie) VALUES (2, 'Act2', 'Ref2', 2);

INSERT INTO public.organisation (id_activite, id_journee, id_enfant, creneauhoraire) VALUES (1, 1, 1, '1');
INSERT INTO public.organisation (id_activite, id_journee, id_enfant, creneauhoraire) VALUES (2, 2, 2, '1');

