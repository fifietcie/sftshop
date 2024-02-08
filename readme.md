# Connexion à la base de donnée

Copier le fichier **.env** en **.env.local**.

On renseigne les informations de notre base de donnée : `DATABASE_URL="mysql://root:@127.0.0.1:3306/cdi?serverVersion=8.0.32&charset=utf8mb4"`

Créer la base de donnée avec **symfony** : `symfony console doctrine:database:create` ou `symfony console d:d:c`

# Inscription , connexion et authentification pour un étudiant

Inscription : `symfony console make:registration-form`

Connexion : `symfony console make:user`

Authentification : `symfony console make:auth`

Faire la migration en 2 étapes : migration et migrate :

Migration : `symfony console doctrine:migrations:diff` ou `symfony console make:migration`

Migrate : `symfony console doctrine:migrations:migrate`

# Les routes

Lister toutes les routes : `symfony console debug:router`

# Gestion des livres

Ajout d'une entité **livre** : `symfony console make:entity`

Création d'un **crud** pour l'entité **livre** : `symfony console make:crud`

# Génération d'un diagramme de vos entitées

Installer : `composer require jawira/doctrine-diagram-bundle --dev`

Do you want to execute this recipe? Y

Générer un diagrame : `symfony console doctrine:diagram`

# Fixtures 

Installer **doctrine-fixtures-bundle** et **fakerphp/faker** : `composer require --dev doctrine/doctrine-fixtures-bundle fakerphp/faker`

Ajouter de fausses données pour l'entitée **Tshirt** et **User**.

Charger les **fixtures** en supprimant le contenu de la table **Tshirt** : `symfony console doctrine:fixture:load` ou  `symfony console doctrine:fixture:load --no-interaction`

Ajouter des **fixtures** sans vider la table **Tshirt** :  `symfony console doctrine:fixture:load --append`

# Relation


# Diagram

Installer : `composer require jawira/doctrine-diagram-bundle --dev`

Génerer un diagram : `symfony console doctrine:diagram`

# Pagination

Installer : `composer require knplabs/knp-paginator-bundle`




