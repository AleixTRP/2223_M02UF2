DROP TABLE IF EXISTS weapons_materials;
DROP TABLE IF EXISTS armors_materials;

DROP TABLE IF EXISTS materials;

DROP TABLE IF EXISTS characters_weapons;
DROP TABLE IF EXISTS characters_armors;
DROP TABLE IF EXISTS characters_items;

DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS weapons;
DROP TABLE IF EXISTS armors;

DROP TABLE IF EXISTS items_types;
DROP TABLE IF EXISTS weapons_types;
DROP TABLE IF EXISTS armors_types;

DROP TABLE IF EXISTS stats;
DROP TABLE IF EXISTS characters;


CREATE TABLE `characters` (
  `id_character` int(10) UNSIGNED NOT NULL,
  `name` varchar(32) NOT NULL,
  `age` int(11) NOT NULL,
  `Race` varchar(16) NOT NULL,
  `Gender` char(1) NOT NULL,
  `Class` varchar(16) NOT NULL,
  `Height` float NOT NULL,
  `Weight` float NOT NULL,
  `Origin` char(3) NOT NULL,
  `Description` text NOT NULL

INSERT INTO `characters` (`id_character`, `name`, `age`, `Race`, `Gender`, `Class`, `Height`, `Weight`, `Origin`, `Description`) VALUES
(1, 'Payoh', 67, 'Cambiapieles', 'L', 'Dictador', 1.75, 80, 'RUM', 'Payoh es.... un cambiapieles muy raton.'),
(2, 'Yuca ', 27, 'Sirenido', 'F', 'Cryptolai', 1, 40, 'PUR', 'Yuca esta en la academia de mundocrypto junto a Mani Thawani para luchar contra Tamayo.'),
(3, 'Yulen', 104, 'No muerto', 'D', 'Minero', 0.8, 25, 'NDE', 'Yulen se fue para no volver, o eso cree la gente....'),
(4, 'Josema', 3000, 'Deidad', 'T', 'Procrastinador', 3.14, 0, 'PER', 'Josema, es tal su grandeza que decidio vivir en latam.');

Create table characters_weapons( id_character_weapon INT UNSIGNED PRIMARY KEY AUTO_INCREMENT NOT NULL ,
   id_character INT UNSIGNED
   id_weapon INT UNSIGNED,
   FOREIGN KEY ( id_character) REFERENCES characters (id_character),
   FOREIGN KEY ( id_weapon) REFERENCES weapons (id_weapon));

INSERT INTO characters_weapons (id_character, id_weapon) VALUES (1,1), (2,2) , (3,3) ,(4,4);


CREATE TABLE characters_armors(
    id_characters_armors int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_material int UNSIGNED,
    id_character int UNSIGNED,
    
    FOREIGN KEY (id_character) REFERENCES characters( id_character),
    FOREIGN KEY (id_material) REFERENCES materials ( id_material));

INSERT INTO characters_armros(
id_material, id_character) VALUES (1,1),(2,2),(3,3),(4,4) 


CREATE TABLE characters_items(
    id_characters_items int UNSIGNED AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_item int UNSIGNED,
    id_character int UNSIGNED,
    
    FOREIGN KEY (id_character) REFERENCES characters( id_character),
    FOREIGN KEY (id_item) REFERENCES items ( id_material));

INSERT INTO characters_items(
    id_item, id_character)
    
   VALUES (1,2),(2,1),(3,4),(4,1);




CREATE TABLE `stats` (
  `id_stats` int(10) UNSIGNED NOT NULL,
  `agility` int(11) NOT NULL,
  `hp` float NOT NULL,
  `hp_max` int(11) NOT NULL,
  `xp` float NOT NULL,
  `xp_max` int(11) NOT NULL,
  `mp` float NOT NULL,
  `mp_max` int(11) NOT NULL,
  `lvl` int(11) NOT NULL,
  `physic_attack` float NOT NULL,
  `magic_attack` float NOT NULL,
  `physic_defense` float NOT NULL,
  `magic_defense` float NOT NULL,
  `stamina` float NOT NULL,
  `intel` int(11) NOT NULL,
  `stealth` int(11) NOT NULL,
  `lucky` int(11) NOT NULL,
  `faith` int(11) NOT NULL,
  `velocity` int(11) NOT NULL,
  `dexterity` int(11) NOT NULL,
  `strength` int(11) NOT NULL,
  `charisma` int(11) NOT NULL,
  `vigor` int(11) NOT NULL,
  `tenacity` int(11) NOT NULL,
  `critical_rate` float NOT NULL,
  `steal_life` float NOT NULL,
  `accurry` float NOT NULL,
  `balance` float NOT NULL,
  `mana` int(11) NOT NULL,
  `id_characters` int(10) UNSIGNED NOT NULL

INSERT INTO `stats` (`id_stats`, `agility`, `hp`, `hp_max`, `xp`, `xp_max`, `mp`, `mp_max`, `lvl`, `physic_attack`, `magic_attack`, `physic_defense`, `magic_defense`, `stamina`, `intel`, `stealth`, `lucky`, `faith`, `velocity`, `dexterity`, `strength`, `charisma`, `vigor`, `tenacity`, `critical_rate`, `steal_life`, `accurry`, `balance`, `mana`, `id_characters`) VALUES
(1, 900, 950, 0, 820, 0, 300, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1),
(2, 75, 0, 0, 500, 0, 700, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3),
(3, 1000, 1000, 0, 999, 0, 1000, 0, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4),
(4, 200, 600, 0, 150, 0, 750, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2);



CREATE TABLE `items` (
  `id_item` int(10) UNSIGNED NOT NULL,
  `item` varchar(24) DEFAULT NULL,
  `consumbale` tinyint(1) DEFAULT NULL,
  `rarity` int(11) DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `key` tinyint(1) DEFAULT NULL,
  `fusion` tinyint(1) DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `height` float DEFAULT NULL,
  `durability` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `dismantled` tinyint(1) DEFAULT NULL,
  `id_item_type` int(11) UNSIGNED DEFAULT NULL



INSERT INTO `items` (`id_item`, `item`, `consumbale`, `rarity`, `cost`, `key`, `fusion`, `weight`, `height`, `durability`, `description`, `dismantled`, `id_item_type`) VALUES
(1, 'Queso', 1, 3, 50, 0, 1, 20, 0.1, 3, 'Queso que sabe a beso', 0, 1),
(2, 'Carne de Zombie', 1, 2, 20, 0, 1, 40, 0.3, 1, 'Esto huele mal', 0, 1),
(3, 'Fragmento Escarlata', 1, 45, 500, 0, 1, 10000, 0.25, -1, 'Piedra rara de un volcan', 0, 2);

   
CREATE TABLE items_type (
    id_items_type int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    type char(24),
    description text,
    icon char (16) );
    INSERT INTO items_type (type, description, icon ) VALUES
    ("TE","La perla negra se utiliza para craftear objetos raros.", 0),
    ("PB","Un jabon creado a partir de abuelas", 0),
    ("BU","Item legendario, hecho a partir de furros.", 0);




CREATE TABLE materials (
    id_material int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    material varchar(16) ,
    color char (6) ,
    cost float
);

INSERT INTO materials (material , color, cost ) VALUES

("Obsidiana", "00000" , 40 ),
("Madera", "ddeeaa" , 10 ) ,
("Carne" , "fff00", 5),
("Pana" , "ffdd", 50),
("Goma Sagrada" , "0", 1000),
("Piedra" , "ccccc", 1),
("Cuero" , "ddddd", 20),
("BanderaEspaña" , "ESPAÑA", 2030),
("Plumas de angel" , "fffff", 100000),
("Materia Oscura" , "0", 10000),
("Hueso" , "dddda", 10),
("agua" , "000f", 1),
("Lava" , "ffd000", 500);



Create Table weapons (id_weapon INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
                     weapon VARCHAR (24),
                     type char (2),
                     grip int (11),  
                     durability int (11) ,
                     distance FLOAT ,
                     quality int (11),
                     physic_attack FLOAT,  
                     physic_defense FLOAT,
                     magic_attack FLOAT,
                     magic_defense FLOAT,
                     description TEXT,
                    `level` int (11),
                    `level_min` int (11),  
                    id_weapon_type INT(11) UNSIGNED,
FOREIGN KEY (id_weapon_type) REFERENCES weapons_types (id_weapon_type)
);


INSERT INTO weapons (weapon,type,grip,durability ,distance,quality,physic_attack, physic_defense,magic_attack,magic_defense, description, `level`, `level_min`, id_weapon_type) VALUES
("Blue Shell",'Tw',1, 1,10000000,1000,1000,1000,1000,1000,'Arma ultralegendaria de un solo uso, el cual mata a su objetivo',100,90,1),
("Grafica RTX 4080",'Sw',2,4080,4,700,300,800,100,100,'La descomunal arma para matar cryptos',60,30,2),
("Crowbar",'Me',1,500,3,600,500,500,400,400,'Arma que con un buen uso puede ser mortal',20,10,3),
("Gravity Gun",'Di',1,999,666,750,400,350,800,800,'Arma gravitacional que siente la melodia',40,20,4)


CREATE TABLE weapons_materials (
    id_weapons_materials int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_material int UNSIGNED,
    id_weapon int UNSIGNED,
    FOREIGN KEY (id_weapon) REFERENCES weapons ( id_weapon),
    FOREIGN KEY (id_material) REFERENCES materials ( id_material));                                      


INSERT INTO  `weapons_materials` (id_weapon, id_material) VALUES  (1,9),(1,12) ,(1,5), (2,7),(2,13), (2,1), (3,13),(3,10),(4,10),(4,13),(4,11);


CREATE TABLE weapons_type(
    id_weapons_types int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    type char(24),
    description text,
    icon char (16) );
   

 INSERT INTO weapons_types (type, description, icon) VALUES
("TW","Arma ultralegendaria de un solo uso, que mata a cualquier objetivo a cualquier distancia", 0),
("SW","Grafica 4080RTX, arma a dos manos  muy poderosa pero con un defecto, si se usa demasiado puede explotar.", 0),
("ME","Crowbar, arma rara pero con un uso en combate excelente. El poder del arma depende de la experiencia en combate del portador. Cuanto más uso en combate más fuerte puede ser el arma.", 0),
("DI","Gravity Gun, arma a distancia legendaria. Arma a distancia con un gran rango en area de gravitacion. ", 0);




    

Create Table armors (id_armor INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
                     armor VARCHAR (24),
                     durability int (11),  
                     quality int (11) ,
                     rarity int (11),
                     weight FLOAT,
                     physic_defense FLOAT,
                     magic_defense FLOAT,
                     penetration_resistance FLOAT,
                     size VARCHAR(12),
                     temp_protect FLOAT,  
                     critic_resistance FLOAT,
                     anti_heal FLOAT,
                     cost FLOAT    ,
                     lvl_min INT(11),
                     lvl INT(11),
                     class  CHAR(16),
                     notoriety INT(11),
                     id_armor_type INT(11) UNSIGNED,
                     
FOREIGN KEY (id_armor_type) REFERENCES armor_type (id_armor_type)
);

INSERT INTO armors (armor, durability, quality ,rarity,weight,physic_defense,magic_defense,penetration_resistance, size, temp_protect,critic_resistance,anti_heal,cost,`lvl_min`,`lvl`, class,notoriety,id_armor_type) VALUES

("Plumas angelicales",600,700,700,70,600,500,400,"XL",700, 500,700,999,10,399,"Mago",50,2), ("Hierro",300,150,100,200,300,300,150,"L",500, 300,200,300,20,50,"Caballero",20,1),("Camuglage",200,200,200,40,150,150,150,"M",150,150,150,150,15,37,"Assesino",800,3);

                                                  
 CREATE TABLE armors_materials (
    id_armors_materials int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_material int UNSIGNED,
    id_armor int UNSIGNED,
    FOREIGN KEY (id_armor) REFERENCES id_armor( id_armor),
    FOREIGN KEY (id_material) REFERENCES id_material ( id_material));

INSERT INTO armors_materials(
id_material,id_armor) VALUES (1,2) , (2,5) ,(3,4) , (4,3)


 CREATE TABLE armors_type (
    id_armor_type int UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    type char(24),
    description text,
    icon char (16) );
    
INSERT INTO armors_type (type, description, icon ) VALUES
    ("HE","Armadura basica de hierro", 0),    ("PL","Armadura Legendaria de plumas", 0),
    ("CAM","Armadura comun de camuflage de caza ", 0);



