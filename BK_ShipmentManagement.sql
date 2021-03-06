PGDMP         .    
            u           ShipmentManagement    9.6.3    9.6.3 Q    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    16408    ShipmentManagement    DATABASE     �   CREATE DATABASE "ShipmentManagement" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
 $   DROP DATABASE "ShipmentManagement";
             postgres    false            �           1262    16408    ShipmentManagement    COMMENT     c   COMMENT ON DATABASE "ShipmentManagement" IS 'Data base for manage all parts by generate waybills';
                  postgres    false    2227                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16476    Address    TABLE     M  CREATE TABLE "Address" (
    "Id" integer NOT NULL,
    "Street" character(100) NOT NULL,
    "InternalNumber" character(10),
    "ExternalNumber" character(10),
    "Neighborhood" character(50) NOT NULL,
    "City" character(50) NOT NULL,
    "State" character(50) NOT NULL,
    "ZipCode" character(10),
    "CustomerId" integer
);
    DROP TABLE public."Address";
       public         postgres    false    3            �            1259    16474    Address_Id_seq    SEQUENCE     r   CREATE SEQUENCE "Address_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Address_Id_seq";
       public       postgres    false    198    3            �           0    0    Address_Id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE "Address_Id_seq" OWNED BY "Address"."Id";
            public       postgres    false    197            �            1259    16484    CreatedWaybill    TABLE     �  CREATE TABLE "CreatedWaybill" (
    "Id" integer NOT NULL,
    "Waybill" character(20),
    "SenderAdressId" integer NOT NULL,
    "ReceiverAddressId" integer NOT NULL,
    "SenderName" character(50),
    "SenderCelPhone" character(15),
    "SenderPhone" character(15),
    "ReceiverName" character(50),
    "ReceiverCelPhone" character(15),
    "ReceiverPhone" character(15),
    "CreationDateTime" date,
    "UserId" integer NOT NULL
);
 $   DROP TABLE public."CreatedWaybill";
       public         postgres    false    3            �            1259    16482    CreatedWaybill_Id_seq    SEQUENCE     y   CREATE SEQUENCE "CreatedWaybill_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."CreatedWaybill_Id_seq";
       public       postgres    false    3    200            �           0    0    CreatedWaybill_Id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE "CreatedWaybill_Id_seq" OWNED BY "CreatedWaybill"."Id";
            public       postgres    false    199            �            1259    16468    Customer    TABLE       CREATE TABLE "Customer" (
    "Id" integer NOT NULL,
    "CustomerNumber" character(10) NOT NULL,
    "CompanyName" character(50) NOT NULL,
    "ContactName" character(50) NOT NULL,
    "Email" character(50) NOT NULL,
    "Phone" character(15) NOT NULL,
    "AddressId" integer
);
    DROP TABLE public."Customer";
       public         postgres    false    3            �            1259    16466    Customer_Id_seq    SEQUENCE     s   CREATE SEQUENCE "Customer_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Customer_Id_seq";
       public       postgres    false    196    3            �           0    0    Customer_Id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE "Customer_Id_seq" OWNED BY "Customer"."Id";
            public       postgres    false    195            �            1259    16460    Discount    TABLE     v   CREATE TABLE "Discount" (
    "Id" integer NOT NULL,
    "Discount" real NOT NULL,
    "Description" character(50)
);
    DROP TABLE public."Discount";
       public         postgres    false    3            �            1259    16458    Discount_Id_seq    SEQUENCE     s   CREATE SEQUENCE "Discount_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."Discount_Id_seq";
       public       postgres    false    194    3            �           0    0    Discount_Id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE "Discount_Id_seq" OWNED BY "Discount"."Id";
            public       postgres    false    193            �            1259    16508    Folio    TABLE     3  CREATE TABLE "Folio" (
    "Id" integer NOT NULL,
    "ServiceId" integer NOT NULL,
    "Availables" integer NOT NULL,
    "Start" integer NOT NULL,
    "End" integer NOT NULL,
    "PurchaseDate" date NOT NULL,
    "Used" integer NOT NULL,
    "Total" integer NOT NULL,
    "CustomerId" integer NOT NULL
);
    DROP TABLE public."Folio";
       public         postgres    false    3            �            1259    16506    Folio_Id_seq    SEQUENCE     p   CREATE SEQUENCE "Folio_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public."Folio_Id_seq";
       public       postgres    false    202    3            �           0    0    Folio_Id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE "Folio_Id_seq" OWNED BY "Folio"."Id";
            public       postgres    false    201            �            1259    16433    Menu    TABLE     x   CREATE TABLE "Menu" (
    "Id" integer NOT NULL,
    "Description" character(50) NOT NULL,
    "Value" text NOT NULL
);
    DROP TABLE public."Menu";
       public         postgres    false    3            �            1259    16431    Menu_Id_seq    SEQUENCE     o   CREATE SEQUENCE "Menu_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."Menu_Id_seq";
       public       postgres    false    3    190            �           0    0    Menu_Id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE "Menu_Id_seq" OWNED BY "Menu"."Id";
            public       postgres    false    189            �            1259    16425    Profile    TABLE     �   CREATE TABLE "Profile" (
    "Id" integer NOT NULL,
    "ProfileName" character(50) NOT NULL,
    "Description" character(50),
    "MenuId" integer NOT NULL
);
    DROP TABLE public."Profile";
       public         postgres    false    3            �            1259    16423    Profile_Id_seq    SEQUENCE     r   CREATE SEQUENCE "Profile_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Profile_Id_seq";
       public       postgres    false    188    3            �           0    0    Profile_Id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE "Profile_Id_seq" OWNED BY "Profile"."Id";
            public       postgres    false    187            �            1259    16452    Service    TABLE     {   CREATE TABLE "Service" (
    "Id" integer NOT NULL,
    "Name" character(50) NOT NULL,
    "Description" character(100)
);
    DROP TABLE public."Service";
       public         postgres    false    3            �            1259    16450    Service_Id_seq    SEQUENCE     r   CREATE SEQUENCE "Service_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public."Service_Id_seq";
       public       postgres    false    3    192            �           0    0    Service_Id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE "Service_Id_seq" OWNED BY "Service"."Id";
            public       postgres    false    191            �            1259    16409    User    TABLE     �   CREATE TABLE "User" (
    "Id" integer NOT NULL,
    "Name" character(50),
    email character(50) NOT NULL,
    "Password" text,
    "CustomerId" integer,
    "ProfileId" integer NOT NULL
);
    DROP TABLE public."User";
       public         postgres    false    3            �            1259    16412    User_Id_seq    SEQUENCE     o   CREATE SEQUENCE "User_Id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public."User_Id_seq";
       public       postgres    false    185    3            �           0    0    User_Id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE "User_Id_seq" OWNED BY "User"."Id";
            public       postgres    false    186            	           2604    16479 
   Address Id    DEFAULT     `   ALTER TABLE ONLY "Address" ALTER COLUMN "Id" SET DEFAULT nextval('"Address_Id_seq"'::regclass);
 =   ALTER TABLE public."Address" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    197    198    198            
           2604    16487    CreatedWaybill Id    DEFAULT     n   ALTER TABLE ONLY "CreatedWaybill" ALTER COLUMN "Id" SET DEFAULT nextval('"CreatedWaybill_Id_seq"'::regclass);
 D   ALTER TABLE public."CreatedWaybill" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    200    199    200                       2604    16471    Customer Id    DEFAULT     b   ALTER TABLE ONLY "Customer" ALTER COLUMN "Id" SET DEFAULT nextval('"Customer_Id_seq"'::regclass);
 >   ALTER TABLE public."Customer" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    196    195    196                       2604    16463    Discount Id    DEFAULT     b   ALTER TABLE ONLY "Discount" ALTER COLUMN "Id" SET DEFAULT nextval('"Discount_Id_seq"'::regclass);
 >   ALTER TABLE public."Discount" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    194    193    194                       2604    16511    Folio Id    DEFAULT     \   ALTER TABLE ONLY "Folio" ALTER COLUMN "Id" SET DEFAULT nextval('"Folio_Id_seq"'::regclass);
 ;   ALTER TABLE public."Folio" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    202    201    202                       2604    16436    Menu Id    DEFAULT     Z   ALTER TABLE ONLY "Menu" ALTER COLUMN "Id" SET DEFAULT nextval('"Menu_Id_seq"'::regclass);
 :   ALTER TABLE public."Menu" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    189    190    190                       2604    16428 
   Profile Id    DEFAULT     `   ALTER TABLE ONLY "Profile" ALTER COLUMN "Id" SET DEFAULT nextval('"Profile_Id_seq"'::regclass);
 =   ALTER TABLE public."Profile" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    187    188    188                       2604    16455 
   Service Id    DEFAULT     `   ALTER TABLE ONLY "Service" ALTER COLUMN "Id" SET DEFAULT nextval('"Service_Id_seq"'::regclass);
 =   ALTER TABLE public."Service" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    191    192    192                       2604    16414    User Id    DEFAULT     Z   ALTER TABLE ONLY "User" ALTER COLUMN "Id" SET DEFAULT nextval('"User_Id_seq"'::regclass);
 :   ALTER TABLE public."User" ALTER COLUMN "Id" DROP DEFAULT;
       public       postgres    false    186    185            �          0    16476    Address 
   TABLE DATA               �   COPY "Address" ("Id", "Street", "InternalNumber", "ExternalNumber", "Neighborhood", "City", "State", "ZipCode", "CustomerId") FROM stdin;
    public       postgres    false    198   zX       �           0    0    Address_Id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('"Address_Id_seq"', 1, false);
            public       postgres    false    197            �          0    16484    CreatedWaybill 
   TABLE DATA               �   COPY "CreatedWaybill" ("Id", "Waybill", "SenderAdressId", "ReceiverAddressId", "SenderName", "SenderCelPhone", "SenderPhone", "ReceiverName", "ReceiverCelPhone", "ReceiverPhone", "CreationDateTime", "UserId") FROM stdin;
    public       postgres    false    200   �X       �           0    0    CreatedWaybill_Id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('"CreatedWaybill_Id_seq"', 1, false);
            public       postgres    false    199            �          0    16468    Customer 
   TABLE DATA               r   COPY "Customer" ("Id", "CustomerNumber", "CompanyName", "ContactName", "Email", "Phone", "AddressId") FROM stdin;
    public       postgres    false    196   �X       �           0    0    Customer_Id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('"Customer_Id_seq"', 1, false);
            public       postgres    false    195            �          0    16460    Discount 
   TABLE DATA               >   COPY "Discount" ("Id", "Discount", "Description") FROM stdin;
    public       postgres    false    194   �X       �           0    0    Discount_Id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('"Discount_Id_seq"', 1, false);
            public       postgres    false    193            �          0    16508    Folio 
   TABLE DATA               z   COPY "Folio" ("Id", "ServiceId", "Availables", "Start", "End", "PurchaseDate", "Used", "Total", "CustomerId") FROM stdin;
    public       postgres    false    202   �X       �           0    0    Folio_Id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('"Folio_Id_seq"', 1, false);
            public       postgres    false    201            �          0    16433    Menu 
   TABLE DATA               7   COPY "Menu" ("Id", "Description", "Value") FROM stdin;
    public       postgres    false    190   Y       �           0    0    Menu_Id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('"Menu_Id_seq"', 1, false);
            public       postgres    false    189            �          0    16425    Profile 
   TABLE DATA               J   COPY "Profile" ("Id", "ProfileName", "Description", "MenuId") FROM stdin;
    public       postgres    false    188   (Y       �           0    0    Profile_Id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('"Profile_Id_seq"', 1, false);
            public       postgres    false    187            �          0    16452    Service 
   TABLE DATA               9   COPY "Service" ("Id", "Name", "Description") FROM stdin;
    public       postgres    false    192   EY       �           0    0    Service_Id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('"Service_Id_seq"', 1, false);
            public       postgres    false    191            �          0    16409    User 
   TABLE DATA               U   COPY "User" ("Id", "Name", email, "Password", "CustomerId", "ProfileId") FROM stdin;
    public       postgres    false    185   bY       �           0    0    User_Id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('"User_Id_seq"', 1, false);
            public       postgres    false    186                       2606    16481    Address Address_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY "Address"
    ADD CONSTRAINT "Address_pkey" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "Address_pkey";
       public         postgres    false    198    198                       2606    16489 "   CreatedWaybill CreatedWaybill_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY "CreatedWaybill"
    ADD CONSTRAINT "CreatedWaybill_pkey" PRIMARY KEY ("ReceiverAddressId", "Id");
 P   ALTER TABLE ONLY public."CreatedWaybill" DROP CONSTRAINT "CreatedWaybill_pkey";
       public         postgres    false    200    200    200                       2606    16473    Customer Customer_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY "Customer"
    ADD CONSTRAINT "Customer_pkey" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."Customer" DROP CONSTRAINT "Customer_pkey";
       public         postgres    false    196    196                       2606    16465    Discount Discount_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY "Discount"
    ADD CONSTRAINT "Discount_pkey" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."Discount" DROP CONSTRAINT "Discount_pkey";
       public         postgres    false    194    194                       2606    16513    Folio Folio_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY "Folio"
    ADD CONSTRAINT "Folio_pkey" PRIMARY KEY ("Id");
 >   ALTER TABLE ONLY public."Folio" DROP CONSTRAINT "Folio_pkey";
       public         postgres    false    202    202                       2606    16441    Menu Menu_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY "Menu"
    ADD CONSTRAINT "Menu_pkey" PRIMARY KEY ("Id");
 <   ALTER TABLE ONLY public."Menu" DROP CONSTRAINT "Menu_pkey";
       public         postgres    false    190    190                       2606    16430    Profile Profile_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY "Profile"
    ADD CONSTRAINT "Profile_pkey" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."Profile" DROP CONSTRAINT "Profile_pkey";
       public         postgres    false    188    188                       2606    16457    Service Service_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY "Service"
    ADD CONSTRAINT "Service_pkey" PRIMARY KEY ("Id");
 B   ALTER TABLE ONLY public."Service" DROP CONSTRAINT "Service_pkey";
       public         postgres    false    192    192                       2606    16422    User User_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY "User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY ("Id");
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public         postgres    false    185    185            !           2606    16546    Customer AddressId    FK CONSTRAINT     q   ALTER TABLE ONLY "Customer"
    ADD CONSTRAINT "AddressId" FOREIGN KEY ("AddressId") REFERENCES "Address"("Id");
 @   ALTER TABLE ONLY public."Customer" DROP CONSTRAINT "AddressId";
       public       postgres    false    196    2073    198            '           2606    16521    Folio CustomerId    FK CONSTRAINT     q   ALTER TABLE ONLY "Folio"
    ADD CONSTRAINT "CustomerId" FOREIGN KEY ("CustomerId") REFERENCES "Customer"("Id");
 >   ALTER TABLE ONLY public."Folio" DROP CONSTRAINT "CustomerId";
       public       postgres    false    202    2071    196                       2606    16526    User CustomerId    FK CONSTRAINT     p   ALTER TABLE ONLY "User"
    ADD CONSTRAINT "CustomerId" FOREIGN KEY ("CustomerId") REFERENCES "Customer"("Id");
 =   ALTER TABLE ONLY public."User" DROP CONSTRAINT "CustomerId";
       public       postgres    false    2071    196    185            "           2606    16541    Address CustomerId    FK CONSTRAINT     s   ALTER TABLE ONLY "Address"
    ADD CONSTRAINT "CustomerId" FOREIGN KEY ("CustomerId") REFERENCES "Customer"("Id");
 @   ALTER TABLE ONLY public."Address" DROP CONSTRAINT "CustomerId";
       public       postgres    false    198    2071    196                        2606    16536    Profile MenuId    FK CONSTRAINT     g   ALTER TABLE ONLY "Profile"
    ADD CONSTRAINT "MenuId" FOREIGN KEY ("MenuId") REFERENCES "Menu"("Id");
 <   ALTER TABLE ONLY public."Profile" DROP CONSTRAINT "MenuId";
       public       postgres    false    188    2065    190                       2606    16531    User ProfileId    FK CONSTRAINT     m   ALTER TABLE ONLY "User"
    ADD CONSTRAINT "ProfileId" FOREIGN KEY ("ProfileId") REFERENCES "Profile"("Id");
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "ProfileId";
       public       postgres    false    2063    188    185            #           2606    16490     CreatedWaybill ReceiverAddressId    FK CONSTRAINT     �   ALTER TABLE ONLY "CreatedWaybill"
    ADD CONSTRAINT "ReceiverAddressId" FOREIGN KEY ("ReceiverAddressId") REFERENCES "Address"("Id");
 N   ALTER TABLE ONLY public."CreatedWaybill" DROP CONSTRAINT "ReceiverAddressId";
       public       postgres    false    198    200    2073            $           2606    16495    CreatedWaybill SenderAddressId    FK CONSTRAINT     �   ALTER TABLE ONLY "CreatedWaybill"
    ADD CONSTRAINT "SenderAddressId" FOREIGN KEY ("SenderAdressId") REFERENCES "Address"("Id");
 L   ALTER TABLE ONLY public."CreatedWaybill" DROP CONSTRAINT "SenderAddressId";
       public       postgres    false    2073    198    200            &           2606    16516    Folio ServiceId    FK CONSTRAINT     n   ALTER TABLE ONLY "Folio"
    ADD CONSTRAINT "ServiceId" FOREIGN KEY ("ServiceId") REFERENCES "Service"("Id");
 =   ALTER TABLE ONLY public."Folio" DROP CONSTRAINT "ServiceId";
       public       postgres    false    2067    192    202            %           2606    16500    CreatedWaybill UserId    FK CONSTRAINT     n   ALTER TABLE ONLY "CreatedWaybill"
    ADD CONSTRAINT "UserId" FOREIGN KEY ("UserId") REFERENCES "User"("Id");
 C   ALTER TABLE ONLY public."CreatedWaybill" DROP CONSTRAINT "UserId";
       public       postgres    false    185    200    2061            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     