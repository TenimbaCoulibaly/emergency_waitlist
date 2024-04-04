## Types d'entités et leurs attributs

Voici les types d'entités et leurs attributs que l'application a besoin de stocker :

### Patient

- `id` : Un identifiant unique pour chaque patient. Il est généré automatiquement. Type varchar (20)
- `first_name` : Le prénom du patient. Type text
- `last_name` : Le nom de famille du patient. Type text
- `injury_type` : Le type de blessure du patient. Type varchar (200)
- `injury_severity` : La gravité de la blessure du patient. Type Integer
- `position` : La position du patient. Type String
- `registration_time` : Le moment de l'enregistrement du patient. Type Date
- `username` : Le nom d'utilisateur du patient. Il doit être unique. Type varchar (200)
- `email_address` : L'adresse e-mail du patient. Elle doit être unique. Type varchar (200)
- `password` : Le mot de passe du patient. Type varchar (200)

### ADMIN

- `id` : Un identifiant unique pour chaque administrateur. Il est généré automatiquement. Type varchar (20)
- `first_name` : Le prénom de l'administrateur. Type text
- `last_name` : Le nom de famille de l'administrateur. Type text
- `username` : Le nom d'utilisateur de l'administrateur. Il doit être unique. Type varchar (200)
- `email_address` : L'adresse e-mail de l'administrateur. Elle doit être unique. Type varchar (200)
- `password` : Le mot de passe de l'administrateur. Type varchar (200)

### Injury_List

- `id` : Un identifiant unique pour chaque type de blessure. Il est généré automatiquement. Type varchar (200)
- `injury_type` : Le type de blessure. Il s'agit d'une chaîne de caractères. Type varchar (200)
- `injury_severity` : La gravité de la blessure. Il s'agit d'un entier. Type Integer

### Il y a aussi un autre Injury_List
- `injury_type` : Le type de blessure. Il s'agit d'une chaîne de caractères. Type varchar (200)
- `injury_severity` : La gravité de la blessure. Il s'agit d'un entier. Type Integer

[Schéma de la base de données](/docs/schema.png)