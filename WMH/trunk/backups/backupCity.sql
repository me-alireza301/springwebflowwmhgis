PGDMP     .                     o            test    9.0.1    9.0.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     )   SET standard_conforming_strings = 'off';
                       false            �           1259    33032    city    TABLE     P   CREATE TABLE city (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE test.city;
       test         sa    false    7                      0    33032    city 
   TABLE DATA               !   COPY city (id, name) FROM stdin;
    test       sa    false    1510   �                  2606    33036 	   city_pkey 
   CONSTRAINT     E   ALTER TABLE ONLY city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY test.city DROP CONSTRAINT city_pkey;
       test         sa    false    1510    1510               o   x�3���)�*���2�O,*�J,O�2�t�L<�TY\���e��S�����e������e�静����e�y���攣��,8��R��o.��I,��8���A�=... �1$�     