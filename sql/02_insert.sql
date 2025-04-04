INSERT INTO IMP_Service (SER_Libelle) VALUES ('Site Web + Hebergement + Nom de Domaine');
INSERT INTO IMP_Service (SER_Libelle) VALUES ('Site Web + Hebergement');
INSERT INTO IMP_Service (SER_Libelle) VALUES ('Site Web');

INSERT INTO IMP_Service (SER_Libelle) VALUES ('Plugin Minecraft');
INSERT INTO IMP_Service (SER_Libelle) VALUES ('Mod Minecraft');

INSERT INTO IMP_service (SER_Libelle) VALUES ('Carte de Visite');
INSERT INTO imp_service (SER_Libelle) VALUES ('Gestion Image Entreprise Sur Internet');

INSERT INTO IMP_Client (CLI_ID, CLI_Nom, CLI_Prenom, CLI_Avatar, CLI_Email, CLI_Numero) VALUES (0,"InvasionZ", "",  "/assets/img/user/0.png",  "InvasionZ@invasionz.fr", "0");

INSERT INTO imp_type_facturation (TYPF_Libelle) VALUES ('Mensuel');
INSERT INTO imp_type_facturation (TYPF_Libelle) VALUES ('Annuel');
INSERT INTO imp_type_facturation (TYPF_Libelle) VALUES ('One Shot');

INSERT INTO imp_commande (COM_ID, SER_ID, COM_Libelle, COM_DATE_FACTURATION, CLI_ID, COM_Facturation, TYPF_ID) VALUES(1, 3, "Admin Panel InvasionZ", str_to_date('16/01/2025', '%d/%m/%Y'), 1, 60, 3);
INSERT INTO imp_commande (COM_ID, SER_ID, COM_Libelle, COM_DATE_FACTURATION, CLI_ID,  COM_Facturation, TYPF_ID) VALUES(2, 4, "Plugin Log", str_to_date('16/01/2025', '%d/%m/%Y'), 1, 60, 3);
INSERT INTO imp_commande (COM_ID, SER_ID, COM_Libelle, COM_DATE_FACTURATION, CLI_ID, COM_Facturation, TYPF_ID) VALUES(3, 5, "Plugin Virus", str_to_date('04/12/2024', '%d/%m/%Y'), 1, 25, 3);
INSERT INTO imp_commande (COM_ID, SER_ID, COM_Libelle, COM_DATE_FACTURATION, CLI_ID, COM_Facturation, TYPF_ID) VALUES(4, 6, "Plugin Food", str_to_date('12/12/2024', '%d/%m/%Y'), 1, 25, 3);

INSERT INTO imp_avis(COM_ID, AVI_Avis, AVI_Note) VALUES (1, "Site de qualité, bien conçu et responsive, parfait pour gérer notre clientèle facilement ! Prestataire attentif, efficace et répondant parfaitement aux attentes.", 5);
INSERT INTO imp_avis(COM_ID, AVI_Avis, AVI_Note) VALUES (2, "Plugin de qualité, relié à une base de données remarquablement conçue. Cet outil transforme notre manière de travailler de façon innovante, simplement parfait", 5);
INSERT INTO imp_avis(COM_ID, AVI_Avis, AVI_Note) VALUES (3, "Première commande, un plugin petit mais efficace, avec un prix attractif et une réalisation rapide. Nous retravaillerons avec ce prestataire et le recommandons vivement.", 5);
INSERT INTO imp_avis(COM_ID, AVI_Avis, AVI_Note) VALUES (4, "Un second plugin cette fois basé sur l’initiative et les compétences du prestataire, avec des consignes techniques limitées mais un résultat parfaitement abouti.", 5);


INSERT INTO imp_carte(CAR_ID, CAR_PREFIX, CAR_PRENOM, CAR_NOM, CAR_COMPANY_NAME, CAR_POSTE, CAR_WEBSITE, CAR_MAIL, CAR_PHONE, CAR_NOTES, CAR_SUFFIX, CAR_IMAGE) VALUES ("322d1b0e-1188-4459-801f-cd8e280e14fd", "Mr.", "Arthur", "SERRET", "Improvz", "CEO", "https://improvz.fr", "serret.arthur@improvz.fr", "+33652192842", "", " - Web Services", "iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAABmBJREFUWEftln1wFOUdx7/77LNv954cJJBkzBgHtMm0gBYpDsY0EwGrZhxmRDsq4hDbWqodkWllbB2myEynLR3LOFSrwfqGlAqKQNNCBEQ6GEIp5BpETTCVXIDLXXK5273dvd19ns5J7dCacCH9g398Zvaf3efls9/fy/cRcJmHcJnPx5cA/68ChfWFh000lMUAxAZAo4DoAh4ANwGwMCBOAqZENX+zZbL4ZphvXAgwDygprNkPJIuBjQVAlgOzK4jaEgyq3yBgfnBmCkRIua5n2Zbp44xPEzR/NAt67Igx0tgGZJqA8HRR+1ZQ9a3IuOahd+3cyhNA/mIQowLUAoGlk6v/HNH1GxTBEYhgQ+AMEBgc0+OiJgmWAAyZDnOpembAtm4D4AsJ8hN+QhshEnXINc/GmNfYDnxwyQCFuH5XKrvv2rKS9V4mOUAcfUgS7ZCXxzTCoJoizAEBh20PbcTFfhlo0qjysErlMifvwCI8nXDt7X8DnuwETk8EAAUVZkG5kcHuDAIjEaDmCqBdJqg6zbDzCHBPHPDmAz8NC1hBqSrlBcHKMLbvU9f+VTdwsJj8BbBiSfgZ/HWAtBBYXA36e03VyMdWdsXPgPX3AzfXyHSLDIR1zs+dcbw1ncCmGDBcLPk+/14U4N5FC6YuX7Dozp5XtjwS7zh6lSjLZsIwbvkl9HcfUEpX1tD8L4hj8ESet54EHv8LMDTewy+qQEVFhW/Vo6uuv71p4fL0h70l+za23mSPpKhB2M57W7634dZld++tpqXfnKF6r0dcI0K4Z+YYP5hy0NoN7D4IpAHwYjBjKrB16/bHpl8z8ynZpSrLGIiILjRFhM6clCPQRMYWPvo01tWR6mhvHux6/3qjr4/kh0cgMtFRKqu7Km+q3/an453P/rG7+6KKjAZAboFy5Y/bdm9QaqbfzCwqDJ4dQCiqwXV0eFYe/vAk5CAjGg5BMRPcl4ij5+3t/e+0biz1Wa4fkoScL2xX1d+w9ofbNq+9WKf8AsBcQJtbcfVbi196uSlZVkEcl0LP5SD6XKiKCE0QkdEteEoYqXQKxMvia37F6P3tc3e1v/Q7YwrwhALSqEsaqVs4P/ajHW/Wp8+HY9TxBYAGQK2rnL5z/rqnGz8gspB2RaSzGUSCIsqjEQQ0H7iogKlh5GwLEjFRy5zBtu88+AD+cXyuCvduHajxRScJas1V+9/o7LitCzDGDQCAtsyY++R96599vF8JSnHdQiozAh9x4FckeJ4L2xPAlQDyngNVymMWFby371lqhc584uNwBMEn8craWb3HevuWHh9OdFPQuiNw38d5P/mvMWoSNjc3Vzy6+pnDSa5WDudtWJ6NoEKhyARUpBhKZ5HzAM49CG4GNaaBPT94DP7EOS8Do3/mjfNiFrSntuze+kkpfD8HaNMA7AePwt79v5Uxphm9sOPgRm1y1ZIM84Rc3gHhDE7eAuccGd2AqvkRDKgIKoB0+jQ/8ptnDjl9pzbfsej2wWRy8PDzmzayAIK/niRpzYwSEmf2ri57+NuDgH6hBGOW4ZrWl5eVT6vbEB/OygPJNAzTRlVVFSRJRiDghyJR+GUJ3HGg5DJcP3Hs6TlV5bv+uvUPJ7a9+urUGqqsC1Kt3naIkPKck2fgthyCeWg8CnwGNbu2tvyhn6zeK1ZN+0q/7sB0GLKGDUIIbDOLyaUhlAUCmKxokKwsD3hm7IU1q+8823FgzlSBrS6VxCsZE/iQyTsGkX9oH9A1WmMaTQGtDtDqgsqq2nkLHpmx7GE5NuLAYBSqFjr/9zJBeUiFZAwhauZ4rrf3RGz/vh1/f6/9q6KRaaDE83ui5cZz2Alg5V7g1FhdcTQA+X6C5ZWStJaXTNFKmu8ambl4CTOpFh7KWoKiKCB5k4eYTQaOduDknjae+fhDk+gW5a4pOcjDU/hwyjGe67Gw7iSQuiQ7ng/4r5MCuyKyWB83zHP90bLvNyxpiYeuuXq27gkSM/PGP7uOl3z0zp47wqZxbcDKyTANEInCFXkuDfu9RC63LgEcmJAdFzrhPC26yUdZ46ns8MpXgBcLd8ELrLtgMKQOiFwB/9clGHOiWmlJ0swkTbgH+oCuHiA7HiMayw3FW4FqWRIbYo73Wg9gF3O0f8MVdb7R9hmrDD9/P6FNxwH8nylFLySXstlE5n4JcNkV+Be818k/AFhHNAAAAABJRU5ErkJggg==");

SELECT * FROM imp_carte;