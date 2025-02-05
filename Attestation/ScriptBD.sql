PGDMP     *                    {            Shop    15.1    15.1 5    5           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            6           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            7           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            8           1262    17753    Shop    DATABASE     z   CREATE DATABASE "Shop" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "Shop";
                postgres    false            �            1259    17792    category    TABLE     [   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(255)
);
    DROP TABLE public.category;
       public         heap    postgres    false            �            1259    17791    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public          postgres    false    215            9           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
          public          postgres    false    214            �            1259    17799    image    TABLE     ~   CREATE TABLE public.image (
    id integer NOT NULL,
    file_name character varying(255),
    product_id integer NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            �            1259    17798    image_id_seq    SEQUENCE     �   CREATE SEQUENCE public.image_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.image_id_seq;
       public          postgres    false    217            :           0    0    image_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.image_id_seq OWNED BY public.image.id;
          public          postgres    false    216            �            1259    17854    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    count integer NOT NULL,
    date_time timestamp(6) without time zone,
    number character varying(255),
    price real NOT NULL,
    status smallint,
    person_id integer NOT NULL,
    product_id integer NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    17853    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    225            ;           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    224            �            1259    17806    person    TABLE     �   CREATE TABLE public.person (
    id integer NOT NULL,
    login character varying(50),
    password character varying(255),
    role character varying(255)
);
    DROP TABLE public.person;
       public         heap    postgres    false            �            1259    17805    person_id_seq    SEQUENCE     �   CREATE SEQUENCE public.person_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.person_id_seq;
       public          postgres    false    219            <           0    0    person_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.person_id_seq OWNED BY public.person.id;
          public          postgres    false    218            �            1259    17815    product    TABLE     �  CREATE TABLE public.product (
    id integer NOT NULL,
    date_time timestamp(6) without time zone,
    description text NOT NULL,
    price real NOT NULL,
    seller character varying(255) NOT NULL,
    title text NOT NULL,
    warehouse character varying(255) NOT NULL,
    category_id integer NOT NULL,
    CONSTRAINT product_price_check CHECK ((price >= (1)::double precision))
);
    DROP TABLE public.product;
       public         heap    postgres    false            �            1259    17837    product_cart    TABLE     m   CREATE TABLE public.product_cart (
    id integer NOT NULL,
    person_id integer,
    product_id integer
);
     DROP TABLE public.product_cart;
       public         heap    postgres    false            �            1259    17836    product_cart_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_cart_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.product_cart_id_seq;
       public          postgres    false    223            =           0    0    product_cart_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.product_cart_id_seq OWNED BY public.product_cart.id;
          public          postgres    false    222            �            1259    17814    product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.product_id_seq;
       public          postgres    false    221            >           0    0    product_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;
          public          postgres    false    220            ~           2604    17795    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215                       2604    17802    image id    DEFAULT     d   ALTER TABLE ONLY public.image ALTER COLUMN id SET DEFAULT nextval('public.image_id_seq'::regclass);
 7   ALTER TABLE public.image ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    17857 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �           2604    17809 	   person id    DEFAULT     f   ALTER TABLE ONLY public.person ALTER COLUMN id SET DEFAULT nextval('public.person_id_seq'::regclass);
 8   ALTER TABLE public.person ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            �           2604    17818 
   product id    DEFAULT     h   ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);
 9   ALTER TABLE public.product ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �           2604    17840    product_cart id    DEFAULT     r   ALTER TABLE ONLY public.product_cart ALTER COLUMN id SET DEFAULT nextval('public.product_cart_id_seq'::regclass);
 >   ALTER TABLE public.product_cart ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223            (          0    17792    category 
   TABLE DATA                 public          postgres    false    215   o9       *          0    17799    image 
   TABLE DATA                 public          postgres    false    217   �9       2          0    17854    orders 
   TABLE DATA                 public          postgres    false    225   {?       ,          0    17806    person 
   TABLE DATA                 public          postgres    false    219   �@       .          0    17815    product 
   TABLE DATA                 public          postgres    false    221   -B       0          0    17837    product_cart 
   TABLE DATA                 public          postgres    false    223   !Y       ?           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 3, true);
          public          postgres    false    214            @           0    0    image_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.image_id_seq', 55, true);
          public          postgres    false    216            A           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 8, true);
          public          postgres    false    224            B           0    0    person_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.person_id_seq', 5, true);
          public          postgres    false    218            C           0    0    product_cart_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.product_cart_id_seq', 24, true);
          public          postgres    false    222            D           0    0    product_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.product_id_seq', 11, true);
          public          postgres    false    220            �           2606    17797    category category_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public            postgres    false    215            �           2606    17804    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    217            �           2606    17859    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    225            �           2606    17813    person person_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.person
    ADD CONSTRAINT person_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.person DROP CONSTRAINT person_pkey;
       public            postgres    false    219            �           2606    17842    product_cart product_cart_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT product_cart_pkey;
       public            postgres    false    223            �           2606    17823    product product_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public            postgres    false    221            �           2606    17825 $   product uk_qka6vxqdy1dprtqnx9trdd47c 
   CONSTRAINT     `   ALTER TABLE ONLY public.product
    ADD CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c UNIQUE (title);
 N   ALTER TABLE ONLY public.product DROP CONSTRAINT uk_qka6vxqdy1dprtqnx9trdd47c;
       public            postgres    false    221            �           2606    17860 "   orders fk1b0m4muwx1t377w9if3w6wwqn    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn FOREIGN KEY (person_id) REFERENCES public.person(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk1b0m4muwx1t377w9if3w6wwqn;
       public          postgres    false    219    3210    225            �           2606    17831 #   product fk1mtsbur82frn64de7balymq9s    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk1mtsbur82frn64de7balymq9s FOREIGN KEY (category_id) REFERENCES public.category(id);
 M   ALTER TABLE ONLY public.product DROP CONSTRAINT fk1mtsbur82frn64de7balymq9s;
       public          postgres    false    215    3206    221            �           2606    17865 "   orders fk787ibr3guwp6xobrpbofnv7le    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk787ibr3guwp6xobrpbofnv7le FOREIGN KEY (product_id) REFERENCES public.product(id);
 L   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk787ibr3guwp6xobrpbofnv7le;
       public          postgres    false    221    225    3212            �           2606    17826 !   image fkgpextbyee3uk9u6o2381m7ft1    FK CONSTRAINT     �   ALTER TABLE ONLY public.image
    ADD CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1 FOREIGN KEY (product_id) REFERENCES public.product(id);
 K   ALTER TABLE ONLY public.image DROP CONSTRAINT fkgpextbyee3uk9u6o2381m7ft1;
       public          postgres    false    3212    217    221            �           2606    17848 (   product_cart fkhpnrxdy3jhujameyod08ilvvw    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw FOREIGN KEY (product_id) REFERENCES public.product(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fkhpnrxdy3jhujameyod08ilvvw;
       public          postgres    false    221    223    3212            �           2606    17843 (   product_cart fksgnkc1ko2i1o9yr2p63ysq3rn    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_cart
    ADD CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn FOREIGN KEY (person_id) REFERENCES public.person(id);
 R   ALTER TABLE ONLY public.product_cart DROP CONSTRAINT fksgnkc1ko2i1o9yr2p63ysq3rn;
       public          postgres    false    3210    223    219            (      x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�Ts�	uV�0�QP�0����x��uMk.OҌ01���ۀ�2�01�b�Ŧ�.l���b����b녽v\�1�� �6VG      *   m  x���=��5����� R��c�Ƕ�(RDB �E��A%!"�>�+�^zo��>k���}����?�t{��O?�>}�������ݾ~^on���~���7�O��>Ͽ}^�o�|���o�߾f~s���ɫ�@��A��Q����.������~���Won��7��!#��C5Q!o���Ԗ:��-x��4<Ň!�i�1,LR�F"Ũ4�p��,���� ٣�ܙL��;�Y�����#f�'y2�B�A�z�YN����&��IO�aH�˔��^ 3�jF=F��CT��V���6S��� :������b���ǫ��\�{�+?��
��2�J=�I2K���4ZB���IW~ΑH�P�i�T�`?CAdӤ*q��RXܮ�#c �b%�Ԉ��hX4�8���9��[��s�����C�qx����sr_b���|�'#�~r���d<Լ���F]xE=��s�֏�kY�S��]�4��Tz\f���s��Ϙ�X�L��p;ePvj݊Ω-s��s����p3zBbc&�cROI�.Iҥ���s��O
%��F)A�"�����q�^�՗�K���~/bs\ĉ�H�R{�E�R�^K�xJ�Ð�>�4�Y��s.�U���m��lï��#�}��Z� l'�*�Q��4�{Ρ���#ӶOaI5�9k[8�޵P�V�xV��z�#�}��@J�VLH�
�zM���im��E�l|�3�~�f!�( 掋�M���u�V������#�~�6-mN�5��	��1�s�+?�ȭ��:)Q��2��	�����7�y�9���#�~�1�����Ȇ_0j��Ӌ˕�s��_�0�k��:j��S�h"uA�Ecn�O����z��
��m��y��p��~��bi#'�+B��z�yaԀ�S �ȈPK�&HG�˜��#��JHh*��!�XQ��~�M4�}E�)��gT=����4m���A�jm��9� 7����e7�11� 1�1��ac��}i����P���P+N��p3��9�
f�t��Ƴ�jG6Q��|�N����@����s�v��`S�bi�u�>��AOUW�
�9�>�1b�pCBd�Y��v.J<�r���
�9r;�9��w�SL�su��؊�ʜ}^��1shFɵ���{�&P�jL9j[RFDk�_2� �V��2�RA��p����A�Uظ� �vs� ���.�s%j+c�h��{�H�=BZh��wߩܫ{]��AJÑ�(l�=��5�rղv�a��Q*�	�|�1��6G
/)�c�	�m�F�of�ZTxwD�p��� ��PH�]�??�p�^p��M�	�X����3��`֞yb���"(�n)�:F�0��L�`n-7T�	�gF�a��5�$-�5Y�/��W��o��T      2   J  x���;k�0�=�B[��Iwz�S���B�v�M��Wn!C(�.�v�܏�m����m��v��G�~�i��e+��4V,�c:��1U�4}*v�P��؎ӥ��I:�o�C�0�z�ޟ���;�T{� �q�L`C��X;k@؇r
��du�q���[@�6#�֫(�=t����^=.6�!�/4�ɿ ��A�$�Aـ�m��L(i�d����S�;�c2)d@*�)��aB5��Z�3�{���V�����S���2�{�1d�@��=A�J��#��e�ļHN9�g��9[�Z�<)�\!aK�F���b�	���      ,   H  x����n�P��Oq&jbP@T�PJ�
��i�	�rD��/MLcҥ�M&�ɗ��3TM���"+ê.r0E��E��9(ݺn�jXTE����-� ��L�:���0�	w�/ǤIyt\�d�f�*�������6.3IIF2��ȗ4�_���N��Ok�Lf/#��޹A���5Mn��h%]l�>�Q�a!�/��z��d��9	�H�#�۱O�R�u1�
T���`�l����!�f�M9>{ӛ��쵒p��D+�:`��
�,h�u�4�����We��^vò�����Ϸ]���ǥC�׸�ʑ�.��k4�nz�;      .      x��\[oWr~���<�6#�9���X���o�%X�e�HDB�l�`�8CQ�Bٴd�8���	�A��ΐ=W���Q�����鞡��a�Ȟ�s��������;7�~7y��w�L>������^����;��M���i$wn�n�fw��m�q����;������|x�<{�}����F���{W~��[�����G�����?ܻ����ܹ���+��w���J#y��^k$/����"��b�8N��*���ϳ�[��jc�8h��I��'KI�e>�o��~�O�A>+��?˿�|����$)城|�$с�S�3γ$�=�d���f�3>�c̴:z_�$o���iZ�C�\V1�_3�F����*��.&�W�s|u���x�_��g���2*��s��'<�_����:I��� �Ī�6{����XI3��'�oV$�#�/_-��n�!��#u��cݠ��/��S}4��qF���T�䫇2�;��ifz�:\Oe�VJ�����]�����<���+*L"��R�������Tg��a$��I�	F���έ<U��O�^�/�BM��R��#3�|���<��N3��E��?����{�qy�2��4�4#_���gH!�N�\>��Q�I�PWI��B{�
�SQ�2���+6�����K#|�e�p(�O=���Z!b4Ӑ��e��z��E�qV*�KS������UoD#��ɮ>��(:H#?��"�Z|
���0��8֏TD��^^�&��<ՐR���5�^Nt	*�,?�����dr�r�j22$�Å�wl �U'��ʮ'X��~C�bY�u �R�j6��+������UWV2S�V�E
�g�_��u1����A���O����g	$��p)r
�8�}��u�P�3K�>&�|���t�=�cU<�u4"կ�%@�vX7uO�r�/���#n�3��#�G�j/�/ol6��)����q�ԏt�~�����r������FkM��U�������%���;��+���5C��c�� �3;jy0[�����. $�dl��P������Ož�D?�����3y ��,h-X��ŸP��y�9��nZ3b���~,C��_�����a����`��?_�}8�T���D�80�Ϸ�P��X�Nh�*�3ˋ)�җΉ� �	��>#��|G�1GP/X@�fX����O�b�E���X0D%£�}c˘�؟��'��$$b�2t
��_T�	�\^�k
���hŤhF5^�y^��d)g��+�@c�x&�K�v��jF]�zbi#x}0%�	�q�I�9L~\|R&z��@fU]0��e���������l%���`�r��HV6ךJ�br�n�1�{���"� x�
�}'X��<���_B��U�u��_z�'�ի�����ʍf�F�%g��^�Z^[jo6[핗�n�5�����Z����n�UdNU����x&?%����"ӣ�,̈�M�fJ�t�g�� ���UK�@	SV|g�E���!���Ob���.:<�](��g��h���6n�(���B����T8�F�p��<&Lu���>�vF�U��3d��e�v�';�F'�F������F,����(�
8tӾ*`���p.$C�:�nTcKA�"��pg�KWv��ud��p6��zơL �RF��A���{���c&ByU}|'#��J��*�����yzS�-���"V�U��Ad�yTa�Y5����^��8�j3���)�>��3�9�fr�HrS:����1K��fm>Ϸ���)�V���d�H É�ń��[�nˤ���N?��78R�T��*/�,�O�b�,��5[R~@�m��IZcQ�l�1�.Y.���C�:WZ R<�2�
Ӷh��k�Ղ  A��4�
k�Tw^[�`r�e(���6�($#��cԟf֡![d��S?��� oF��w��mj� ��-�M*g��ӵ׳�o�bE����0v�޿��.��'ot(4�|5�l6ON�(T!!�-)��1Q@�=�<�^]���o�Q�9A��K���hfؚ~��8�S�|M�t�BK�(��Q8!��~�F#�x���<�X���y^��~�h��He=�a�EOv��LI�D(9��J��E��Be<!nl,���A�����[m�gs�����k�ֲP����P������.�BI�Hx��A6�wm���l�֛֗k�k$��#�Uu>&w;w��Ƅ~�m��q�\S`4�ў�`��y¯������%E3S�j�)�yƕ�Tf4}��ca����j��`9�u-�U�B1Z���,(� �f|�N6	�և3�z�2@��P��!��a$�gb�'�ē8�6�jB#Cb��H���3�l%�R�X�)q_7�`.q(fP`?�y�9-pw��FbV�yX�_*�3�JԼT�A�m;��G|�D�3�|D�!㬯-&���>�z�%#�!)���1��x@����#2�4o�}�u��ŕN�Y��iʠ�BW*�!�_�<K�I����6���uN]�#��Z���c��u�1��ğ<8�z6c���0J$����k���i���l�_G��	����<w���&����Bf٬!�Q�1��ޛxj���^c< �Ӿ�=ħ�Yȑ����ʣ��L��ض��C��,�C^T�G3���Z���#���R�*WE��.'��C�S�W�D<��~�z��1�ޠ��29���4�Ye���Ũw��y���	�40��DbH�:��~"��$38���蹧R��IC��o=d�z �h��2�ӆ)�ñ�0�!L�2�c�"$F��XdT�h���V�4օ�R��8�
L�*+�qZ]_j�8����\��x��4�İ�˽�R�1/������[>�u7!�Fцg�^��7�0���I$~�������ʥ]s&'X]�S3�
Ke~c�A��fd;ō)�} Yp�u���g5�!Fd(�e���B��7�n~��J��5^Yc{UI.�R������~�Ԙ��zx�����.��,u}����ZkKk���d���;�C��j,�ؐè+Ĵ���і�?,IgJ�ᷘ�z�F���p����K��F�`,3|g��PD�´(hU6��inҩ�,b�H��G��TJ�ɬB;TKx�\�c�(��=���$,���,�F�V���������k���$��f���_ʙ
���$D��E�yO��s��;�>zΰL�UadX?f<��1�Y�o��R�0fCA��v��gY�9B{�Kun�t�Q;�ǈ򵾺z%),`"��m$��h�0VeQ��	��e����Y# H]#��ȁ��q�1�ڳ��pT�Ե]�,�Ff^&n�5��jpf�}�cKZ 6k!�*`X!e��90zw:d8���j6�|���_��0�BV�z��&�i��`^Ft^��C�6"��t�3K{_�	1�xb��gD�`�޾�zN4�`�	O+�����Վ{	��zXP���Ap:C����ޔ�|�=`w��uQQ�-��L1�WqĚt�UeW��P]��Ĳ4���#����@,ݘ����yE:#�RJ	8=i��i����0�]�Lf�JJ�aH&�k]i3��3�ǜ����Œ��u��:�wA8�ΠTe�8.�=d�ܧT�(�N��G�&I���	��'@a�H KP8��-�m5��-�J��M�+�9ɴ��/�轲!�ཿ�}ow��/G?'?	S��0��E�iuc��n/�[X�WW��2f!���U�+}3�!����R�ž�L%N����2�q�N�"�3U�@!�Z�%@xp?��_ɼRd������\Q��aY�Z�
=dA�R~U�Za���$w��T��c��|�9�Vk����y&t�_Q0y* �����*�[wv��z�H��Q��y�[�Z]_jm��L��������i�}L��Y�sO��1��O���s3�&_nhZ���U%6B�{m���
�`������Z �I��2)�]!r�:���t;s���9ٞzFK�P��F ¾���+M< �  �1�ɑLI��=�ҥߠX����~sw���_1O���>^�2*�>�t��2��/~�h���Ӓ���b���9�n��,�5��o��Қ�s����&{�K,���zWM��b��<�zg,�k�hrgk�:Q��R�F�15���<a/��Q�h?�� K��2��&��~b4ƨi� �*�C&�Bo�\��#�e��X��*�%��w����gU�������W�ɓ�c���e��ҫW*��m%��.�syA�%�V�
�Վ&ױD�8b��4��0f���9�"��{f����4B9��0�^���#T�R zf�M��n�8�[r�L����g�Z0�2^����LǑ<���V��}�["�2���^/c��Ֆx�fS�eW�Qss����{wo��y�Bx�K:���8���[���n$��z�W�~���Wx���ܳ���mm�����\�X[�:�2�Q߳��P�����ҩ�1�<��̵B]�9���Z���b��{�Z��U��ԩIG���o�) ̺p�����#~0a�P�.�C�.�
�`7��bb��B3�0�~X�]Bl]�-�]!3���lf���h��pi���LC4�0��L4��-{Y����f�r���mn�v%kHƾΐ���ex#�8����5=���l�fM�X�B7������8/Q*R����Jk3�7EF���;�_8it��U{��Q�u{�M��5AG���fJ�M\T�F����uԒV��W]h^!�����j7<��AOY2�$�	�#�Em����t؎Io�	��TGS�6��3�Ŝ�+�ZOԚg-uQ1��������B]	X��4�Sȼ�]کw? �Y���Nlqy�cVp�3kw�&�ss�޾���߱Gh,�Vi�	��O>��5�kַڛK��U��_��T�,&
�c��ʻ���ƻ�Ǉ�����(���t[��Z�o���pPƴ�lb>׸�����F+�d��)@}�fT�_�1��r���	L;�Q�q���.6�Z����/��kxJN�1�!�o���j"��볾z��_y)�N��r�2<)X<�i��x�*nE��ck*��[�Ǽ,����[���̞�z��kR�T��>� �8�r�(�-���!�`}b�X���JJ�ޚ�{�D>���ˏ�P���vӥЈS�J�˅�`�5�F��r���YH����25O>w�%]����3�NpLV�	�'HV�۽��G�^�u7y�*�o��uz��8����|�-d�i9�)��6�)V(Z��(�;3������W��'�ˮ�V�MT�,�<L�����h&�ll�o4[?�n��5}�����t��IL�Q|��@�eo�+��t��AvITŏ���>ǲϮ�]D�I����U)���xʪOm���?E+�d#.\�i?�5��y(`T����������j��t�i�,��@���M�ٽZV1���ȴ˸��[HA�����������Y��EE":��=� �>��2L�V���Dw�S�RYp�ʕj� .�Gm1�߉�*�۹����Y��2yA?��^�u-hW��"*d��__jy-\g9�(.d�
*�Y�"O��w�J�N"��nv��1����=���!��)��<�W�i�`8� Rsl$ih��R�޻��7�ŭ4兒�G�(
�}[ә��n����"�ǯ���B���X|9�Ǿ?�����1n8|�j=��uF>Ȯ:\�Ϲ���K��^�Y      0   d   x���v
Q���W((M��L�+(�O)M.�ON,*Q��L�Q(H-*�ϋ3���)�
a�>���
F�:
�:
f��\��0�l�9��3�Q �hh4�� i�J�     