PGDMP     0                     o            test    9.0.1    9.0.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     )   SET standard_conforming_strings = 'off';
                       false                        2615    33030    test    SCHEMA        CREATE SCHEMA test;
    DROP SCHEMA test;
             sa    false            �           1259    33032    city    TABLE     P   CREATE TABLE city (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE test.city;
       test         sa    false    7            �           1259    41036 
   connection    TABLE     �   CREATE TABLE connection (
    id integer NOT NULL,
    destination integer,
    source integer,
    weight integer,
    status boolean,
    idx integer
);
    DROP TABLE test.connection;
       test         sa    false    7            �           1259    33042    curve    TABLE     �   CREATE TABLE curve (
    id integer NOT NULL,
    origin integer,
    fin integer,
    value integer,
    type character varying(255)
);
    DROP TABLE test.curve;
       test         sa    false    7            �           1259    41086    graphresults    TABLE     �   CREATE TABLE graphresults (
    id integer NOT NULL,
    vertexnumber integer,
    edgenumber integer,
    ntrialscount integer,
    complexcount integer,
    trustparam integer
);
    DROP TABLE test.graphresults;
       test         sa    false    7            �           1259    41046    networkgraph    TABLE     7   CREATE TABLE networkgraph (
    id integer NOT NULL
);
    DROP TABLE test.networkgraph;
       test         sa    false    7            �           1259    41051    switch    TABLE     c   CREATE TABLE switch (
    id integer NOT NULL,
    name character varying(255),
    idx integer
);
    DROP TABLE test.switch;
       test         sa    false    7                      0    33032    city 
   TABLE DATA               !   COPY city (id, name) FROM stdin;
    test       sa    false    1510   +                 0    41036 
   connection 
   TABLE DATA               K   COPY connection (id, destination, source, weight, status, idx) FROM stdin;
    test       sa    false    1512   �                 0    33042    curve 
   TABLE DATA               6   COPY curve (id, origin, fin, value, type) FROM stdin;
    test       sa    false    1511                    0    41086    graphresults 
   TABLE DATA               e   COPY graphresults (id, vertexnumber, edgenumber, ntrialscount, complexcount, trustparam) FROM stdin;
    test       sa    false    1515   G                 0    41046    networkgraph 
   TABLE DATA               #   COPY networkgraph (id) FROM stdin;
    test       sa    false    1513   �                 0    41051    switch 
   TABLE DATA               (   COPY switch (id, name, idx) FROM stdin;
    test       sa    false    1514   �                  2606    33036 	   city_pkey 
   CONSTRAINT     E   ALTER TABLE ONLY city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);
 6   ALTER TABLE ONLY test.city DROP CONSTRAINT city_pkey;
       test         sa    false    1510    1510                       2606    41040    connection_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY connection
    ADD CONSTRAINT connection_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY test.connection DROP CONSTRAINT connection_pkey;
       test         sa    false    1512    1512                       2606    33046 
   curve_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY curve
    ADD CONSTRAINT curve_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY test.curve DROP CONSTRAINT curve_pkey;
       test         sa    false    1511    1511                       2606    41090    graphresults_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY graphresults
    ADD CONSTRAINT graphresults_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY test.graphresults DROP CONSTRAINT graphresults_pkey;
       test         sa    false    1515    1515                       2606    41050    networkgraph_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY networkgraph
    ADD CONSTRAINT networkgraph_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY test.networkgraph DROP CONSTRAINT networkgraph_pkey;
       test         sa    false    1513    1513            
           2606    41055    switch_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY switch
    ADD CONSTRAINT switch_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY test.switch DROP CONSTRAINT switch_pkey;
       test         sa    false    1514    1514                       2606    33082    fk3d808cf8f030739    FK CONSTRAINT     f   ALTER TABLE ONLY curve
    ADD CONSTRAINT fk3d808cf8f030739 FOREIGN KEY (origin) REFERENCES city(id);
 ?   ALTER TABLE ONLY test.curve DROP CONSTRAINT fk3d808cf8f030739;
       test       sa    false    1511    1510    1793                       2606    33077    fk3d808cfcb22e41e    FK CONSTRAINT     c   ALTER TABLE ONLY curve
    ADD CONSTRAINT fk3d808cfcb22e41e FOREIGN KEY (fin) REFERENCES city(id);
 ?   ALTER TABLE ONLY test.curve DROP CONSTRAINT fk3d808cfcb22e41e;
       test       sa    false    1510    1793    1511                       2606    41071    fk928eab34748c9162    FK CONSTRAINT     l   ALTER TABLE ONLY switch
    ADD CONSTRAINT fk928eab34748c9162 FOREIGN KEY (id) REFERENCES networkgraph(id);
 A   ALTER TABLE ONLY test.switch DROP CONSTRAINT fk928eab34748c9162;
       test       sa    false    1514    1799    1513                       2606    41066    fkeeae6ade1b038d09    FK CONSTRAINT     s   ALTER TABLE ONLY connection
    ADD CONSTRAINT fkeeae6ade1b038d09 FOREIGN KEY (destination) REFERENCES switch(id);
 E   ALTER TABLE ONLY test.connection DROP CONSTRAINT fkeeae6ade1b038d09;
       test       sa    false    1801    1512    1514                       2606    41061    fkeeae6ade3acdb116    FK CONSTRAINT     n   ALTER TABLE ONLY connection
    ADD CONSTRAINT fkeeae6ade3acdb116 FOREIGN KEY (source) REFERENCES switch(id);
 E   ALTER TABLE ONLY test.connection DROP CONSTRAINT fkeeae6ade3acdb116;
       test       sa    false    1801    1512    1514                       2606    41056    fkeeae6ade748c9162    FK CONSTRAINT     p   ALTER TABLE ONLY connection
    ADD CONSTRAINT fkeeae6ade748c9162 FOREIGN KEY (id) REFERENCES networkgraph(id);
 E   ALTER TABLE ONLY test.connection DROP CONSTRAINT fkeeae6ade748c9162;
       test       sa    false    1799    1513    1512               �   x���n�@D�ُ�8�@h��0� Ѥ�ܝ��ܡ;#���/��"�W�t#=͛1X7Y�.P�=�,|c�ļ����6������ԁ�ز�g���}c=M������⳼7�a�)ɌP%>��A�=hL�o���u�sEVȌ�O��w���Kl<*�ZV<�BG�h�Q?�)���f���&J�@?D�@zF5            x������ � �         %  x�m�K�U1D�y�A����HH�0�	�_�$7�'z�h�v�wݖ$I���/�������K�9ҟ�?�;) %�ɵ�M�6���H:HO��%Dr�`4
�g��a�Q�F�	!dk�҃�J�PB�hU�Z��he�*�o@ȶt>�	��#�H�*#jި0�z���P"�ݪ���
��Ȁf�P�sd/엶�r�؁��J��Q��5
�:9�Qc'�C����F��ŋ���L3;,�H��>h�6a'0��z���8�5�	4�6��F�C��V�*�e�o|k�rm�-���U&a�5X���ͱ��04v5#	lX���'�=l�P�0a�j�Ù�_�!צ{^9^�A,���L?b���j8]����@���V��& �K0Ķ:F�.X�B��o�%כ�Z�k$��YfN�"{�e����BH�������6�:O�6GnE+O��2[}���%'��ӗ��1�P_A��1~�V�/��b.��@�1�\�ْ�;ݺ"��Ǌ�o�<�c�y����A˄AP�����B?.��+�� �Y��wH�cq�
��9+d�A_n5�r���2&>���p��Nf�m��a�mw�ܡ��1��ev�X�Q��#���g�᫓�S�P�p�g��=��t�z�9,�k?��"�t���6���NƏ���o������S�1� ���n�p��٭������g���g��L�Y.%�ӽ὏q�Ax�KK��f.Zy3��ĖǠ�.�[�S����`�W�\��掇j�[��WBJ�萊|ԁ�W��g�|P��O����5��         ?   x�3�4��44 !K.#NsNCS��o��7E㛡��A��!B�]�����Ā+F��� )+�            x������ � �            x������ � �     