PGDMP     4    9                {            ded     15.3 (Ubuntu 15.3-1.pgdg22.04+1)     15.3 (Ubuntu 15.3-1.pgdg22.04+1) N    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    28882    ded    DATABASE     o   CREATE DATABASE ded WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt_BR.UTF-8';
    DROP DATABASE ded;
                postgres    false            �            1259    28883    actions    TABLE     �   CREATE TABLE public.actions (
    description text,
    damage_dice character varying,
    attack_bonus smallint,
    monster_id bigint,
    id integer NOT NULL,
    damage_bonus smallint,
    name text NOT NULL
);
    DROP TABLE public.actions;
       public         heap    postgres    false            �            1259    28888    actions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.actions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.actions_id_seq;
       public          postgres    false    214            �           0    0    actions_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.actions_id_seq OWNED BY public.actions.id;
          public          postgres    false    215            �            1259    28889    legendary_actions    TABLE        CREATE TABLE public.legendary_actions (
    id integer NOT NULL,
    name text,
    description text,
    monster_id bigint
);
 %   DROP TABLE public.legendary_actions;
       public         heap    postgres    false            �            1259    28894    legendary_action_id_seq    SEQUENCE     �   CREATE SEQUENCE public.legendary_action_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.legendary_action_id_seq;
       public          postgres    false    216            �           0    0    legendary_action_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public.legendary_action_id_seq OWNED BY public.legendary_actions.id;
          public          postgres    false    217            �            1259    28895    monsters    TABLE     ^  CREATE TABLE public.monsters (
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
    page_no integer,
    img_main text,
    slug character varying,
    id integer NOT NULL,
    skill_id bigint,
    speed_id bigint,
    challenge_rating double precision
);
    DROP TABLE public.monsters;
       public         heap    postgres    false            �            1259    28900    monsters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.monsters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.monsters_id_seq;
       public          postgres    false    218            �           0    0    monsters_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.monsters_id_seq OWNED BY public.monsters.id;
          public          postgres    false    219            �            1259    28901 	   reactions    TABLE     �   CREATE TABLE public.reactions (
    name text NOT NULL,
    description text,
    monster_id bigint,
    id integer NOT NULL
);
    DROP TABLE public.reactions;
       public         heap    postgres    false            �            1259    28906    reactions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.reactions_id_seq;
       public          postgres    false    220            �           0    0    reactions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.reactions_id_seq OWNED BY public.reactions.id;
          public          postgres    false    221            �            1259    28907    skills    TABLE     �  CREATE TABLE public.skills (
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
       public         heap    postgres    false            �            1259    28910    skills_id_seq    SEQUENCE     �   CREATE SEQUENCE public.skills_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.skills_id_seq;
       public          postgres    false    222            �           0    0    skills_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.skills_id_seq OWNED BY public.skills.id;
          public          postgres    false    223            �            1259    28911    special_abilities    TABLE     �   CREATE TABLE public.special_abilities (
    id integer DEFAULT nextval('public.skills_id_seq'::regclass) NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL
);
 %   DROP TABLE public.special_abilities;
       public         heap    postgres    false    223            �            1259    28917    special_abilities_monsters    TABLE     �   CREATE TABLE public.special_abilities_monsters (
    id integer DEFAULT nextval('public.skills_id_seq'::regclass) NOT NULL,
    special_abilities_id integer,
    monster_id bigint
);
 .   DROP TABLE public.special_abilities_monsters;
       public         heap    postgres    false    223            �            1259    28921    speed    TABLE     �   CREATE TABLE public.speed (
    walk smallint,
    burrow smallint,
    climb smallint,
    fly smallint,
    swim smallint,
    hover boolean,
    id integer NOT NULL
);
    DROP TABLE public.speed;
       public         heap    postgres    false            �            1259    28924    speed_id_seq    SEQUENCE     �   CREATE SEQUENCE public.speed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.speed_id_seq;
       public          postgres    false    226            �           0    0    speed_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.speed_id_seq OWNED BY public.speed.id;
          public          postgres    false    227            �            1259    28925    spells_list    TABLE     �  CREATE TABLE public.spells_list (
    slug character varying NOT NULL,
    name character varying NOT NULL,
    description text NOT NULL,
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
    id integer NOT NULL,
    higher_level character varying
);
    DROP TABLE public.spells_list;
       public         heap    postgres    false            �            1259    28930    spells_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.spells_list_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.spells_list_id_seq;
       public          postgres    false    228            �           0    0    spells_list_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.spells_list_id_seq OWNED BY public.spells_list.id;
          public          postgres    false    229            �            1259    28931    spells_list_monsters    TABLE     x   CREATE TABLE public.spells_list_monsters (
    monster_id bigint,
    spells_list_id bigint,
    id integer NOT NULL
);
 (   DROP TABLE public.spells_list_monsters;
       public         heap    postgres    false            �            1259    28934    spells_list_monsters_id_seq    SEQUENCE     �   CREATE SEQUENCE public.spells_list_monsters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.spells_list_monsters_id_seq;
       public          postgres    false    230            �           0    0    spells_list_monsters_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.spells_list_monsters_id_seq OWNED BY public.spells_list_monsters.id;
          public          postgres    false    231            �           2604    28935 
   actions id    DEFAULT     h   ALTER TABLE ONLY public.actions ALTER COLUMN id SET DEFAULT nextval('public.actions_id_seq'::regclass);
 9   ALTER TABLE public.actions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �           2604    28936    legendary_actions id    DEFAULT     {   ALTER TABLE ONLY public.legendary_actions ALTER COLUMN id SET DEFAULT nextval('public.legendary_action_id_seq'::regclass);
 C   ALTER TABLE public.legendary_actions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216            �           2604    28937    monsters id    DEFAULT     j   ALTER TABLE ONLY public.monsters ALTER COLUMN id SET DEFAULT nextval('public.monsters_id_seq'::regclass);
 :   ALTER TABLE public.monsters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218            �           2604    28938    reactions id    DEFAULT     l   ALTER TABLE ONLY public.reactions ALTER COLUMN id SET DEFAULT nextval('public.reactions_id_seq'::regclass);
 ;   ALTER TABLE public.reactions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    28939 	   skills id    DEFAULT     f   ALTER TABLE ONLY public.skills ALTER COLUMN id SET DEFAULT nextval('public.skills_id_seq'::regclass);
 8   ALTER TABLE public.skills ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    28940    speed id    DEFAULT     d   ALTER TABLE ONLY public.speed ALTER COLUMN id SET DEFAULT nextval('public.speed_id_seq'::regclass);
 7   ALTER TABLE public.speed ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    28941    spells_list id    DEFAULT     p   ALTER TABLE ONLY public.spells_list ALTER COLUMN id SET DEFAULT nextval('public.spells_list_id_seq'::regclass);
 =   ALTER TABLE public.spells_list ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    28942    spells_list_monsters id    DEFAULT     �   ALTER TABLE ONLY public.spells_list_monsters ALTER COLUMN id SET DEFAULT nextval('public.spells_list_monsters_id_seq'::regclass);
 F   ALTER TABLE public.spells_list_monsters ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            v          0    28883    actions 
   TABLE DATA           m   COPY public.actions (description, damage_dice, attack_bonus, monster_id, id, damage_bonus, name) FROM stdin;
    public          postgres    false    214   �c       x          0    28889    legendary_actions 
   TABLE DATA           N   COPY public.legendary_actions (id, name, description, monster_id) FROM stdin;
    public          postgres    false    216   �c       z          0    28895    monsters 
   TABLE DATA           �  COPY public.monsters (name, size, type, subtype, groupp, strength, dexterity, constitution, intelligence, wisdom, charisma, strength_save, dexterity_save, constitution_save, intelligence_save, wisdom_save, charisma_save, perception, damage_vulnerabilities, damage_resistances, damage_immunities, condition_immunities, senses, languages, page_no, img_main, slug, id, skill_id, speed_id, challenge_rating) FROM stdin;
    public          postgres    false    218   	d       |          0    28901 	   reactions 
   TABLE DATA           F   COPY public.reactions (name, description, monster_id, id) FROM stdin;
    public          postgres    false    220   &d       ~          0    28907    skills 
   TABLE DATA           �   COPY public.skills (athletics, perception, stealth, intimidation, history, deception, performance, persuasion, medicine, religion, insight, arcana, acrobatics, survival, investigation, nature, id) FROM stdin;
    public          postgres    false    222   Cd       �          0    28911    special_abilities 
   TABLE DATA           B   COPY public.special_abilities (id, name, description) FROM stdin;
    public          postgres    false    224   `d       �          0    28917    special_abilities_monsters 
   TABLE DATA           Z   COPY public.special_abilities_monsters (id, special_abilities_id, monster_id) FROM stdin;
    public          postgres    false    225   }d       �          0    28921    speed 
   TABLE DATA           J   COPY public.speed (walk, burrow, climb, fly, swim, hover, id) FROM stdin;
    public          postgres    false    226   �d       �          0    28925    spells_list 
   TABLE DATA           �  COPY public.spells_list (slug, name, description, page, range, largest_range_sort, components, requires_verbal_components, requires_somatic_components, requires_material_components, material, can_be_cast_as_ritual, ritual, duration, concentration, requires_concentration, casting_time, level, level_int, spell_level, school, dnd_class, archetype, circles, id, higher_level) FROM stdin;
    public          postgres    false    228   �d       �          0    28931    spells_list_monsters 
   TABLE DATA           N   COPY public.spells_list_monsters (monster_id, spells_list_id, id) FROM stdin;
    public          postgres    false    230   �d       �           0    0    actions_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.actions_id_seq', 19638, true);
          public          postgres    false    215            �           0    0    legendary_action_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.legendary_action_id_seq', 1791, true);
          public          postgres    false    217            �           0    0    monsters_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.monsters_id_seq', 6200, true);
          public          postgres    false    219            �           0    0    reactions_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.reactions_id_seq', 873, true);
          public          postgres    false    221            �           0    0    skills_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.skills_id_seq', 37721, true);
          public          postgres    false    223            �           0    0    speed_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.speed_id_seq', 6200, true);
          public          postgres    false    227            �           0    0    spells_list_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.spells_list_id_seq', 1386, true);
          public          postgres    false    229            �           0    0    spells_list_monsters_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.spells_list_monsters_id_seq', 1386, true);
          public          postgres    false    231            �           2606    28946    actions actions_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.actions
    ADD CONSTRAINT actions_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.actions DROP CONSTRAINT actions_pkey;
       public            postgres    false    214            �           2606    28948 '   legendary_actions legendary_action_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.legendary_actions
    ADD CONSTRAINT legendary_action_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.legendary_actions DROP CONSTRAINT legendary_action_pkey;
       public            postgres    false    216            �           2606    28950    monsters monsters_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.monsters
    ADD CONSTRAINT monsters_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.monsters DROP CONSTRAINT monsters_pkey;
       public            postgres    false    218            �           2606    28952    monsters monsters_slug_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.monsters
    ADD CONSTRAINT monsters_slug_key UNIQUE (slug);
 D   ALTER TABLE ONLY public.monsters DROP CONSTRAINT monsters_slug_key;
       public            postgres    false    218            �           2606    28956    reactions reactions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.reactions
    ADD CONSTRAINT reactions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.reactions DROP CONSTRAINT reactions_pkey;
       public            postgres    false    220            �           2606    28958    skills skills_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.skills
    ADD CONSTRAINT skills_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.skills DROP CONSTRAINT skills_pkey;
       public            postgres    false    222            �           2606    28960    spells_list slug_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.spells_list
    ADD CONSTRAINT slug_unique UNIQUE (slug);
 A   ALTER TABLE ONLY public.spells_list DROP CONSTRAINT slug_unique;
       public            postgres    false    228            �           2606    28962 :   special_abilities_monsters special_abilities_monsters_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.special_abilities_monsters
    ADD CONSTRAINT special_abilities_monsters_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.special_abilities_monsters DROP CONSTRAINT special_abilities_monsters_pkey;
       public            postgres    false    225            �           2606    28964 ,   special_abilities special_abilities_name_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.special_abilities
    ADD CONSTRAINT special_abilities_name_key UNIQUE (name);
 V   ALTER TABLE ONLY public.special_abilities DROP CONSTRAINT special_abilities_name_key;
       public            postgres    false    224            �           2606    28966 (   special_abilities special_abilities_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.special_abilities
    ADD CONSTRAINT special_abilities_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.special_abilities DROP CONSTRAINT special_abilities_pkey;
       public            postgres    false    224            �           2606    28968    speed speed_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.speed
    ADD CONSTRAINT speed_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.speed DROP CONSTRAINT speed_pkey;
       public            postgres    false    226            �           2606    28970 .   spells_list_monsters spells_list_monsters_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.spells_list_monsters
    ADD CONSTRAINT spells_list_monsters_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.spells_list_monsters DROP CONSTRAINT spells_list_monsters_pkey;
       public            postgres    false    230            �           2606    28972    spells_list spells_list_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.spells_list
    ADD CONSTRAINT spells_list_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.spells_list DROP CONSTRAINT spells_list_pkey;
       public            postgres    false    228            �           2606    28973    actions fk_monster    FK CONSTRAINT     w   ALTER TABLE ONLY public.actions
    ADD CONSTRAINT fk_monster FOREIGN KEY (monster_id) REFERENCES public.monsters(id);
 <   ALTER TABLE ONLY public.actions DROP CONSTRAINT fk_monster;
       public          postgres    false    218    3274    214            �           2606    28978    reactions fk_monster    FK CONSTRAINT     y   ALTER TABLE ONLY public.reactions
    ADD CONSTRAINT fk_monster FOREIGN KEY (monster_id) REFERENCES public.monsters(id);
 >   ALTER TABLE ONLY public.reactions DROP CONSTRAINT fk_monster;
       public          postgres    false    3274    218    220            �           2606    28983 %   special_abilities_monsters fk_monster    FK CONSTRAINT     �   ALTER TABLE ONLY public.special_abilities_monsters
    ADD CONSTRAINT fk_monster FOREIGN KEY (monster_id) REFERENCES public.monsters(id);
 O   ALTER TABLE ONLY public.special_abilities_monsters DROP CONSTRAINT fk_monster;
       public          postgres    false    218    225    3274            �           2606    28988    spells_list_monsters fk_monster    FK CONSTRAINT     �   ALTER TABLE ONLY public.spells_list_monsters
    ADD CONSTRAINT fk_monster FOREIGN KEY (monster_id) REFERENCES public.monsters(id);
 I   ALTER TABLE ONLY public.spells_list_monsters DROP CONSTRAINT fk_monster;
       public          postgres    false    218    230    3274            �           2606    28993    monsters fk_skill    FK CONSTRAINT     r   ALTER TABLE ONLY public.monsters
    ADD CONSTRAINT fk_skill FOREIGN KEY (skill_id) REFERENCES public.skills(id);
 ;   ALTER TABLE ONLY public.monsters DROP CONSTRAINT fk_skill;
       public          postgres    false    222    218    3280            �           2606    28998    spells_list_monsters fk_sl    FK CONSTRAINT     �   ALTER TABLE ONLY public.spells_list_monsters
    ADD CONSTRAINT fk_sl FOREIGN KEY (spells_list_id) REFERENCES public.spells_list(id);
 D   ALTER TABLE ONLY public.spells_list_monsters DROP CONSTRAINT fk_sl;
       public          postgres    false    228    230    3292            �           2606    29003    monsters fk_speed    FK CONSTRAINT     q   ALTER TABLE ONLY public.monsters
    ADD CONSTRAINT fk_speed FOREIGN KEY (speed_id) REFERENCES public.speed(id);
 ;   ALTER TABLE ONLY public.monsters DROP CONSTRAINT fk_speed;
       public          postgres    false    226    218    3288            �           2606    29008 2   legendary_actions legendary_action_monster_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.legendary_actions
    ADD CONSTRAINT legendary_action_monster_id_fkey FOREIGN KEY (monster_id) REFERENCES public.monsters(id);
 \   ALTER TABLE ONLY public.legendary_actions DROP CONSTRAINT legendary_action_monster_id_fkey;
       public          postgres    false    218    216    3274            �           2606    29013 O   special_abilities_monsters special_abilities_monsters_special_abilities_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.special_abilities_monsters
    ADD CONSTRAINT special_abilities_monsters_special_abilities_id_fkey FOREIGN KEY (special_abilities_id) REFERENCES public.special_abilities(id);
 y   ALTER TABLE ONLY public.special_abilities_monsters DROP CONSTRAINT special_abilities_monsters_special_abilities_id_fkey;
       public          postgres    false    224    225    3284            v      x������ � �      x      x������ � �      z      x������ � �      |      x������ � �      ~      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     