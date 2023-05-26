PGDMP         !    	            {            ded     15.3 (Ubuntu 15.3-1.pgdg22.04+1)     15.3 (Ubuntu 15.3-1.pgdg22.04+1) E    }           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ~           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24888    ded    DATABASE     o   CREATE DATABASE ded WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt_BR.UTF-8';
    DROP DATABASE ded;
                postgres    false            �            1259    24889    actions    TABLE     �   CREATE TABLE public.actions (
    name character varying[] NOT NULL,
    description character varying NOT NULL,
    damage_dice character varying,
    attack_bonus smallint,
    monster_id bigint,
    id integer NOT NULL,
    damage_bonus smallint
);
    DROP TABLE public.actions;
       public         heap    postgres    false            �            1259    24894    actions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.actions_id_seq;
       public          postgres    false    214            �           0    0    actions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.actions_id_seq OWNED BY public.actions.id;
          public          postgres    false    215            �            1259    24895    monsters    TABLE     �  CREATE TABLE public.monsters (
    name character varying(50),
    size character varying(50),
    type character varying(50),
    subtype character varying(50),
    groupp character varying(50),
    strength integer,
    dexterity integer,
    constitution integer,
    intelligence integer,
    wisdom integer,
    charisma integer,
    strength_save integer,
    dexterity_save integer,
    constitution_save integer,
    intelligence_save integer,
    wisdom_save integer,
    charisma_save integer,
    perception integer,
    damage_vulnerabilities text,
    damage_resistances text,
    damage_immunities text,
    condition_immunities text,
    senses text,
    languages text,
    challenge_rating double precision,
    legendary_desc text,
    legendary_actions text,
    page_no integer,
    img_main text,
    slug character varying,
    id integer NOT NULL,
    skill_id bigint,
    speed_id bigint
);
    DROP TABLE public.monsters;
       public         heap    postgres    false            �            1259    24900    monsters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.monsters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.monsters_id_seq;
       public          postgres    false    216            �           0    0    monsters_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.monsters_id_seq OWNED BY public.monsters.id;
          public          postgres    false    217            �            1259    24901 	   reactions    TABLE     �   CREATE TABLE public.reactions (
    name character varying NOT NULL,
    description text NOT NULL,
    monster_id bigint,
    id integer NOT NULL
);
    DROP TABLE public.reactions;
       public         heap    postgres    false            �            1259    24906    reactions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.reactions_id_seq;
       public          postgres    false    218            �           0    0    reactions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.reactions_id_seq OWNED BY public.reactions.id;
          public          postgres    false    219            �            1259    24907    skills    TABLE     �  CREATE TABLE public.skills (
    athletics smallint,
    perception smallint,
    stealth smallint,
    intimidation smallint,
    history smallint,
    deception smallint,
    performance smallint,
    persuasion smallint,
    medicine smallint,
    religion smallint,
    insight smallint,
    arcana smallint,
    acrobatics smallint,
    survival smallint,
    investigation smallint,
    nature smallint,
    id integer NOT NULL
);
    DROP TABLE public.skills;
       public         heap    postgres    false            �            1259    24910    skills_id_seq    SEQUENCE     �   CREATE SEQUENCE public.skills_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.skills_id_seq;
       public          postgres    false    220            �           0    0    skills_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.skills_id_seq OWNED BY public.skills.id;
          public          postgres    false    221            �            1259    24911    special_abilities    TABLE     �   CREATE TABLE public.special_abilities (
    id integer DEFAULT nextval('public.skills_id_seq'::regclass) NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL
);
 %   DROP TABLE public.special_abilities;
       public         heap    postgres    false    221            �            1259    24917    special_abilities_monsters    TABLE     �   CREATE TABLE public.special_abilities_monsters (
    id integer DEFAULT nextval('public.skills_id_seq'::regclass) NOT NULL,
    special_abilities_id integer,
    monster_id bigint
);
 .   DROP TABLE public.special_abilities_monsters;
       public         heap    postgres    false    221            �            1259    24921    speed    TABLE     �   CREATE TABLE public.speed (
    walk smallint,
    burrow smallint,
    climb smallint,
    fly smallint,
    swim smallint,
    hover boolean,
    id integer NOT NULL
);
    DROP TABLE public.speed;
       public         heap    postgres    false            �            1259    24924    speed_id_seq    SEQUENCE     �   CREATE SEQUENCE public.speed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.speed_id_seq;
       public          postgres    false    224            �           0    0    speed_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.speed_id_seq OWNED BY public.speed.id;
          public          postgres    false    225            �            1259    24925    spells_list    TABLE     �  CREATE TABLE public.spells_list (
    slug character varying NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    higher_level smallint,
    page character varying,
    range character varying,
    largest_range_sort character varying,
    components character varying,
    requires_verbal_components boolean,
    requires_somatic_components boolean,
    requires_material_components boolean,
    material character varying,
    can_be_cast_as_ritual boolean,
    ritual character varying,
    duration character varying,
    concentration character varying,
    requires_concentration boolean,
    casting_time character varying,
    level character varying,
    level_int smallint,
    spell_level smallint,
    school character varying,
    dnd_class character varying,
    archetype character varying,
    circles character varying,
    id integer NOT NULL
);
    DROP TABLE public.spells_list;
       public         heap    postgres    false            �            1259    24930    spells_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.spells_list_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.spells_list_id_seq;
       public          postgres    false    226            �           0    0    spells_list_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.spells_list_id_seq OWNED BY public.spells_list.id;
          public          postgres    false    227            �            1259    24931    spells_list_monsters    TABLE     x   CREATE TABLE public.spells_list_monsters (
    monster_id bigint,
    spells_list_id bigint,
    id integer NOT NULL
);
 (   DROP TABLE public.spells_list_monsters;
       public         heap    postgres    false            �            1259    24934    spells_list_monsters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.spells_list_monsters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.spells_list_monsters_id_seq;
       public          postgres    false    228            �           0    0    spells_list_monsters_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.spells_list_monsters_id_seq OWNED BY public.spells_list_monsters.id;
          public          postgres    false    229            �           2604    24935 
   actions id    DEFAULT     h   ALTER TABLE ONLY public.actions ALTER COLUMN id SET DEFAULT nextval('public.actions_id_seq'::regclass);
 9   ALTER TABLE public.actions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    24936    monsters id    DEFAULT     j   ALTER TABLE ONLY public.monsters ALTER COLUMN id SET DEFAULT nextval('public.monsters_id_seq'::regclass);
 :   ALTER TABLE public.monsters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    24937    reactions id    DEFAULT     l   ALTER TABLE ONLY public.reactions ALTER COLUMN id SET DEFAULT nextval('public.reactions_id_seq'::regclass);
 ;   ALTER TABLE public.reactions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    24938 	   skills id    DEFAULT     f   ALTER TABLE ONLY public.skills ALTER COLUMN id SET DEFAULT nextval('public.skills_id_seq'::regclass);
 8   ALTER TABLE public.skills ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    24939    speed id    DEFAULT     d   ALTER TABLE ONLY public.speed ALTER COLUMN id SET DEFAULT nextval('public.speed_id_seq'::regclass);
 7   ALTER TABLE public.speed ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    24940    spells_list id    DEFAULT     p   ALTER TABLE ONLY public.spells_list ALTER COLUMN id SET DEFAULT nextval('public.spells_list_id_seq'::regclass);
 =   ALTER TABLE public.spells_list ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    24941    spells_list_monsters id    DEFAULT     �   ALTER TABLE ONLY public.spells_list_monsters ALTER COLUMN id SET DEFAULT nextval('public.spells_list_monsters_id_seq'::regclass);
 F   ALTER TABLE public.spells_list_monsters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            k          0    24889    actions 
   TABLE DATA           m   COPY public.actions (name, description, damage_dice, attack_bonus, monster_id, id, damage_bonus) FROM stdin;
    public          postgres    false    214   #Y       m          0    24895    monsters 
   TABLE DATA           �  COPY public.monsters (name, size, type, subtype, groupp, strength, dexterity, constitution, intelligence, wisdom, charisma, strength_save, dexterity_save, constitution_save, intelligence_save, wisdom_save, charisma_save, perception, damage_vulnerabilities, damage_resistances, damage_immunities, condition_immunities, senses, languages, challenge_rating, legendary_desc, legendary_actions, page_no, img_main, slug, id, skill_id, speed_id) FROM stdin;
    public          postgres    false    216   @Y       o          0    24901 	   reactions 
   TABLE DATA           F   COPY public.reactions (name, description, monster_id, id) FROM stdin;
    public          postgres    false    218   ]Y       q          0    24907    skills 
   TABLE DATA           �   COPY public.skills (athletics, perception, stealth, intimidation, history, deception, performance, persuasion, medicine, religion, insight, arcana, acrobatics, survival, investigation, nature, id) FROM stdin;
    public          postgres    false    220   zY       s          0    24911    special_abilities 
   TABLE DATA           B   COPY public.special_abilities (id, name, description) FROM stdin;
    public          postgres    false    222   �Y       t          0    24917    special_abilities_monsters 
   TABLE DATA           Z   COPY public.special_abilities_monsters (id, special_abilities_id, monster_id) FROM stdin;
    public          postgres    false    223   �Y       u          0    24921    speed 
   TABLE DATA           J   COPY public.speed (walk, burrow, climb, fly, swim, hover, id) FROM stdin;
    public          postgres    false    224   �Y       w          0    24925    spells_list 
   TABLE DATA           �  COPY public.spells_list (slug, name, description, higher_level, page, range, largest_range_sort, components, requires_verbal_components, requires_somatic_components, requires_material_components, material, can_be_cast_as_ritual, ritual, duration, concentration, requires_concentration, casting_time, level, level_int, spell_level, school, dnd_class, archetype, circles, id) FROM stdin;
    public          postgres    false    226   �Y       y          0    24931    spells_list_monsters 
   TABLE DATA           N   COPY public.spells_list_monsters (monster_id, spells_list_id, id) FROM stdin;
    public          postgres    false    228   Z       �           0    0    actions_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.actions_id_seq', 1, false);
          public          postgres    false    215            �           0    0    monsters_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.monsters_id_seq', 1, false);
          public          postgres    false    217            �           0    0    reactions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.reactions_id_seq', 1, false);
          public          postgres    false    219            �           0    0    skills_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.skills_id_seq', 1, false);
          public          postgres    false    221            �           0    0    speed_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.speed_id_seq', 1, false);
          public          postgres    false    225            �           0    0    spells_list_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.spells_list_id_seq', 1, false);
          public          postgres    false    227            �           0    0    spells_list_monsters_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.spells_list_monsters_id_seq', 1, false);
          public          postgres    false    229            �           2606    24943    actions actions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.actions
    ADD CONSTRAINT actions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.actions DROP CONSTRAINT actions_pkey;
       public            postgres    false    214            �           2606    24945    monsters monsters_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.monsters
    ADD CONSTRAINT monsters_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.monsters DROP CONSTRAINT monsters_pkey;
       public            postgres    false    216            �           2606    24947    monsters monsters_slug_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.monsters
    ADD CONSTRAINT monsters_slug_key UNIQUE (slug);
 D   ALTER TABLE ONLY public.monsters DROP CONSTRAINT monsters_slug_key;
       public            postgres    false    216            �           2606    24949    reactions reactions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.reactions
    ADD CONSTRAINT reactions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.reactions DROP CONSTRAINT reactions_pkey;
       public            postgres    false    218            �           2606    24951    skills skills_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.skills DROP CONSTRAINT skills_pkey;
       public            postgres    false    220            �           2606    24953    spells_list slug_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.spells_list
    ADD CONSTRAINT slug_unique UNIQUE (slug);
 A   ALTER TABLE ONLY public.spells_list DROP CONSTRAINT slug_unique;
       public            postgres    false    226            �           2606    24955 :   special_abilities_monsters special_abilities_monsters_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.special_abilities_monsters
    ADD CONSTRAINT special_abilities_monsters_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.special_abilities_monsters DROP CONSTRAINT special_abilities_monsters_pkey;
       public            postgres    false    223            �           2606    24957 (   special_abilities special_abilities_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.special_abilities
    ADD CONSTRAINT special_abilities_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.special_abilities DROP CONSTRAINT special_abilities_pkey;
       public            postgres    false    222            �           2606    24959    speed speed_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.speed
    ADD CONSTRAINT speed_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.speed DROP CONSTRAINT speed_pkey;
       public            postgres    false    224            �           2606    24961 .   spells_list_monsters spells_list_monsters_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.spells_list_monsters
    ADD CONSTRAINT spells_list_monsters_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.spells_list_monsters DROP CONSTRAINT spells_list_monsters_pkey;
       public            postgres    false    228            �           2606    24963    spells_list spells_list_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.spells_list
    ADD CONSTRAINT spells_list_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.spells_list DROP CONSTRAINT spells_list_pkey;
       public            postgres    false    226            �           2606    24964    actions fk_monster    FK CONSTRAINT     w   ALTER TABLE ONLY public.actions
    ADD CONSTRAINT fk_monster FOREIGN KEY (monster_id) REFERENCES public.monsters(id);
 <   ALTER TABLE ONLY public.actions DROP CONSTRAINT fk_monster;
       public          postgres    false    3266    216    214            �           2606    24969    reactions fk_monster    FK CONSTRAINT     y   ALTER TABLE ONLY public.reactions
    ADD CONSTRAINT fk_monster FOREIGN KEY (monster_id) REFERENCES public.monsters(id);
 >   ALTER TABLE ONLY public.reactions DROP CONSTRAINT fk_monster;
       public          postgres    false    3266    218    216            �           2606    24974 %   special_abilities_monsters fk_monster    FK CONSTRAINT     �   ALTER TABLE ONLY public.special_abilities_monsters
    ADD CONSTRAINT fk_monster FOREIGN KEY (monster_id) REFERENCES public.monsters(id);
 O   ALTER TABLE ONLY public.special_abilities_monsters DROP CONSTRAINT fk_monster;
       public          postgres    false    216    223    3266            �           2606    24979    spells_list_monsters fk_monster    FK CONSTRAINT     �   ALTER TABLE ONLY public.spells_list_monsters
    ADD CONSTRAINT fk_monster FOREIGN KEY (monster_id) REFERENCES public.monsters(id);
 I   ALTER TABLE ONLY public.spells_list_monsters DROP CONSTRAINT fk_monster;
       public          postgres    false    3266    228    216            �           2606    24984    monsters fk_skill    FK CONSTRAINT     r   ALTER TABLE ONLY public.monsters
    ADD CONSTRAINT fk_skill FOREIGN KEY (skill_id) REFERENCES public.skills(id);
 ;   ALTER TABLE ONLY public.monsters DROP CONSTRAINT fk_skill;
       public          postgres    false    220    3272    216            �           2606    24989    spells_list_monsters fk_sl    FK CONSTRAINT     �   ALTER TABLE ONLY public.spells_list_monsters
    ADD CONSTRAINT fk_sl FOREIGN KEY (spells_list_id) REFERENCES public.spells_list(id);
 D   ALTER TABLE ONLY public.spells_list_monsters DROP CONSTRAINT fk_sl;
       public          postgres    false    226    228    3282            �           2606    24994    monsters fk_speed    FK CONSTRAINT     q   ALTER TABLE ONLY public.monsters
    ADD CONSTRAINT fk_speed FOREIGN KEY (speed_id) REFERENCES public.speed(id);
 ;   ALTER TABLE ONLY public.monsters DROP CONSTRAINT fk_speed;
       public          postgres    false    216    224    3278            �           2606    24999 O   special_abilities_monsters special_abilities_monsters_special_abilities_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.special_abilities_monsters
    ADD CONSTRAINT special_abilities_monsters_special_abilities_id_fkey FOREIGN KEY (special_abilities_id) REFERENCES public.special_abilities(id);
 y   ALTER TABLE ONLY public.special_abilities_monsters DROP CONSTRAINT special_abilities_monsters_special_abilities_id_fkey;
       public          postgres    false    222    223    3274            k      x������ � �      m      x������ � �      o      x������ � �      q      x������ � �      s      x������ � �      t      x������ � �      u      x������ � �      w      x������ � �      y      x������ � �     