PGDMP         :        
        {            Final_Project    15.5    15.3 $    F           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            G           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            H           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            I           1262    16464    Final_Project    DATABASE     �   CREATE DATABASE "Final_Project" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = icu LOCALE = 'en_US.UTF-8' ICU_LOCALE = 'en-US';
    DROP DATABASE "Final_Project";
                postgres    false            �            1259    16617    address    TABLE     �   CREATE TABLE public.address (
    id integer NOT NULL,
    user_id integer,
    street character varying(255),
    pincode character varying(6)
);
    DROP TABLE public.address;
       public         heap    postgres    false            �            1259    16616    address_id_seq    SEQUENCE     �   CREATE SEQUENCE public.address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.address_id_seq;
       public          postgres    false    215            J           0    0    address_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.address_id_seq OWNED BY public.address.id;
          public          postgres    false    214            �            1259    16736 
   menu_items    TABLE     �   CREATE TABLE public.menu_items (
    id integer NOT NULL,
    qty integer,
    price numeric(255,2),
    user_id integer,
    item_name character varying(255)
);
    DROP TABLE public.menu_items;
       public         heap    postgres    false            �            1259    16674    menus    TABLE     �   CREATE TABLE public.menus (
    id integer NOT NULL,
    restaurant_id integer,
    category text,
    name character varying(255),
    description text,
    price numeric(255,2)
);
    DROP TABLE public.menus;
       public         heap    postgres    false            �            1259    16673    menus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.menus_id_seq;
       public          postgres    false    221            K           0    0    menus_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;
          public          postgres    false    220            �            1259    16694    orders    TABLE     �   CREATE TABLE public.orders (
    id integer NOT NULL,
    user_id integer,
    order_total numeric(255,2),
    order_id integer
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16693    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    224            L           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    223            �            1259    16667    ratings    TABLE     �   CREATE TABLE public.ratings (
    id integer NOT NULL,
    restaurant_id integer,
    ratings numeric(255,2),
    score numeric(255,2),
    name character varying(255)
);
    DROP TABLE public.ratings;
       public         heap    postgres    false            �            1259    16666    ratings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ratings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ratings_id_seq;
       public          postgres    false    219            M           0    0    ratings_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.ratings_id_seq OWNED BY public.ratings.id;
          public          postgres    false    218            �            1259    16686    restaurants    TABLE     �   CREATE TABLE public.restaurants (
    id integer NOT NULL,
    name character varying(255),
    address character varying(255),
    category text
);
    DROP TABLE public.restaurants;
       public         heap    postgres    false            �            1259    16653    users    TABLE     �   CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    password character varying(255),
    phone character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16652    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    217            N           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    216            �           2604    16620 
   address id    DEFAULT     h   ALTER TABLE ONLY public.address ALTER COLUMN id SET DEFAULT nextval('public.address_id_seq'::regclass);
 9   ALTER TABLE public.address ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    16677    menus id    DEFAULT     d   ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);
 7   ALTER TABLE public.menus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    16697 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    16670 
   ratings id    DEFAULT     h   ALTER TABLE ONLY public.ratings ALTER COLUMN id SET DEFAULT nextval('public.ratings_id_seq'::regclass);
 9   ALTER TABLE public.ratings ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    16656    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2606    16622    address address_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    215            �           2606    16681    menus menus_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_pkey;
       public            postgres    false    221            �           2606    16699    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    224            �           2606    16672    ratings ratings_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_pkey;
       public            postgres    false    219            �           2606    16692    restaurants restaurants_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.restaurants
    ADD CONSTRAINT restaurants_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.restaurants DROP CONSTRAINT restaurants_pkey;
       public            postgres    false    222            �           2606    16660    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217            �           2606    16700    address address_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) NOT VALID;
 F   ALTER TABLE ONLY public.address DROP CONSTRAINT address_user_id_fkey;
       public          postgres    false    215    3497    217            �           2606    16705    menus menus_restaurant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_restaurant_id_fkey FOREIGN KEY (restaurant_id) REFERENCES public.restaurants(id) NOT VALID;
 H   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_restaurant_id_fkey;
       public          postgres    false    221    3503    222            �           2606    16710    orders orders_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) NOT VALID;
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_user_id_fkey;
       public          postgres    false    224    3497    217            �           2606    16725 "   ratings ratings_restaurant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ratings
    ADD CONSTRAINT ratings_restaurant_id_fkey FOREIGN KEY (restaurant_id) REFERENCES public.restaurants(id) NOT VALID;
 L   ALTER TABLE ONLY public.ratings DROP CONSTRAINT ratings_restaurant_id_fkey;
       public          postgres    false    219    3503    222           