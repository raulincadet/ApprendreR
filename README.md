# ApprendreR
Il s'agit d'un package, pour apprendre R. Créé pour permettre à mes étudiants d'avancer avec R. , lors d'une séance de cours qui n'a pas pu avoir lieu, il n'y a pas de chapitre introductif. Pour cette version, le tutoriel ne comporte que les notions que je devais voir avec mes étudiants à la semaine du 3 février 2020. Il a été mis à jour en novembre 2020.

Pour bénéficier du tutoriel, suivez les étapes ci-dessous:

1) télécharger Rtools: https://cran.r-project.org/bin/windows/Rtools/Rtools35.exe;

2) Puis, ouvrez et installez le fichier exécutable Rtools dans votre ordinateur;
3) Tandis que vous êtes branché sur internet, ouvrez Rstudio et allez dans le menu, et cliquez sur Tools. Puis, sur Install Packages. Dans la fenêtre qui s'ouvre, écrivez le nom du package learnr, afin de l'installer;

4) Sur la console de Rstudio, écrivez cette ligne de code pour installer le tutoriel ApprendreR: install_github("raulincadet/ApprendreR")
5) Maintenant, vous n'avez plus besoin de l'internet. Exécutez la ligne de code qui suit pour profiter du tutoriel: learnr::run_tutorial("import","ApprendreR")
