PGDMP  %    .    
            }            users    17.4    17.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16432    users    DATABASE     k   CREATE DATABASE users WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'pt-BR';
    DROP DATABASE users;
                     postgres    false            �            1259    16445    post    TABLE     �   CREATE TABLE public.post (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    user_id integer
);
    DROP TABLE public.post;
       public         heap r       postgres    false            �            1259    16444    post_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.post_id_seq;
       public               postgres    false    220                        0    0    post_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.post_id_seq OWNED BY public.post.id;
          public               postgres    false    219            �            1259    16434    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    photo text
);
    DROP TABLE public.usuarios;
       public         heap r       postgres    false            �            1259    16433    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public               postgres    false    218                       0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public               postgres    false    217            ]           2604    16448    post id    DEFAULT     b   ALTER TABLE ONLY public.post ALTER COLUMN id SET DEFAULT nextval('public.post_id_seq'::regclass);
 6   ALTER TABLE public.post ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            \           2604    16437    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    217    218            �          0    16445    post 
   TABLE DATA           ;   COPY public.post (id, title, content, user_id) FROM stdin;
    public               postgres    false    220   �       �          0    16434    usuarios 
   TABLE DATA           D   COPY public.usuarios (id, name, email, password, photo) FROM stdin;
    public               postgres    false    218                     0    0    post_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.post_id_seq', 3, true);
          public               postgres    false    219                       0    0    usuarios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.usuarios_id_seq', 58, true);
          public               postgres    false    217            c           2606    16452    post post_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.post DROP CONSTRAINT post_pkey;
       public                 postgres    false    220            _           2606    16443    usuarios usuarios_email_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_email_key UNIQUE (email);
 E   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_email_key;
       public                 postgres    false    218            a           2606    16441    usuarios usuarios_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public                 postgres    false    218            d           2606    16453    post post_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.usuarios(id) ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.post DROP CONSTRAINT post_user_id_fkey;
       public               postgres    false    218    4705    220            �   0   x�3��/.Q0�t��+I=�8%_�
 b�\Fi#,�F�F\1z\\\ ��_      �   �  x�}�Mn#7���S�	YR��.�<��8�d0���n�&����!�r���$'�+R3�E�6BD=�yNw�{M??�-���BK܆����gSZ�/��_-`A�6z�U����a��l"QW��\ܹ�1�g�ȗ�w�LXŃ�v\�������}P���ƺ����L�|#�j��~�u�XnC��{�j��6{�.>��񯁺��ͨj�t�|��Gې`���*)q�s��v8D���O5����w;7t�:��L�MT5�to�������3Vek&Q-R�O܌\�W�`�Ĭ���6���W��[c���
�(�Vׄ�9�&����̘(��:��Z���0����M�Q�L�f�PG�Te2�����G�u\<8E���TŜ���u�He� �j�dNK��㭕��.ry���UwA��(��E�3�gR��	�8��g�B2�L�b���"�Y<9,Dڶ�֌	T�=����{I�1��8��`�q@�l����
�.�����Рv��3 ��T5S�P���y�lF�P��h����mSrX��L�bN7΢ V��T8f5���������	L#��_���6�/vQg<a3�?��o��@ɓ��H��TɂЎ;��F���>P��fҀ���T�6D.��v��*+h8���Oh*xQ(��wb�1��fVU(���],�Y��aA�*�������
1�s<3A�TɌ�
r�q�>�3�NHU��Άtk�:j�d0�����-;�4�:.��󀪻@�ڗԙ�T{���dJT�%n�1��k��cf�YU-膽���ƁW�6������������GN�����=���z)4B����n�����ӽ�|��ߋ唖-B�]����7^&�=C��r��z6ax�*�-�tB�fN�������D�����f�-Fpß����X��իr��)�*/i�u��?;<y��z�!=��N��gsvv�j��     