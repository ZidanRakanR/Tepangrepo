toc.dat                                                                                             0000600 0004000 0002000 00000130330 14345375623 0014453 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP           /                z            cafe    15.0    15.0 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         �           1262    33023    cafe    DATABASE     ~   CREATE DATABASE cafe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';
    DROP DATABASE cafe;
                postgres    false         �            1259    33024    event_bookings    TABLE     z  CREATE TABLE public.event_bookings (
    id integer NOT NULL,
    number_of_tickets integer NOT NULL,
    total_cost integer NOT NULL,
    status boolean DEFAULT true NOT NULL,
    payment boolean DEFAULT false NOT NULL,
    user_id integer NOT NULL,
    event_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE public.event_bookings;
       public         heap    postgres    false         �            1259    33029    event_bookings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.event_bookings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.event_bookings_id_seq;
       public          postgres    false    214         �           0    0    event_bookings_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.event_bookings_id_seq OWNED BY public.event_bookings.id;
          public          postgres    false    215         �            1259    33030    events    TABLE     �  CREATE TABLE public.events (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    image character varying(200) NOT NULL,
    date date NOT NULL,
    venue character varying(50) NOT NULL,
    price integer NOT NULL,
    capacity integer NOT NULL,
    description text,
    status boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.events;
       public         heap    postgres    false         �            1259    33036    events_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public          postgres    false    216         �           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
          public          postgres    false    217         �            1259    33037 
   facilities    TABLE       CREATE TABLE public.facilities (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    icon character varying(200) NOT NULL,
    status boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.facilities;
       public         heap    postgres    false         �            1259    33041    facilities_id_seq    SEQUENCE     �   CREATE SEQUENCE public.facilities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.facilities_id_seq;
       public          postgres    false    218         �           0    0    facilities_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.facilities_id_seq OWNED BY public.facilities.id;
          public          postgres    false    219         �            1259    33042    facility_room_type    TABLE     �   CREATE TABLE public.facility_room_type (
    facility_id integer NOT NULL,
    room_type_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 &   DROP TABLE public.facility_room_type;
       public         heap    postgres    false         �            1259    33045    food_orders    TABLE     
  CREATE TABLE public.food_orders (
    food_id integer NOT NULL,
    room_booking_id integer NOT NULL,
    quantity integer DEFAULT 1 NOT NULL,
    cost integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.food_orders;
       public         heap    postgres    false         �            1259    33049    foods    TABLE     �  CREATE TABLE public.foods (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    type character varying(255) NOT NULL,
    image character varying(200) NOT NULL,
    price numeric(8,2) NOT NULL,
    description character varying(200),
    status boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT foods_type_check CHECK (((type)::text = ANY (ARRAY[('Appetizer'::character varying)::text, ('Soup'::character varying)::text, ('Salad'::character varying)::text, ('Main Course'::character varying)::text, ('Dessert'::character varying)::text])))
);
    DROP TABLE public.foods;
       public         heap    postgres    false         �            1259    33056    foods_id_seq    SEQUENCE     �   CREATE SEQUENCE public.foods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.foods_id_seq;
       public          postgres    false    222         �           0    0    foods_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.foods_id_seq OWNED BY public.foods.id;
          public          postgres    false    223         �            1259    33057    images    TABLE     _  CREATE TABLE public.images (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    caption character varying(30),
    is_primary boolean DEFAULT false NOT NULL,
    status boolean DEFAULT true NOT NULL,
    room_type_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.images;
       public         heap    postgres    false         �            1259    33062    images_id_seq    SEQUENCE     �   CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.images_id_seq;
       public          postgres    false    224         �           0    0    images_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;
          public          postgres    false    225         �            1259    33063 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(191) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false         �            1259    33066    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    226         �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    227         �            1259    33067    pages    TABLE     6  CREATE TABLE public.pages (
    id integer NOT NULL,
    title character varying(15) NOT NULL,
    url_title character varying(20) NOT NULL,
    description text NOT NULL,
    status boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.pages;
       public         heap    postgres    false         �            1259    33073    pages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.pages_id_seq;
       public          postgres    false    228         �           0    0    pages_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;
          public          postgres    false    229         �            1259    33074    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(191) NOT NULL,
    token character varying(191) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    postgres    false         �            1259    33077    reviews    TABLE     M  CREATE TABLE public.reviews (
    id integer NOT NULL,
    review character varying(100) NOT NULL,
    rating character varying(255) NOT NULL,
    approval_status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    room_booking_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT reviews_approval_status_check CHECK (((approval_status)::text = ANY (ARRAY[('pending'::character varying)::text, ('approved'::character varying)::text, ('rejected'::character varying)::text]))),
    CONSTRAINT reviews_rating_check CHECK (((rating)::text = ANY (ARRAY[('0'::character varying)::text, ('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text])))
);
    DROP TABLE public.reviews;
       public         heap    postgres    false         �            1259    33085    reviews_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.reviews_id_seq;
       public          postgres    false    231         �           0    0    reviews_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;
          public          postgres    false    232         �            1259    33086    room_bookings    TABLE     �  CREATE TABLE public.room_bookings (
    id integer NOT NULL,
    room_id integer NOT NULL,
    user_id integer NOT NULL,
    arrival_date date NOT NULL,
    departure_date date,
    room_cost integer NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    payment boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT room_bookings_status_check CHECK (((status)::text = ANY (ARRAY[('pending'::character varying)::text, ('checked_in'::character varying)::text, ('checked_out'::character varying)::text, ('cancelled'::character varying)::text])))
);
 !   DROP TABLE public.room_bookings;
       public         heap    postgres    false         �            1259    33092    room_bookings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.room_bookings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.room_bookings_id_seq;
       public          postgres    false    233         �           0    0    room_bookings_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.room_bookings_id_seq OWNED BY public.room_bookings.id;
          public          postgres    false    234         �            1259    33093 
   room_types    TABLE     �  CREATE TABLE public.room_types (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    cost_per_day integer NOT NULL,
    discount_percentage integer DEFAULT 0 NOT NULL,
    size integer,
    max_adult integer DEFAULT 0,
    max_child integer DEFAULT 0,
    description text,
    room_service boolean DEFAULT true NOT NULL,
    status boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.room_types;
       public         heap    postgres    false         �            1259    33103    room_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.room_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.room_types_id_seq;
       public          postgres    false    235         �           0    0    room_types_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.room_types_id_seq OWNED BY public.room_types.id;
          public          postgres    false    236         �            1259    33104    rooms    TABLE     ]  CREATE TABLE public.rooms (
    id integer NOT NULL,
    room_number character varying(5) NOT NULL,
    description text NOT NULL,
    available boolean DEFAULT true NOT NULL,
    status boolean DEFAULT true NOT NULL,
    room_type_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.rooms;
       public         heap    postgres    false         �            1259    33111    rooms_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.rooms_id_seq;
       public          postgres    false    237         �           0    0    rooms_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.rooms_id_seq OWNED BY public.rooms.id;
          public          postgres    false    238         �            1259    33112    slider    TABLE     �  CREATE TABLE public.slider (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    small_title character varying(30),
    big_title character varying(30),
    description character varying(200),
    link character varying(100),
    link_text character varying(15),
    status boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    link_maps character varying(255),
    link_textmaps character varying(15)
);
    DROP TABLE public.slider;
       public         heap    postgres    false         �            1259    33118    slider_id_seq    SEQUENCE     �   CREATE SEQUENCE public.slider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.slider_id_seq;
       public          postgres    false    239         �           0    0    slider_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.slider_id_seq OWNED BY public.slider.id;
          public          postgres    false    240         �            1259    33119    subscribers    TABLE     �   CREATE TABLE public.subscribers (
    id integer NOT NULL,
    email character varying(191) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.subscribers;
       public         heap    postgres    false         �            1259    33122    subscribers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subscribers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.subscribers_id_seq;
       public          postgres    false    241         �           0    0    subscribers_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.subscribers_id_seq OWNED BY public.subscribers.id;
          public          postgres    false    242         �            1259    33123    users    TABLE       CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(25),
    last_name character varying(25),
    gender character varying(255),
    phone character varying(15),
    address text,
    email character varying(50),
    password character varying(200),
    avatar character varying(200),
    about character varying(300),
    facebook_id character varying(191),
    twitter_id character varying(191),
    google_id character varying(191),
    role character varying(255) DEFAULT 'user'::character varying NOT NULL,
    status boolean DEFAULT true NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT users_gender_check CHECK (((gender)::text = ANY (ARRAY[('male'::character varying)::text, ('female'::character varying)::text, ('others'::character varying)::text]))),
    CONSTRAINT users_role_check CHECK (((role)::text = ANY (ARRAY[('admin'::character varying)::text, ('user'::character varying)::text])))
);
    DROP TABLE public.users;
       public         heap    postgres    false         �            1259    33132    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    243         �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    244         �           2604    33133    event_bookings id    DEFAULT     v   ALTER TABLE ONLY public.event_bookings ALTER COLUMN id SET DEFAULT nextval('public.event_bookings_id_seq'::regclass);
 @   ALTER TABLE public.event_bookings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214         �           2604    33134 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216         �           2604    33135    facilities id    DEFAULT     n   ALTER TABLE ONLY public.facilities ALTER COLUMN id SET DEFAULT nextval('public.facilities_id_seq'::regclass);
 <   ALTER TABLE public.facilities ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218         �           2604    33136    foods id    DEFAULT     d   ALTER TABLE ONLY public.foods ALTER COLUMN id SET DEFAULT nextval('public.foods_id_seq'::regclass);
 7   ALTER TABLE public.foods ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222         �           2604    33137 	   images id    DEFAULT     f   ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);
 8   ALTER TABLE public.images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224         �           2604    33138    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226         �           2604    33139    pages id    DEFAULT     d   ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);
 7   ALTER TABLE public.pages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228         �           2604    33140 
   reviews id    DEFAULT     h   ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);
 9   ALTER TABLE public.reviews ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231         �           2604    33141    room_bookings id    DEFAULT     t   ALTER TABLE ONLY public.room_bookings ALTER COLUMN id SET DEFAULT nextval('public.room_bookings_id_seq'::regclass);
 ?   ALTER TABLE public.room_bookings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    233         �           2604    33142    room_types id    DEFAULT     n   ALTER TABLE ONLY public.room_types ALTER COLUMN id SET DEFAULT nextval('public.room_types_id_seq'::regclass);
 <   ALTER TABLE public.room_types ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    235         �           2604    33143    rooms id    DEFAULT     d   ALTER TABLE ONLY public.rooms ALTER COLUMN id SET DEFAULT nextval('public.rooms_id_seq'::regclass);
 7   ALTER TABLE public.rooms ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    237         �           2604    33144 	   slider id    DEFAULT     f   ALTER TABLE ONLY public.slider ALTER COLUMN id SET DEFAULT nextval('public.slider_id_seq'::regclass);
 8   ALTER TABLE public.slider ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    240    239         �           2604    33145    subscribers id    DEFAULT     p   ALTER TABLE ONLY public.subscribers ALTER COLUMN id SET DEFAULT nextval('public.subscribers_id_seq'::regclass);
 =   ALTER TABLE public.subscribers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    242    241         �           2604    33146    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    244    243         �          0    33024    event_bookings 
   TABLE DATA           �   COPY public.event_bookings (id, number_of_tickets, total_cost, status, payment, user_id, event_id, created_at, updated_at) FROM stdin;
    public          postgres    false    214       3501.dat �          0    33030    events 
   TABLE DATA           |   COPY public.events (id, name, image, date, venue, price, capacity, description, status, created_at, updated_at) FROM stdin;
    public          postgres    false    216       3503.dat �          0    33037 
   facilities 
   TABLE DATA           T   COPY public.facilities (id, name, icon, status, created_at, updated_at) FROM stdin;
    public          postgres    false    218       3505.dat �          0    33042    facility_room_type 
   TABLE DATA           _   COPY public.facility_room_type (facility_id, room_type_id, created_at, updated_at) FROM stdin;
    public          postgres    false    220       3507.dat �          0    33045    food_orders 
   TABLE DATA           g   COPY public.food_orders (food_id, room_booking_id, quantity, cost, created_at, updated_at) FROM stdin;
    public          postgres    false    221       3508.dat �          0    33049    foods 
   TABLE DATA           j   COPY public.foods (id, name, type, image, price, description, status, created_at, updated_at) FROM stdin;
    public          postgres    false    222       3509.dat �          0    33057    images 
   TABLE DATA           m   COPY public.images (id, name, caption, is_primary, status, room_type_id, created_at, updated_at) FROM stdin;
    public          postgres    false    224       3511.dat �          0    33063 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    226       3513.dat �          0    33067    pages 
   TABLE DATA           b   COPY public.pages (id, title, url_title, description, status, created_at, updated_at) FROM stdin;
    public          postgres    false    228       3515.dat �          0    33074    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    230       3517.dat �          0    33077    reviews 
   TABLE DATA           o   COPY public.reviews (id, review, rating, approval_status, room_booking_id, created_at, updated_at) FROM stdin;
    public          postgres    false    231       3518.dat �          0    33086    room_bookings 
   TABLE DATA           �   COPY public.room_bookings (id, room_id, user_id, arrival_date, departure_date, room_cost, status, payment, created_at, updated_at) FROM stdin;
    public          postgres    false    233       3520.dat �          0    33093 
   room_types 
   TABLE DATA           �   COPY public.room_types (id, name, cost_per_day, discount_percentage, size, max_adult, max_child, description, room_service, status, created_at, updated_at) FROM stdin;
    public          postgres    false    235       3522.dat �          0    33104    rooms 
   TABLE DATA           v   COPY public.rooms (id, room_number, description, available, status, room_type_id, created_at, updated_at) FROM stdin;
    public          postgres    false    237       3524.dat �          0    33112    slider 
   TABLE DATA           �   COPY public.slider (id, name, small_title, big_title, description, link, link_text, status, created_at, updated_at, link_maps, link_textmaps) FROM stdin;
    public          postgres    false    239       3526.dat �          0    33119    subscribers 
   TABLE DATA           H   COPY public.subscribers (id, email, created_at, updated_at) FROM stdin;
    public          postgres    false    241       3528.dat �          0    33123    users 
   TABLE DATA           �   COPY public.users (id, first_name, last_name, gender, phone, address, email, password, avatar, about, facebook_id, twitter_id, google_id, role, status, remember_token, created_at, updated_at) FROM stdin;
    public          postgres    false    243       3530.dat �           0    0    event_bookings_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.event_bookings_id_seq', 1, false);
          public          postgres    false    215         �           0    0    events_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.events_id_seq', 1, true);
          public          postgres    false    217         �           0    0    facilities_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.facilities_id_seq', 12, true);
          public          postgres    false    219         �           0    0    foods_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.foods_id_seq', 1, true);
          public          postgres    false    223         �           0    0    images_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.images_id_seq', 20, true);
          public          postgres    false    225         �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 80, true);
          public          postgres    false    227         �           0    0    pages_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.pages_id_seq', 1, true);
          public          postgres    false    229         �           0    0    reviews_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.reviews_id_seq', 1, false);
          public          postgres    false    232         �           0    0    room_bookings_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.room_bookings_id_seq', 2, true);
          public          postgres    false    234         �           0    0    room_types_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.room_types_id_seq', 6, true);
          public          postgres    false    236         �           0    0    rooms_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.rooms_id_seq', 6, true);
          public          postgres    false    238         �           0    0    slider_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.slider_id_seq', 9, true);
          public          postgres    false    240         �           0    0    subscribers_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.subscribers_id_seq', 1, false);
          public          postgres    false    242         �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 11, true);
          public          postgres    false    244         �           2606    33148 "   event_bookings event_bookings_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.event_bookings
    ADD CONSTRAINT event_bookings_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.event_bookings DROP CONSTRAINT event_bookings_pkey;
       public            postgres    false    214         �           2606    33150    events events_name_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_name_unique UNIQUE (name);
 C   ALTER TABLE ONLY public.events DROP CONSTRAINT events_name_unique;
       public            postgres    false    216         �           2606    33152    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public            postgres    false    216         �           2606    33154 !   facilities facilities_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.facilities
    ADD CONSTRAINT facilities_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.facilities DROP CONSTRAINT facilities_name_unique;
       public            postgres    false    218         �           2606    33156    facilities facilities_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.facilities
    ADD CONSTRAINT facilities_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.facilities DROP CONSTRAINT facilities_pkey;
       public            postgres    false    218         �           2606    33158    foods foods_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.foods
    ADD CONSTRAINT foods_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.foods DROP CONSTRAINT foods_pkey;
       public            postgres    false    222         �           2606    33160    images images_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.images DROP CONSTRAINT images_pkey;
       public            postgres    false    224         �           2606    33162    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    226         �           2606    33164    pages pages_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.pages DROP CONSTRAINT pages_pkey;
       public            postgres    false    228         �           2606    33166    reviews reviews_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.reviews DROP CONSTRAINT reviews_pkey;
       public            postgres    false    231         �           2606    33168     room_bookings room_bookings_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.room_bookings
    ADD CONSTRAINT room_bookings_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.room_bookings DROP CONSTRAINT room_bookings_pkey;
       public            postgres    false    233         �           2606    33170 !   room_types room_types_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.room_types
    ADD CONSTRAINT room_types_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.room_types DROP CONSTRAINT room_types_name_unique;
       public            postgres    false    235                     2606    33172    room_types room_types_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.room_types
    ADD CONSTRAINT room_types_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.room_types DROP CONSTRAINT room_types_pkey;
       public            postgres    false    235                    2606    33174    rooms rooms_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.rooms DROP CONSTRAINT rooms_pkey;
       public            postgres    false    237                    2606    33176    rooms rooms_room_number_unique 
   CONSTRAINT     `   ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_room_number_unique UNIQUE (room_number);
 H   ALTER TABLE ONLY public.rooms DROP CONSTRAINT rooms_room_number_unique;
       public            postgres    false    237                    2606    33178    slider slider_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.slider
    ADD CONSTRAINT slider_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.slider DROP CONSTRAINT slider_pkey;
       public            postgres    false    239         	           2606    33180    subscribers subscribers_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.subscribers
    ADD CONSTRAINT subscribers_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.subscribers DROP CONSTRAINT subscribers_pkey;
       public            postgres    false    241                    2606    33182    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    243                    2606    33184    users users_facebook_id_unique 
   CONSTRAINT     `   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_facebook_id_unique UNIQUE (facebook_id);
 H   ALTER TABLE ONLY public.users DROP CONSTRAINT users_facebook_id_unique;
       public            postgres    false    243                    2606    33186    users users_google_id_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_google_id_unique UNIQUE (google_id);
 F   ALTER TABLE ONLY public.users DROP CONSTRAINT users_google_id_unique;
       public            postgres    false    243                    2606    33188    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    243                    2606    33190    users users_twitter_id_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_twitter_id_unique UNIQUE (twitter_id);
 G   ALTER TABLE ONLY public.users DROP CONSTRAINT users_twitter_id_unique;
       public            postgres    false    243         �           1259    33191    event_bookings_event_id_index    INDEX     \   CREATE INDEX event_bookings_event_id_index ON public.event_bookings USING btree (event_id);
 1   DROP INDEX public.event_bookings_event_id_index;
       public            postgres    false    214         �           1259    33192    event_bookings_user_id_index    INDEX     Z   CREATE INDEX event_bookings_user_id_index ON public.event_bookings USING btree (user_id);
 0   DROP INDEX public.event_bookings_user_id_index;
       public            postgres    false    214         �           1259    33193 $   facility_room_type_facility_id_index    INDEX     j   CREATE INDEX facility_room_type_facility_id_index ON public.facility_room_type USING btree (facility_id);
 8   DROP INDEX public.facility_room_type_facility_id_index;
       public            postgres    false    220         �           1259    33194 %   facility_room_type_room_type_id_index    INDEX     l   CREATE INDEX facility_room_type_room_type_id_index ON public.facility_room_type USING btree (room_type_id);
 9   DROP INDEX public.facility_room_type_room_type_id_index;
       public            postgres    false    220         �           1259    33195    food_orders_food_id_index    INDEX     T   CREATE INDEX food_orders_food_id_index ON public.food_orders USING btree (food_id);
 -   DROP INDEX public.food_orders_food_id_index;
       public            postgres    false    221         �           1259    33196 !   food_orders_room_booking_id_index    INDEX     d   CREATE INDEX food_orders_room_booking_id_index ON public.food_orders USING btree (room_booking_id);
 5   DROP INDEX public.food_orders_room_booking_id_index;
       public            postgres    false    221         �           1259    33197    images_room_type_id_index    INDEX     T   CREATE INDEX images_room_type_id_index ON public.images USING btree (room_type_id);
 -   DROP INDEX public.images_room_type_id_index;
       public            postgres    false    224         �           1259    33198    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    230         �           1259    33199    reviews_room_booking_id_index    INDEX     \   CREATE INDEX reviews_room_booking_id_index ON public.reviews USING btree (room_booking_id);
 1   DROP INDEX public.reviews_room_booking_id_index;
       public            postgres    false    231         �           1259    33200    room_bookings_room_id_index    INDEX     X   CREATE INDEX room_bookings_room_id_index ON public.room_bookings USING btree (room_id);
 /   DROP INDEX public.room_bookings_room_id_index;
       public            postgres    false    233         �           1259    33201    room_bookings_user_id_index    INDEX     X   CREATE INDEX room_bookings_user_id_index ON public.room_bookings USING btree (user_id);
 /   DROP INDEX public.room_bookings_user_id_index;
       public            postgres    false    233                    1259    33202    rooms_room_type_id_index    INDEX     R   CREATE INDEX rooms_room_type_id_index ON public.rooms USING btree (room_type_id);
 ,   DROP INDEX public.rooms_room_type_id_index;
       public            postgres    false    237                    2606    33203 .   event_bookings event_bookings_event_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_bookings
    ADD CONSTRAINT event_bookings_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;
 X   ALTER TABLE ONLY public.event_bookings DROP CONSTRAINT event_bookings_event_id_foreign;
       public          postgres    false    216    3299    214                    2606    33208 -   event_bookings event_bookings_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.event_bookings
    ADD CONSTRAINT event_bookings_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.event_bookings DROP CONSTRAINT event_bookings_user_id_foreign;
       public          postgres    false    243    214    3345                    2606    33213 9   facility_room_type facility_room_type_facility_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.facility_room_type
    ADD CONSTRAINT facility_room_type_facility_id_foreign FOREIGN KEY (facility_id) REFERENCES public.facilities(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.facility_room_type DROP CONSTRAINT facility_room_type_facility_id_foreign;
       public          postgres    false    3303    220    218                    2606    33218 :   facility_room_type facility_room_type_room_type_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.facility_room_type
    ADD CONSTRAINT facility_room_type_room_type_id_foreign FOREIGN KEY (room_type_id) REFERENCES public.room_types(id) ON UPDATE CASCADE ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.facility_room_type DROP CONSTRAINT facility_room_type_room_type_id_foreign;
       public          postgres    false    220    235    3328                    2606    33223 '   food_orders food_orders_food_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.food_orders
    ADD CONSTRAINT food_orders_food_id_foreign FOREIGN KEY (food_id) REFERENCES public.foods(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.food_orders DROP CONSTRAINT food_orders_food_id_foreign;
       public          postgres    false    221    222    3309                    2606    33228 /   food_orders food_orders_room_booking_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.food_orders
    ADD CONSTRAINT food_orders_room_booking_id_foreign FOREIGN KEY (room_booking_id) REFERENCES public.room_bookings(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.food_orders DROP CONSTRAINT food_orders_room_booking_id_foreign;
       public          postgres    false    3322    221    233                    2606    33233 "   images images_room_type_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_room_type_id_foreign FOREIGN KEY (room_type_id) REFERENCES public.room_types(id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY public.images DROP CONSTRAINT images_room_type_id_foreign;
       public          postgres    false    235    224    3328                    2606    33238 '   reviews reviews_room_booking_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_room_booking_id_foreign FOREIGN KEY (room_booking_id) REFERENCES public.room_bookings(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.reviews DROP CONSTRAINT reviews_room_booking_id_foreign;
       public          postgres    false    3322    233    231                    2606    33243 +   room_bookings room_bookings_room_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.room_bookings
    ADD CONSTRAINT room_bookings_room_id_foreign FOREIGN KEY (room_id) REFERENCES public.rooms(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.room_bookings DROP CONSTRAINT room_bookings_room_id_foreign;
       public          postgres    false    237    233    3330                    2606    33248 +   room_bookings room_bookings_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.room_bookings
    ADD CONSTRAINT room_bookings_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.room_bookings DROP CONSTRAINT room_bookings_user_id_foreign;
       public          postgres    false    3345    233    243                    2606    33253     rooms rooms_room_type_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_room_type_id_foreign FOREIGN KEY (room_type_id) REFERENCES public.room_types(id) ON UPDATE CASCADE ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.rooms DROP CONSTRAINT rooms_room_type_id_foreign;
       public          postgres    false    235    3328    237                                                                                                                                                                                                                                                                                                                3501.dat                                                                                            0000600 0004000 0002000 00000000005 14345375623 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3503.dat                                                                                            0000600 0004000 0002000 00000000264 14345375623 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Tom Mie Spesial	4KJQJookLOZUqaBzXw1NufNZ5YxNLlF3HG2rEzwF.jpeg	2022-12-17	Bumi Cafe	25000	100	Tom Mie Sesial Acara sampe tanggal 17	t	2022-12-10 04:37:26	2022-12-10 04:37:26
\.


                                                                                                                                                                                                                                                                                                                                            3505.dat                                                                                            0000600 0004000 0002000 00000001206 14345375623 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Mushola	Icon_Mushola.png	t	2022-12-09 18:11:19	\N
2	Room Meeting	Icon_Room_Meeting.png	t	2022-12-09 18:11:19	\N
3	Tempat Sampah	Icon_Tempat_Sampah.png	t	2022-12-09 18:11:19	\N
4	Wc Umum	Icon_WC_Umum.png	t	2022-12-09 18:11:19	\N
5	First Aid Kit	first_aid_kit.png	t	2022-12-09 18:11:19	\N
6	Hair Dryer	hair_dryer.png	t	2022-12-09 18:11:19	\N
7	Mini Bar	mini_bar.png	t	2022-12-09 18:11:19	\N
8	Mini Cooler	mini_cooler.png	t	2022-12-09 18:11:19	\N
9	Parking	parking.png	t	2022-12-09 18:11:19	\N
10	Telephone	telephone.png	t	2022-12-09 18:11:19	\N
11	Television	television.png	t	2022-12-09 18:11:19	\N
12	Wifi	wifi.png	t	2022-12-09 18:11:19	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                          3507.dat                                                                                            0000600 0004000 0002000 00000003073 14345375623 0014267 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	2022-12-09 18:18:15	2022-12-09 18:18:15
3	1	2022-12-09 18:18:15	2022-12-09 18:18:15
4	1	2022-12-09 18:18:15	2022-12-09 18:18:15
5	1	2022-12-09 18:18:15	2022-12-09 18:18:15
9	1	2022-12-09 18:18:15	2022-12-09 18:18:15
12	1	2022-12-09 18:18:15	2022-12-09 18:18:15
1	2	2022-12-09 18:23:38	2022-12-09 18:23:38
4	2	2022-12-09 18:23:38	2022-12-09 18:23:38
5	2	2022-12-09 18:23:38	2022-12-09 18:23:38
12	2	2022-12-09 18:23:38	2022-12-09 18:23:38
2	1	2022-12-09 18:23:52	2022-12-09 18:23:52
1	3	2022-12-09 18:30:59	2022-12-09 18:30:59
2	3	2022-12-09 18:30:59	2022-12-09 18:30:59
3	3	2022-12-09 18:30:59	2022-12-09 18:30:59
4	3	2022-12-09 18:30:59	2022-12-09 18:30:59
5	3	2022-12-09 18:30:59	2022-12-09 18:30:59
9	3	2022-12-09 18:30:59	2022-12-09 18:30:59
12	3	2022-12-09 18:30:59	2022-12-09 18:30:59
1	4	2022-12-09 18:35:17	2022-12-09 18:35:17
3	4	2022-12-09 18:35:17	2022-12-09 18:35:17
4	4	2022-12-09 18:35:17	2022-12-09 18:35:17
5	4	2022-12-09 18:35:17	2022-12-09 18:35:17
9	4	2022-12-09 18:35:17	2022-12-09 18:35:17
12	4	2022-12-09 18:35:17	2022-12-09 18:35:17
1	5	2022-12-09 18:42:01	2022-12-09 18:42:01
2	5	2022-12-09 18:42:01	2022-12-09 18:42:01
3	5	2022-12-09 18:42:01	2022-12-09 18:42:01
4	5	2022-12-09 18:42:01	2022-12-09 18:42:01
5	5	2022-12-09 18:42:01	2022-12-09 18:42:01
12	5	2022-12-09 18:42:01	2022-12-09 18:42:01
1	6	2022-12-10 04:16:54	2022-12-10 04:16:54
2	6	2022-12-10 04:16:54	2022-12-10 04:16:54
3	6	2022-12-10 04:16:54	2022-12-10 04:16:54
4	6	2022-12-10 04:16:54	2022-12-10 04:16:54
5	6	2022-12-10 04:16:54	2022-12-10 04:16:54
12	6	2022-12-10 04:16:54	2022-12-10 04:16:54
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3508.dat                                                                                            0000600 0004000 0002000 00000000005 14345375623 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3509.dat                                                                                            0000600 0004000 0002000 00000000005 14345375623 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3511.dat                                                                                            0000600 0004000 0002000 00000004166 14345375623 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	0tROIv83q2xg3avfbradHzX9i7Cu8GnQ266pmxZL.jpeg	Bumi Cafe	t	t	1	2022-12-09 18:19:06	2022-12-09 18:19:06
2	zld5b9eSv9v6kujzTdfgLAMSWfvjUz3MND0F8j2n.jpeg	Bumi Cafe	f	t	1	2022-12-09 18:19:19	2022-12-09 18:19:19
3	vcyBdG2FEUAK5cpCXArAe27li9aTGhTuqs3NOdoA.jpeg	Bumi Cafe	f	t	1	2022-12-09 18:19:33	2022-12-09 18:19:33
4	ty3VR5B2ys0BBsXjb0RwMPcq02F6fjQiZAK7lgJ7.jpeg	Jemma Cafe	f	t	2	2022-12-09 18:24:39	2022-12-09 18:24:50
5	zHYyx2h9mWa9FPeHHqh2HisH2lBBJQ8irgfB2Ea0.jpeg	Jemma Cafe	t	t	2	2022-12-09 18:24:50	2022-12-09 18:24:50
6	rj8vlU0dguuSpOefYQMsvy24lQiN0e7FGqigPHpG.jpeg	Jemma Cafe	f	t	2	2022-12-09 18:25:05	2022-12-09 18:25:05
7	ggXbXDrHFOKLGQW8lVGuO5G1X8l7GHtEsLys298C.jpeg	Jemma Cafe	f	t	2	2022-12-09 18:25:23	2022-12-09 18:25:23
8	Oc1VDptBmGqvAn9ltVaUmhIFKqe0fcCbkNuK9EWj.jpeg	Mahkota Cafe	t	t	3	2022-12-09 18:31:26	2022-12-09 18:31:26
9	JnNCmZHqoh8krTejzEcsE4G8YyxIgjaAtsiMX2Fh.jpeg	Mahkota Cafe	f	t	3	2022-12-09 18:31:39	2022-12-09 18:31:39
10	I8bnd8hyUuDP7vTciCsC3kJAjfbJ0aU0O3woHQV3.jpeg	Mahkota Cafe	f	t	3	2022-12-09 18:31:53	2022-12-09 18:31:53
11	a7cLq14lZQAXJkFbUhYkvrGTgrg7Yfbl8AH3Q3RC.jpeg	Tanda Kutip	t	t	4	2022-12-09 18:35:44	2022-12-09 18:35:44
12	CWu8CYKuONcv1nXdC3lmkamY6LidJVSzJmJJBOWo.jpeg	Tanda Kutip	f	t	4	2022-12-09 18:35:56	2022-12-09 18:35:56
13	einbQHyJO9gyAZEvkSVT5yBJ8geCOdty364u1Yn5.jpeg	Temu Kunci Cafe	t	t	5	2022-12-09 18:42:43	2022-12-09 18:42:43
14	VPpTstsbpKEmIdpfhEaHl4FwFBz3GbuiKrVPDJI2.jpeg	Temu Kunci Cafe	f	t	5	2022-12-09 18:43:06	2022-12-09 18:43:06
15	NPLqAosQwHodqfuoYq9Uh2C4Cztsv3f2ihENDZ32.jpeg	Temu Kunci Cafe	f	t	5	2022-12-09 18:43:19	2022-12-09 18:43:19
16	AHw4R2gUsAK8Yzcw2M7qI5vx1infsfAqsKqVhfzn.jpeg	Waroeng Kopilogi	t	t	6	2022-12-10 04:17:32	2022-12-10 04:17:32
17	xD7sAzgN4F8CW0AvYSvm0sytFwn4paIB5m7sdWYd.jpeg	Waroeng Kopilogi	f	t	6	2022-12-10 04:17:49	2022-12-10 04:17:49
18	5oQUZi2xF4vwYYETKAdM5hUWtsPIHb1n3jlu8g7w.jpeg	Waroeng Kopilogi	f	t	6	2022-12-10 04:18:07	2022-12-10 04:18:07
19	ENO1h4qEcNjjmwRgkfGOLCpzZNERSecdjM5Mg40x.jpeg	Waroeng Kopilogi	f	t	6	2022-12-10 04:18:23	2022-12-10 04:18:23
20	bjUsDKJRC2oGwBqbtEtV0KksMyT7ryf726lP1Ugn.jpeg	Waroeng Kopilogi	f	t	6	2022-12-10 04:18:24	2022-12-10 04:18:24
\.


                                                                                                                                                                                                                                                                                                                                                                                                          3513.dat                                                                                            0000600 0004000 0002000 00000001350 14345375623 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        65	2014_10_12_000000_create_users_table	1
66	2014_10_12_100000_create_password_resets_table	1
67	2018_03_29_024654_create_slider_table	1
68	2018_03_29_024713_create_facilities_table	1
69	2018_03_29_024753_create_room_types_table	1
70	2018_03_29_024939_create_facility_room_type_table	1
71	2018_03_29_025055_create_images_table	1
72	2018_03_29_025121_create_rooms_table	1
73	2018_03_29_025157_create_room_bookings_table	1
74	2018_03_29_025158_create_reviews_table	1
75	2018_03_29_031146_create_foods_table	1
76	2018_03_29_031207_create_food_orders_table	1
77	2018_04_07_022022_create_events_table	1
78	2018_04_08_025158_create_event_bookings_table	1
79	2018_05_06_035355_create_pages_table	1
80	2018_05_06_050318_create_subscribers_table	1
\.


                                                                                                                                                                                                                                                                                        3515.dat                                                                                            0000600 0004000 0002000 00000000073 14345375623 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	About	about	Tepang is here	t	2022-12-09 18:11:19	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                     3517.dat                                                                                            0000600 0004000 0002000 00000000005 14345375623 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3518.dat                                                                                            0000600 0004000 0002000 00000000005 14345375623 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3520.dat                                                                                            0000600 0004000 0002000 00000000255 14345375623 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	2022-12-11	2022-12-12	43505	pending	f	2022-12-10 13:30:36	2022-12-10 13:30:36
2	1	1	2022-12-12	2022-12-13	43505	pending	f	2022-12-11 08:35:09	2022-12-11 08:35:09
\.


                                                                                                                                                                                                                                                                                                                                                   3522.dat                                                                                            0000600 0004000 0002000 00000004410 14345375623 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	Jemma Cafe	50000	0	100	10	12	Jemma Coffe buka setiap hari mulai pukul 08.00 hingga 24.00, lokasinya berada di tengah pusat kota Garut yakni di Jalan Veteran No. 18, Garut.\r\n\r\nKarena lokasi yang berada di pusat kota, menjadikan Jemma Coffee sering dimanfaatkan untuk menyelenggarakan berbagai kegiatan mulai dari nobar hingga kumpul-kumpul berbagai komunitas.	t	t	2022-12-09 18:23:38	2022-12-09 18:23:38
1	Bumi Cafe	50000	30	100	10	8	Ciri khas dari Bumi Kafe ialah tempatnya yang full kaca dengan hiasan tumbuhan hijau, dan yang menjadi daya tarik utamanya ialah selalu hadirnya live music yang akan menemani waktu ngopi kamu bersama bestie.	t	t	2022-12-09 18:18:13	2022-12-09 18:23:52
3	Mahkota Cafe	50000	0	100	10	10	Tempat ngopi di Garut selanjutnya berada di Jalan Raya Bayongbong KM.10, Karyajaya, Kecamatan Bayongbong. Tempatnya enak buat kumpul bersama keluarga maupun teman sefrekuensi.\r\n\r\nSajian menu kopi di Mahkota Java Coffee rasanya enak banget, dimana kopinya berasal dari produk dalam negeri yang dipanen dan diolah sendiri oleh petani lokal.	t	t	2022-12-09 18:30:59	2022-12-09 18:30:59
4	Tanda Kutip	50000	10	100	10	10	Tempat ngopi di Garut selanjutnya bernama Tandakutif Coffee & Eatry, konsep yang diusung indoor dengan memiliki beberapa lantai.\r\n\r\nLokasinya berada di Jl. Cimanuk No. 64, Jayaraga, Kecamatan Tarogong Kidul. Mulai buka 09.00 hingga 23.00 dengan menyajikan menu yang berat hingga ringan.	t	t	2022-12-09 18:35:17	2022-12-09 18:35:17
5	Temu Kunci Cafe	50000	0	100	10	10	Tempat ngopi di Garut yang sedang hits saat ini bernama Temu Kunci, dengan mengusung konsep ala-ala Timur Tengah dengan pemandangan utamanya berupa hamparan sawah.\r\n\r\nKentalnya suasana Timur Tengah membuatnya menjadi spot foto yang instagramable banget, sehingga banyak diburu oleh pengunjung muda-mudi.	t	t	2022-12-09 18:42:01	2022-12-09 18:42:01
6	Waroeang Kopilogi	50000	20	100	10	12	Waroeng Kopilogi tempat ngopi outdoor, yang harganya ramah dikantong. Sehingga dapat dikunjungi oleh siapa saja, bahkan anak-anak sekolah sekalipun.\r\n\r\nTempatnya memang tak begitu luas, tapi interiornya unik karena banyak barang-barang jadul yang menjadi interiornya. Lokasinya berada di Jl. Cimanuk No. 186, Jayawaras, Kecamatan Tarogong Kidul, Garut.	t	t	2022-12-10 04:16:54	2022-12-10 04:16:54
\.


                                                                                                                                                                                                                                                        3524.dat                                                                                            0000600 0004000 0002000 00000002170 14345375623 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	Booking ini ada syarat nya	t	t	1	2022-12-09 18:20:21	2022-12-09 18:20:21
2	2	Jemma Coffe buka setiap hari mulai pukul 08.00 hingga 24.00, lokasinya berada di tengah pusat kota Garut yakni di Jalan Veteran No. 18, Garut.	t	t	2	2022-12-09 18:26:06	2022-12-09 18:26:06
3	3	Tempat ngopi di Garut selanjutnya berada di Jalan Raya Bayongbong KM.10, Karyajaya, Kecamatan Bayongbong. Tempatnya enak buat kumpul bersama keluarga maupun teman sefrekuensi.	t	t	3	2022-12-09 18:32:18	2022-12-09 18:32:18
4	4	Lokasinya berada di Jl. Cimanuk No. 64, Jayaraga, Kecamatan Tarogong Kidul. Mulai buka 09.00 hingga 23.00 dengan menyajikan menu yang berat hingga ringan.	t	t	4	2022-12-09 18:36:37	2022-12-09 18:36:37
5	5	Kentalnya suasana Timur Tengah membuatnya menjadi spot foto yang instagramable banget, sehingga banyak diburu oleh pengunjung muda-mudi.	t	t	5	2022-12-09 18:44:01	2022-12-09 18:44:01
6	6	Tempatnya memang tak begitu luas, tapi interiornya unik karena banyak barang-barang jadul yang menjadi interiornya. Lokasinya berada di Jl. Cimanuk No. 186, Jayawaras, Kecamatan Tarogong Kidul, Garut.	t	t	6	2022-12-10 04:18:49	2022-12-10 04:18:49
\.


                                                                                                                                                                                                                                                                                                                                                                                                        3526.dat                                                                                            0000600 0004000 0002000 00000004270 14345375623 0014270 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        9	8D2xzBnuwGnFcBdAERCtTveSaoo3q7qKLlSrXX0A.jpg	tempat enak	Tempat Muantap	dadwad	wdadwad	wdadaw	t	2022-12-10 15:07:38	2022-12-10 15:07:38	https://s.id/1rY3S	Rute
1	yY5jwRcmRQxc7b4adQZauKbeqS0t85ujRBNzn2Bs.jpeg	Experience the Bumi Cafe	BumiCafe	Ciri khas dari Bumi Kafe ialah tempatnya yang full kaca dengan hiasan tumbuhan hijau	room_type/1	mampir sekarang	t	2022-12-09 18:21:13	2022-12-11 15:30:37	\N	Rute
4	36Po76RA9fB14nNO45zT73gzrUDbdpVw71TdrlSp.jpeg	Experience the Mahkota Cafe	Mahkota Cafe	Tempat ngopi di Garut selanjutnya berada di Jalan Raya Bayongbong KM.10, Karyajaya, Kecamatan Bayongbong. Tempatnya enak buat kumpul bersama keluarga maupun teman sefrekuensi.	room_type/3	mampir sekarang	t	2022-12-09 18:33:18	2022-12-11 15:31:46	https://www.google.com/maps/search/mahkota+cafe+garut/@-7.2614257,107.8193294,15z	Rute
3	XjtC94Zedp64pYxxJ0K5GzdSGJzCNcT5JlSkPxkz.jpeg	Experience the Jemma Cafe	Jemma Cafe	Jemma Coffe buka setiap hari mulai pukul 08.00 hingga 24.00, lokasinya berada di tengah pusat kota Garut yakni di Jalan Veteran No. 18, Garut.	room_type/2	mampir sekarang	t	2022-12-09 18:27:16	2022-12-11 15:33:27	https://s.id/1s3XD	Rute
5	jReMGnn1Er40dpLSZDhFvIFdeBdfAzilWBbgzohd.jpeg	Experience the Tanda Kutip	Tanda Kutip	Lokasinya berada di Jl. Cimanuk No. 64, Jayaraga, Kecamatan Tarogong Kidul. Mulai buka 09.00 hingga 23.00 dengan menyajikan menu yang berat hingga ringan.	room_type/4	mampir sekarang	t	2022-12-09 18:37:24	2022-12-11 15:36:25	https://s.id/1s3Zt	Rute
8	dolwi1f7mbSXFCaIHWWPV5Kq84dedDXgvE6GiTI0.jpeg	Experience Waroeng Kopilogi	Waroeng Kopilogi	Tempatnya memang tak begitu luas, tapi interiornya unik karena banyak barang-barang jadul yang menjadi interiornya. Lokasinya berada di Jl. Cimanuk No. 186, Jayawaras, Kecamatan Tarogong Kidul, Garut.	room_type/6	mampir sekarang	t	2022-12-10 04:20:30	2022-12-11 15:40:00	https://s.id/1s40u	Rute
6	vmBBuI7bCny3JZREsT1n7KJwxmnMzLAztJh5TceX.jpeg	Experience theTemu Kunci Cafe	Temu Kunci Cafe	Tempat ngopi di Garut yang sedang hits saat ini bernama Temu Kunci, dengan mengusung konsep ala-ala Timur Tengah dengan pemandangan utamanya berupa hamparan sawah.	room_type/5	mampir sekarang	t	2022-12-09 18:45:11	2022-12-11 15:41:17	https://s.id/1s40S	Rute
\.


                                                                                                                                                                                                                                                                                                                                        3528.dat                                                                                            0000600 0004000 0002000 00000000005 14345375623 0014262 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        \.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           3530.dat                                                                                            0000600 0004000 0002000 00000007454 14345375623 0014272 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	admin	tepang	male	9866893439	garut	admin@tepang.com	$2y$10$4hNS.g.TLjMfGzbPic5vh.2XhXE423LeUQMRMN9DfzHgvCVkSZp56	girl-1.png	hello from the other world	\N	\N	\N	admin	t	1cwtakoz4K	2022-12-09 18:11:18	\N
2	Eve	Adams	others	2682587801	96859 Graham Centers\nNorth August, NY 66692	qkuhlman@example.com	$2y$10$mohmOSULf6ktqceB13B/U.Jl59bebYqDQ32jqICNkHkoPj.0txwTa	man.png	Assumenda qui excepturi tempore temporibus cum. Nam ratione ut et exercitationem molestias.	\N	\N	\N	user	t	e39i7fBbWk	2022-12-09 18:11:19	2022-12-09 18:11:19
3	Rudy	Swaniawski	others	8872009340	89932 Rodolfo Passage\nWest Rudolph, WA 65908	margarete.walker@example.org	$2y$10$ejuqyfL2M3ih91ew9Y3MWeRRDLtYCfmrYT24oZTo73GAs8e5B8RA2	man-2.png	Rerum laboriosam a optio sed quis. Quisquam sint sed dolorem molestiae. Hic deleniti molestias officia ratione dolores. Et voluptatem nihil eligendi ut quo id.	\N	\N	\N	user	t	OVWzozNMjr	2022-12-09 18:11:19	2022-12-09 18:11:19
4	Lambert	Collier	male	9538261488	7414 Breitenberg Divide Apt. 182\nSouth Brook, ME 47584	qkrajcik@example.net	$2y$10$Az4yZwo2y5MhN7WNoWUldOldEsvgeP4S1SDLhQedxkfyhPDT.Ri8K	man-1.png	Recusandae odit sed enim. Odit sed iure temporibus labore voluptatem assumenda. Voluptatem quas expedita blanditiis harum exercitationem et.	\N	\N	\N	user	t	3nHo9umBUj	2022-12-09 18:11:19	2022-12-09 18:11:19
5	Arnoldo	Lind	others	0083009035	4103 Wyatt Valley Suite 731\nErdmanberg, LA 50197	audra64@example.com	$2y$10$NmOD6YEdo2B0PVRRgTvaheZu/Ahy.Tn6rbdjKwnZuUAm.Yq3q26r6	man.png	Non ex autem autem a. Sit nihil sit sint in dolores est. Deleniti quo repellendus consequatur facilis molestiae hic. Laboriosam voluptas optio sit nulla fugiat beatae.	\N	\N	\N	user	t	g9oQ9Ls1TU	2022-12-09 18:11:19	2022-12-09 18:11:19
6	Wyatt	Dare	others	0110812441	893 Dietrich Drive\nEast Niko, AL 46750	felix.graham@example.com	$2y$10$ikOyc7Lh5F6W8BbxghO/Pu4qoupENmXGrwRdif35zBtp4c1KO7Fyq	boy.png	Non suscipit dolor provident saepe quae. Quaerat aspernatur omnis aut voluptas natus. Quia sunt doloremque quas repudiandae deserunt voluptatem. Quo est earum aut aspernatur exercitationem.	\N	\N	\N	user	t	DnMq3P6Y3P	2022-12-09 18:11:19	2022-12-09 18:11:19
7	Geoffrey	Toy	male	1852999063	158 Jose Walk\nPercyview, LA 68578	laurel.vonrueden@example.org	$2y$10$Ydx9X2H4H8TpWNT.zG74DewAoxUaS50DCC5sphaPjUVDPurEOITg6	man.png	Iure expedita iure sed cum suscipit ut. Quia in eligendi enim ex. Quo doloribus nobis odit et eveniet.	\N	\N	\N	user	t	3KzxRCzjBm	2022-12-09 18:11:19	2022-12-09 18:11:19
8	Watson	Kuhn	female	2892842689	420 Friesen Locks Suite 215\nSchoenburgh, VA 71474-9055	raphaelle90@example.org	$2y$10$dpT3HEE6cflM/HCTwODyO.kEQraTbuw7PnuIc0da4I9PdLn.9ug9.	girl-2.png	Est autem cum autem perferendis adipisci. Est velit laborum hic omnis sit labore aut. Eos id voluptatem eligendi.	\N	\N	\N	user	t	MJ2J1ZuclI	2022-12-09 18:11:19	2022-12-09 18:11:19
9	Aubree	Treutel	male	7778589656	731 Wilford Keys Apt. 781\nValliehaven, AL 29892	marcia.block@example.com	$2y$10$aFH/jDBNdWt8KcwI45v9Pet60q1CX6WcB9z/aAIDrP0MBidyx9TPi	man-3.png	Molestiae id optio dolorem. Fuga quibusdam quia placeat quia. Omnis saepe commodi aut voluptas nisi. Voluptas earum aperiam repudiandae facere.	\N	\N	\N	user	t	4cBH4aPnCR	2022-12-09 18:11:19	2022-12-09 18:11:19
10	Rocio	Swaniawski	male	982901701X	6468 Effertz Dale Apt. 053\nKirstinmouth, CO 08985-8351	mayer.antonietta@example.com	$2y$10$4vH/uPYTNMl629oDRvdh8OthZfjaBXjMX6ZSC40T53toW272KPTeq	boy-1.png	Deleniti et consectetur dolores. Voluptate eum quis consequatur voluptatibus nobis nisi. Et aliquam quia hic fugit voluptatum reprehenderit.	\N	\N	\N	user	t	uZ4DreqCgQ	2022-12-09 18:11:19	2022-12-09 18:11:19
11	Alison	Quitzon	others	0243301561	4867 Kuhn MountainWindlerfurt, WY 65671	ymorar@example.org	$2y$10$T5w70fTo/.OJUM8U0Njf3e3nfnEj/VoMEkIBxgkPhn7r9MUXJfCAq	man.png	\N	\N	\N	\N	admin	t	zVVM1namkn	2022-12-09 18:11:19	2022-12-11 08:08:22
\.


                                                                                                                                                                                                                    restore.sql                                                                                         0000600 0004000 0002000 00000107342 14345375623 0015407 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 15.0
-- Dumped by pg_dump version 15.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE cafe;
--
-- Name: cafe; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE cafe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Indonesian_Indonesia.1252';


ALTER DATABASE cafe OWNER TO postgres;

\connect cafe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: event_bookings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event_bookings (
    id integer NOT NULL,
    number_of_tickets integer NOT NULL,
    total_cost integer NOT NULL,
    status boolean DEFAULT true NOT NULL,
    payment boolean DEFAULT false NOT NULL,
    user_id integer NOT NULL,
    event_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.event_bookings OWNER TO postgres;

--
-- Name: event_bookings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.event_bookings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_bookings_id_seq OWNER TO postgres;

--
-- Name: event_bookings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.event_bookings_id_seq OWNED BY public.event_bookings.id;


--
-- Name: events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.events (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    image character varying(200) NOT NULL,
    date date NOT NULL,
    venue character varying(50) NOT NULL,
    price integer NOT NULL,
    capacity integer NOT NULL,
    description text,
    status boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.events OWNER TO postgres;

--
-- Name: events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.events_id_seq OWNER TO postgres;

--
-- Name: events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;


--
-- Name: facilities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facilities (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    icon character varying(200) NOT NULL,
    status boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.facilities OWNER TO postgres;

--
-- Name: facilities_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.facilities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.facilities_id_seq OWNER TO postgres;

--
-- Name: facilities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.facilities_id_seq OWNED BY public.facilities.id;


--
-- Name: facility_room_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.facility_room_type (
    facility_id integer NOT NULL,
    room_type_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.facility_room_type OWNER TO postgres;

--
-- Name: food_orders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.food_orders (
    food_id integer NOT NULL,
    room_booking_id integer NOT NULL,
    quantity integer DEFAULT 1 NOT NULL,
    cost integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.food_orders OWNER TO postgres;

--
-- Name: foods; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.foods (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    type character varying(255) NOT NULL,
    image character varying(200) NOT NULL,
    price numeric(8,2) NOT NULL,
    description character varying(200),
    status boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT foods_type_check CHECK (((type)::text = ANY (ARRAY[('Appetizer'::character varying)::text, ('Soup'::character varying)::text, ('Salad'::character varying)::text, ('Main Course'::character varying)::text, ('Dessert'::character varying)::text])))
);


ALTER TABLE public.foods OWNER TO postgres;

--
-- Name: foods_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.foods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.foods_id_seq OWNER TO postgres;

--
-- Name: foods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.foods_id_seq OWNED BY public.foods.id;


--
-- Name: images; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.images (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    caption character varying(30),
    is_primary boolean DEFAULT false NOT NULL,
    status boolean DEFAULT true NOT NULL,
    room_type_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.images OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.images_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_id_seq OWNER TO postgres;

--
-- Name: images_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.images_id_seq OWNED BY public.images.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(191) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    title character varying(15) NOT NULL,
    url_title character varying(20) NOT NULL,
    description text NOT NULL,
    status boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.pages OWNER TO postgres;

--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_id_seq OWNER TO postgres;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_resets (
    email character varying(191) NOT NULL,
    token character varying(191) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_resets OWNER TO postgres;

--
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    id integer NOT NULL,
    review character varying(100) NOT NULL,
    rating character varying(255) NOT NULL,
    approval_status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    room_booking_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT reviews_approval_status_check CHECK (((approval_status)::text = ANY (ARRAY[('pending'::character varying)::text, ('approved'::character varying)::text, ('rejected'::character varying)::text]))),
    CONSTRAINT reviews_rating_check CHECK (((rating)::text = ANY (ARRAY[('0'::character varying)::text, ('1'::character varying)::text, ('2'::character varying)::text, ('3'::character varying)::text, ('4'::character varying)::text, ('5'::character varying)::text])))
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO postgres;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: room_bookings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.room_bookings (
    id integer NOT NULL,
    room_id integer NOT NULL,
    user_id integer NOT NULL,
    arrival_date date NOT NULL,
    departure_date date,
    room_cost integer NOT NULL,
    status character varying(255) DEFAULT 'pending'::character varying NOT NULL,
    payment boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT room_bookings_status_check CHECK (((status)::text = ANY (ARRAY[('pending'::character varying)::text, ('checked_in'::character varying)::text, ('checked_out'::character varying)::text, ('cancelled'::character varying)::text])))
);


ALTER TABLE public.room_bookings OWNER TO postgres;

--
-- Name: room_bookings_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.room_bookings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.room_bookings_id_seq OWNER TO postgres;

--
-- Name: room_bookings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.room_bookings_id_seq OWNED BY public.room_bookings.id;


--
-- Name: room_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.room_types (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    cost_per_day integer NOT NULL,
    discount_percentage integer DEFAULT 0 NOT NULL,
    size integer,
    max_adult integer DEFAULT 0,
    max_child integer DEFAULT 0,
    description text,
    room_service boolean DEFAULT true NOT NULL,
    status boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.room_types OWNER TO postgres;

--
-- Name: room_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.room_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.room_types_id_seq OWNER TO postgres;

--
-- Name: room_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.room_types_id_seq OWNED BY public.room_types.id;


--
-- Name: rooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms (
    id integer NOT NULL,
    room_number character varying(5) NOT NULL,
    description text NOT NULL,
    available boolean DEFAULT true NOT NULL,
    status boolean DEFAULT true NOT NULL,
    room_type_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.rooms OWNER TO postgres;

--
-- Name: rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rooms_id_seq OWNER TO postgres;

--
-- Name: rooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rooms_id_seq OWNED BY public.rooms.id;


--
-- Name: slider; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.slider (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    small_title character varying(30),
    big_title character varying(30),
    description character varying(200),
    link character varying(100),
    link_text character varying(15),
    status boolean DEFAULT true NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    link_maps character varying(255),
    link_textmaps character varying(15)
);


ALTER TABLE public.slider OWNER TO postgres;

--
-- Name: slider_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.slider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.slider_id_seq OWNER TO postgres;

--
-- Name: slider_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.slider_id_seq OWNED BY public.slider.id;


--
-- Name: subscribers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subscribers (
    id integer NOT NULL,
    email character varying(191) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.subscribers OWNER TO postgres;

--
-- Name: subscribers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subscribers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscribers_id_seq OWNER TO postgres;

--
-- Name: subscribers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subscribers_id_seq OWNED BY public.subscribers.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    first_name character varying(25),
    last_name character varying(25),
    gender character varying(255),
    phone character varying(15),
    address text,
    email character varying(50),
    password character varying(200),
    avatar character varying(200),
    about character varying(300),
    facebook_id character varying(191),
    twitter_id character varying(191),
    google_id character varying(191),
    role character varying(255) DEFAULT 'user'::character varying NOT NULL,
    status boolean DEFAULT true NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    CONSTRAINT users_gender_check CHECK (((gender)::text = ANY (ARRAY[('male'::character varying)::text, ('female'::character varying)::text, ('others'::character varying)::text]))),
    CONSTRAINT users_role_check CHECK (((role)::text = ANY (ARRAY[('admin'::character varying)::text, ('user'::character varying)::text])))
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: event_bookings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_bookings ALTER COLUMN id SET DEFAULT nextval('public.event_bookings_id_seq'::regclass);


--
-- Name: events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


--
-- Name: facilities id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facilities ALTER COLUMN id SET DEFAULT nextval('public.facilities_id_seq'::regclass);


--
-- Name: foods id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.foods ALTER COLUMN id SET DEFAULT nextval('public.foods_id_seq'::regclass);


--
-- Name: images id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images ALTER COLUMN id SET DEFAULT nextval('public.images_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Name: room_bookings id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room_bookings ALTER COLUMN id SET DEFAULT nextval('public.room_bookings_id_seq'::regclass);


--
-- Name: room_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room_types ALTER COLUMN id SET DEFAULT nextval('public.room_types_id_seq'::regclass);


--
-- Name: rooms id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms ALTER COLUMN id SET DEFAULT nextval('public.rooms_id_seq'::regclass);


--
-- Name: slider id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slider ALTER COLUMN id SET DEFAULT nextval('public.slider_id_seq'::regclass);


--
-- Name: subscribers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscribers ALTER COLUMN id SET DEFAULT nextval('public.subscribers_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: event_bookings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.event_bookings (id, number_of_tickets, total_cost, status, payment, user_id, event_id, created_at, updated_at) FROM stdin;
\.
COPY public.event_bookings (id, number_of_tickets, total_cost, status, payment, user_id, event_id, created_at, updated_at) FROM '$$PATH$$/3501.dat';

--
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.events (id, name, image, date, venue, price, capacity, description, status, created_at, updated_at) FROM stdin;
\.
COPY public.events (id, name, image, date, venue, price, capacity, description, status, created_at, updated_at) FROM '$$PATH$$/3503.dat';

--
-- Data for Name: facilities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facilities (id, name, icon, status, created_at, updated_at) FROM stdin;
\.
COPY public.facilities (id, name, icon, status, created_at, updated_at) FROM '$$PATH$$/3505.dat';

--
-- Data for Name: facility_room_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.facility_room_type (facility_id, room_type_id, created_at, updated_at) FROM stdin;
\.
COPY public.facility_room_type (facility_id, room_type_id, created_at, updated_at) FROM '$$PATH$$/3507.dat';

--
-- Data for Name: food_orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.food_orders (food_id, room_booking_id, quantity, cost, created_at, updated_at) FROM stdin;
\.
COPY public.food_orders (food_id, room_booking_id, quantity, cost, created_at, updated_at) FROM '$$PATH$$/3508.dat';

--
-- Data for Name: foods; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.foods (id, name, type, image, price, description, status, created_at, updated_at) FROM stdin;
\.
COPY public.foods (id, name, type, image, price, description, status, created_at, updated_at) FROM '$$PATH$$/3509.dat';

--
-- Data for Name: images; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.images (id, name, caption, is_primary, status, room_type_id, created_at, updated_at) FROM stdin;
\.
COPY public.images (id, name, caption, is_primary, status, room_type_id, created_at, updated_at) FROM '$$PATH$$/3511.dat';

--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
\.
COPY public.migrations (id, migration, batch) FROM '$$PATH$$/3513.dat';

--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pages (id, title, url_title, description, status, created_at, updated_at) FROM stdin;
\.
COPY public.pages (id, title, url_title, description, status, created_at, updated_at) FROM '$$PATH$$/3515.dat';

--
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_resets (email, token, created_at) FROM stdin;
\.
COPY public.password_resets (email, token, created_at) FROM '$$PATH$$/3517.dat';

--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reviews (id, review, rating, approval_status, room_booking_id, created_at, updated_at) FROM stdin;
\.
COPY public.reviews (id, review, rating, approval_status, room_booking_id, created_at, updated_at) FROM '$$PATH$$/3518.dat';

--
-- Data for Name: room_bookings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.room_bookings (id, room_id, user_id, arrival_date, departure_date, room_cost, status, payment, created_at, updated_at) FROM stdin;
\.
COPY public.room_bookings (id, room_id, user_id, arrival_date, departure_date, room_cost, status, payment, created_at, updated_at) FROM '$$PATH$$/3520.dat';

--
-- Data for Name: room_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.room_types (id, name, cost_per_day, discount_percentage, size, max_adult, max_child, description, room_service, status, created_at, updated_at) FROM stdin;
\.
COPY public.room_types (id, name, cost_per_day, discount_percentage, size, max_adult, max_child, description, room_service, status, created_at, updated_at) FROM '$$PATH$$/3522.dat';

--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms (id, room_number, description, available, status, room_type_id, created_at, updated_at) FROM stdin;
\.
COPY public.rooms (id, room_number, description, available, status, room_type_id, created_at, updated_at) FROM '$$PATH$$/3524.dat';

--
-- Data for Name: slider; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.slider (id, name, small_title, big_title, description, link, link_text, status, created_at, updated_at, link_maps, link_textmaps) FROM stdin;
\.
COPY public.slider (id, name, small_title, big_title, description, link, link_text, status, created_at, updated_at, link_maps, link_textmaps) FROM '$$PATH$$/3526.dat';

--
-- Data for Name: subscribers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.subscribers (id, email, created_at, updated_at) FROM stdin;
\.
COPY public.subscribers (id, email, created_at, updated_at) FROM '$$PATH$$/3528.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, first_name, last_name, gender, phone, address, email, password, avatar, about, facebook_id, twitter_id, google_id, role, status, remember_token, created_at, updated_at) FROM stdin;
\.
COPY public.users (id, first_name, last_name, gender, phone, address, email, password, avatar, about, facebook_id, twitter_id, google_id, role, status, remember_token, created_at, updated_at) FROM '$$PATH$$/3530.dat';

--
-- Name: event_bookings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.event_bookings_id_seq', 1, false);


--
-- Name: events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.events_id_seq', 1, true);


--
-- Name: facilities_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facilities_id_seq', 12, true);


--
-- Name: foods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.foods_id_seq', 1, true);


--
-- Name: images_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.images_id_seq', 20, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 80, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pages_id_seq', 1, true);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_id_seq', 1, false);


--
-- Name: room_bookings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.room_bookings_id_seq', 2, true);


--
-- Name: room_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.room_types_id_seq', 6, true);


--
-- Name: rooms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_id_seq', 6, true);


--
-- Name: slider_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.slider_id_seq', 9, true);


--
-- Name: subscribers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subscribers_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 11, true);


--
-- Name: event_bookings event_bookings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_bookings
    ADD CONSTRAINT event_bookings_pkey PRIMARY KEY (id);


--
-- Name: events events_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_name_unique UNIQUE (name);


--
-- Name: events events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);


--
-- Name: facilities facilities_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facilities
    ADD CONSTRAINT facilities_name_unique UNIQUE (name);


--
-- Name: facilities facilities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facilities
    ADD CONSTRAINT facilities_pkey PRIMARY KEY (id);


--
-- Name: foods foods_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.foods
    ADD CONSTRAINT foods_pkey PRIMARY KEY (id);


--
-- Name: images images_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);


--
-- Name: room_bookings room_bookings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room_bookings
    ADD CONSTRAINT room_bookings_pkey PRIMARY KEY (id);


--
-- Name: room_types room_types_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room_types
    ADD CONSTRAINT room_types_name_unique UNIQUE (name);


--
-- Name: room_types room_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room_types
    ADD CONSTRAINT room_types_pkey PRIMARY KEY (id);


--
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- Name: rooms rooms_room_number_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_room_number_unique UNIQUE (room_number);


--
-- Name: slider slider_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.slider
    ADD CONSTRAINT slider_pkey PRIMARY KEY (id);


--
-- Name: subscribers subscribers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subscribers
    ADD CONSTRAINT subscribers_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_facebook_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_facebook_id_unique UNIQUE (facebook_id);


--
-- Name: users users_google_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_google_id_unique UNIQUE (google_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: users users_twitter_id_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_twitter_id_unique UNIQUE (twitter_id);


--
-- Name: event_bookings_event_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX event_bookings_event_id_index ON public.event_bookings USING btree (event_id);


--
-- Name: event_bookings_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX event_bookings_user_id_index ON public.event_bookings USING btree (user_id);


--
-- Name: facility_room_type_facility_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX facility_room_type_facility_id_index ON public.facility_room_type USING btree (facility_id);


--
-- Name: facility_room_type_room_type_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX facility_room_type_room_type_id_index ON public.facility_room_type USING btree (room_type_id);


--
-- Name: food_orders_food_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX food_orders_food_id_index ON public.food_orders USING btree (food_id);


--
-- Name: food_orders_room_booking_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX food_orders_room_booking_id_index ON public.food_orders USING btree (room_booking_id);


--
-- Name: images_room_type_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX images_room_type_id_index ON public.images USING btree (room_type_id);


--
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- Name: reviews_room_booking_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX reviews_room_booking_id_index ON public.reviews USING btree (room_booking_id);


--
-- Name: room_bookings_room_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX room_bookings_room_id_index ON public.room_bookings USING btree (room_id);


--
-- Name: room_bookings_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX room_bookings_user_id_index ON public.room_bookings USING btree (user_id);


--
-- Name: rooms_room_type_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX rooms_room_type_id_index ON public.rooms USING btree (room_type_id);


--
-- Name: event_bookings event_bookings_event_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_bookings
    ADD CONSTRAINT event_bookings_event_id_foreign FOREIGN KEY (event_id) REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: event_bookings event_bookings_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event_bookings
    ADD CONSTRAINT event_bookings_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: facility_room_type facility_room_type_facility_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facility_room_type
    ADD CONSTRAINT facility_room_type_facility_id_foreign FOREIGN KEY (facility_id) REFERENCES public.facilities(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: facility_room_type facility_room_type_room_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.facility_room_type
    ADD CONSTRAINT facility_room_type_room_type_id_foreign FOREIGN KEY (room_type_id) REFERENCES public.room_types(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: food_orders food_orders_food_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.food_orders
    ADD CONSTRAINT food_orders_food_id_foreign FOREIGN KEY (food_id) REFERENCES public.foods(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: food_orders food_orders_room_booking_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.food_orders
    ADD CONSTRAINT food_orders_room_booking_id_foreign FOREIGN KEY (room_booking_id) REFERENCES public.room_bookings(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: images images_room_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.images
    ADD CONSTRAINT images_room_type_id_foreign FOREIGN KEY (room_type_id) REFERENCES public.room_types(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: reviews reviews_room_booking_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_room_booking_id_foreign FOREIGN KEY (room_booking_id) REFERENCES public.room_bookings(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: room_bookings room_bookings_room_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room_bookings
    ADD CONSTRAINT room_bookings_room_id_foreign FOREIGN KEY (room_id) REFERENCES public.rooms(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: room_bookings room_bookings_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.room_bookings
    ADD CONSTRAINT room_bookings_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: rooms rooms_room_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_room_type_id_foreign FOREIGN KEY (room_type_id) REFERENCES public.room_types(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              