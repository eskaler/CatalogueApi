--------------------------------------------------------
--  File created - �����-�������-16-2019   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CRM_CATEGORY_REF_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CATALOGUE"."CRM_CATEGORY_REF_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CRM_ORDER_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CATALOGUE"."CRM_ORDER_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 11 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CRM_ORDR_PDCT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CATALOGUE"."CRM_ORDR_PDCT_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 11 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CRM_PHOTO_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CATALOGUE"."CRM_PHOTO_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CRM_PRODUCT_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CATALOGUE"."CRM_PRODUCT_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 23 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CRM_USER_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "CATALOGUE"."CRM_USER_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CRM_CATEGORY_REF
--------------------------------------------------------

  CREATE TABLE "CATALOGUE"."CRM_CATEGORY_REF" 
   (	"ID" NUMBER, 
	"S_NAME" VARCHAR2(30 CHAR), 
	"S_CAPTION" VARCHAR2(50 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE" ;

   COMMENT ON COLUMN "CATALOGUE"."CRM_CATEGORY_REF"."ID" IS '�� ���������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_CATEGORY_REF"."S_NAME" IS '���� ������������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_CATEGORY_REF"."S_CAPTION" IS '������������';
--------------------------------------------------------
--  DDL for Table CRM_ORDER
--------------------------------------------------------

  CREATE TABLE "CATALOGUE"."CRM_ORDER" 
   (	"ID" NUMBER, 
	"S_CUSTOMER_NAME" VARCHAR2(120 CHAR), 
	"S_CUSTOMER_PHONE" VARCHAR2(20 CHAR), 
	"D_CREATED" DATE, 
	"D_EXPIRES" DATE DEFAULT sysdate + 15, 
	"ID_STATUS" NUMBER DEFAULT 1, 
	"D_EDITED" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE" ;

   COMMENT ON COLUMN "CATALOGUE"."CRM_ORDER"."ID" IS '�� ������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_ORDER"."S_CUSTOMER_PHONE" IS '����� ���������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_ORDER"."D_CREATED" IS '���� �������� ������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_ORDER"."D_EXPIRES" IS '���� ���������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_ORDER"."ID_STATUS" IS '������ ������';
--------------------------------------------------------
--  DDL for Table CRM_ORDR_PDCT
--------------------------------------------------------

  CREATE TABLE "CATALOGUE"."CRM_ORDR_PDCT" 
   (	"ID" NUMBER, 
	"ID_ORDER" NUMBER, 
	"ID_PRODUCT" NUMBER, 
	"N_QTY" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE" ;

   COMMENT ON COLUMN "CATALOGUE"."CRM_ORDR_PDCT"."ID" IS '�� ������ ������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_ORDR_PDCT"."ID_ORDER" IS '�� ������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_ORDR_PDCT"."ID_PRODUCT" IS '�� ������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_ORDR_PDCT"."N_QTY" IS '����������';
   COMMENT ON TABLE "CATALOGUE"."CRM_ORDR_PDCT"  IS '������ � ������';
--------------------------------------------------------
--  DDL for Table CRM_PHOTO
--------------------------------------------------------

  CREATE TABLE "CATALOGUE"."CRM_PHOTO" 
   (	"ID" NUMBER, 
	"ID_PRODUCT" NUMBER, 
	"S_NAME" VARCHAR2(30 BYTE), 
	"S_SERVER" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE" ;
--------------------------------------------------------
--  DDL for Table CRM_PRODUCT
--------------------------------------------------------

  CREATE TABLE "CATALOGUE"."CRM_PRODUCT" 
   (	"ID" NUMBER, 
	"S_NAME" VARCHAR2(30 BYTE), 
	"S_CAPTION" VARCHAR2(100 BYTE), 
	"S_DESC" VARCHAR2(1000 BYTE), 
	"N_QTY" NUMBER, 
	"F_PRICE" FLOAT(126), 
	"ID_CATEGORY" NUMBER, 
	"D_CREATED" DATE DEFAULT sysdate, 
	"ID_CREATOR" NUMBER, 
	"D_EDITED" DATE, 
	"ID_EDITOR" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE" ;

   COMMENT ON COLUMN "CATALOGUE"."CRM_PRODUCT"."ID" IS '�� ������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_PRODUCT"."S_NAME" IS '��������� ��������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_PRODUCT"."S_CAPTION" IS '������������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_PRODUCT"."S_DESC" IS '��������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_PRODUCT"."N_QTY" IS '����������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_PRODUCT"."F_PRICE" IS '����';
   COMMENT ON COLUMN "CATALOGUE"."CRM_PRODUCT"."ID_CATEGORY" IS '��������� ������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_PRODUCT"."D_CREATED" IS '���� ��������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_PRODUCT"."ID_CREATOR" IS '�� ����������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_PRODUCT"."D_EDITED" IS '���� ��������������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_PRODUCT"."ID_EDITOR" IS '�� ����������������';
--------------------------------------------------------
--  DDL for Table CRM_STATUS_REF
--------------------------------------------------------

  CREATE TABLE "CATALOGUE"."CRM_STATUS_REF" 
   (	"ID" NUMBER, 
	"S_NAME" VARCHAR2(30 CHAR), 
	"S_CAPTION" VARCHAR2(50 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE" ;

   COMMENT ON COLUMN "CATALOGUE"."CRM_STATUS_REF"."S_NAME" IS '���� ������������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_STATUS_REF"."S_CAPTION" IS '������������';
--------------------------------------------------------
--  DDL for Table CRM_USER
--------------------------------------------------------

  CREATE TABLE "CATALOGUE"."CRM_USER" 
   (	"ID" NUMBER, 
	"S_LOGIN" VARCHAR2(50 CHAR), 
	"S_PASSWORD" VARCHAR2(70 CHAR), 
	"S_SALT" VARCHAR2(70 CHAR), 
	"S_TOKEN" VARCHAR2(100 CHAR)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE" ;

   COMMENT ON COLUMN "CATALOGUE"."CRM_USER"."ID" IS '�� ������������';
   COMMENT ON COLUMN "CATALOGUE"."CRM_USER"."S_LOGIN" IS '�����';
   COMMENT ON COLUMN "CATALOGUE"."CRM_USER"."S_PASSWORD" IS '������ SHA-256';
REM INSERTING into CATALOGUE.CRM_CATEGORY_REF
SET DEFINE OFF;
Insert into CATALOGUE.CRM_CATEGORY_REF (ID,S_NAME,S_CAPTION) values ('1','casting','�����');
REM INSERTING into CATALOGUE.CRM_ORDER
SET DEFINE OFF;
Insert into CATALOGUE.CRM_ORDER (ID,S_CUSTOMER_NAME,S_CUSTOMER_PHONE,D_CREATED,D_EXPIRES,ID_STATUS,D_EDITED) values ('10','Alexey','8912392323',to_date('10.08.19','DD.MM.RR'),to_date('25.08.19','DD.MM.RR'),'1',to_date('10.08.19','DD.MM.RR'));
Insert into CATALOGUE.CRM_ORDER (ID,S_CUSTOMER_NAME,S_CUSTOMER_PHONE,D_CREATED,D_EXPIRES,ID_STATUS,D_EDITED) values ('3','Alexey','8912392323',to_date('09.08.19','DD.MM.RR'),to_date('24.08.19','DD.MM.RR'),'2',to_date('10.08.19','DD.MM.RR'));
Insert into CATALOGUE.CRM_ORDER (ID,S_CUSTOMER_NAME,S_CUSTOMER_PHONE,D_CREATED,D_EXPIRES,ID_STATUS,D_EDITED) values ('4','Alexey','8912392323',to_date('09.08.19','DD.MM.RR'),to_date('24.08.19','DD.MM.RR'),'1',to_date('09.08.19','DD.MM.RR'));
Insert into CATALOGUE.CRM_ORDER (ID,S_CUSTOMER_NAME,S_CUSTOMER_PHONE,D_CREATED,D_EXPIRES,ID_STATUS,D_EDITED) values ('5','Alexey','8912392323',to_date('09.08.19','DD.MM.RR'),to_date('24.08.19','DD.MM.RR'),'1',to_date('09.08.19','DD.MM.RR'));
Insert into CATALOGUE.CRM_ORDER (ID,S_CUSTOMER_NAME,S_CUSTOMER_PHONE,D_CREATED,D_EXPIRES,ID_STATUS,D_EDITED) values ('6','Alexey','8912392323',to_date('09.08.19','DD.MM.RR'),to_date('24.08.19','DD.MM.RR'),'1',to_date('09.08.19','DD.MM.RR'));
Insert into CATALOGUE.CRM_ORDER (ID,S_CUSTOMER_NAME,S_CUSTOMER_PHONE,D_CREATED,D_EXPIRES,ID_STATUS,D_EDITED) values ('7','Alexey','8912392323',to_date('09.08.19','DD.MM.RR'),to_date('24.08.19','DD.MM.RR'),'1',to_date('09.08.19','DD.MM.RR'));
REM INSERTING into CATALOGUE.CRM_ORDR_PDCT
SET DEFINE OFF;
Insert into CATALOGUE.CRM_ORDR_PDCT (ID,ID_ORDER,ID_PRODUCT,N_QTY) values ('5','4','1','2');
Insert into CATALOGUE.CRM_ORDR_PDCT (ID,ID_ORDER,ID_PRODUCT,N_QTY) values ('6','4','2','3');
Insert into CATALOGUE.CRM_ORDR_PDCT (ID,ID_ORDER,ID_PRODUCT,N_QTY) values ('7','4','1','2');
Insert into CATALOGUE.CRM_ORDR_PDCT (ID,ID_ORDER,ID_PRODUCT,N_QTY) values ('8','4','2','3');
Insert into CATALOGUE.CRM_ORDR_PDCT (ID,ID_ORDER,ID_PRODUCT,N_QTY) values ('9','4','1','2');
Insert into CATALOGUE.CRM_ORDR_PDCT (ID,ID_ORDER,ID_PRODUCT,N_QTY) values ('10','4','2','3');
Insert into CATALOGUE.CRM_ORDR_PDCT (ID,ID_ORDER,ID_PRODUCT,N_QTY) values ('2','3','1','2');
Insert into CATALOGUE.CRM_ORDR_PDCT (ID,ID_ORDER,ID_PRODUCT,N_QTY) values ('3','3','1','2');
Insert into CATALOGUE.CRM_ORDR_PDCT (ID,ID_ORDER,ID_PRODUCT,N_QTY) values ('4','3','1','2');
REM INSERTING into CATALOGUE.CRM_PHOTO
SET DEFINE OFF;
Insert into CATALOGUE.CRM_PHOTO (ID,ID_PRODUCT,S_NAME,S_SERVER) values ('1','5','4ALoQU1zBlJEWfj7j.png','http://127.0.0.1:8000/photos/');
Insert into CATALOGUE.CRM_PHOTO (ID,ID_PRODUCT,S_NAME,S_SERVER) values ('2','5','testFile2.png','http://127.0.0.1:8000/photos/');
Insert into CATALOGUE.CRM_PHOTO (ID,ID_PRODUCT,S_NAME,S_SERVER) values ('3','6','testFile1.png','http://127.0.0.1:8000/photos/');
Insert into CATALOGUE.CRM_PHOTO (ID,ID_PRODUCT,S_NAME,S_SERVER) values ('4','6','testFile2.png','http://127.0.0.1:8000/photos/');
Insert into CATALOGUE.CRM_PHOTO (ID,ID_PRODUCT,S_NAME,S_SERVER) values ('7','11','testFile1.png','http://127.0.0.1:8000/photos/');
Insert into CATALOGUE.CRM_PHOTO (ID,ID_PRODUCT,S_NAME,S_SERVER) values ('8','11','testFile2.png','http://127.0.0.1:8000/photos/');
Insert into CATALOGUE.CRM_PHOTO (ID,ID_PRODUCT,S_NAME,S_SERVER) values ('9','12','testFile1.png','http://127.0.0.1:8000/photos/');
Insert into CATALOGUE.CRM_PHOTO (ID,ID_PRODUCT,S_NAME,S_SERVER) values ('10','12','testFile2.png','http://127.0.0.1:8000/photos/');
Insert into CATALOGUE.CRM_PHOTO (ID,ID_PRODUCT,S_NAME,S_SERVER) values ('11','13','testFile1.png','http://127.0.0.1:8000/photos/');
Insert into CATALOGUE.CRM_PHOTO (ID,ID_PRODUCT,S_NAME,S_SERVER) values ('12','13','testFile2.png','http://127.0.0.1:8000/photos/');
Insert into CATALOGUE.CRM_PHOTO (ID,ID_PRODUCT,S_NAME,S_SERVER) values ('5','7','testFile1.png','http://127.0.0.1:8000/photos/');
Insert into CATALOGUE.CRM_PHOTO (ID,ID_PRODUCT,S_NAME,S_SERVER) values ('6','7','testFile2.png','http://127.0.0.1:8000/photos/');
Insert into CATALOGUE.CRM_PHOTO (ID,ID_PRODUCT,S_NAME,S_SERVER) values ('13','14','testFile1.png','http://127.0.0.1:8000/photos/');
Insert into CATALOGUE.CRM_PHOTO (ID,ID_PRODUCT,S_NAME,S_SERVER) values ('14','14','testFile2.png','http://127.0.0.1:8000/photos/');
REM INSERTING into CATALOGUE.CRM_PRODUCT
SET DEFINE OFF;
Insert into CATALOGUE.CRM_PRODUCT (ID,S_NAME,S_CAPTION,S_DESC,N_QTY,F_PRICE,ID_CATEGORY,D_CREATED,ID_CREATOR,D_EDITED,ID_EDITOR) values ('1','nameTest','captionTest','descriptionTest','20','1000','1',to_date('06.08.19','DD.MM.RR'),'1',to_date('09.08.19','DD.MM.RR'),null);
Insert into CATALOGUE.CRM_PRODUCT (ID,S_NAME,S_CAPTION,S_DESC,N_QTY,F_PRICE,ID_CATEGORY,D_CREATED,ID_CREATOR,D_EDITED,ID_EDITOR) values ('2','nameTest','captionTest','descriptionTest','10','1000','1',to_date('06.08.19','DD.MM.RR'),'1',to_date('06.08.19','DD.MM.RR'),null);
Insert into CATALOGUE.CRM_PRODUCT (ID,S_NAME,S_CAPTION,S_DESC,N_QTY,F_PRICE,ID_CATEGORY,D_CREATED,ID_CREATOR,D_EDITED,ID_EDITOR) values ('3','nameTest','captionTest','descriptionTest','10','1000','1',to_date('06.08.19','DD.MM.RR'),'1',to_date('06.08.19','DD.MM.RR'),null);
Insert into CATALOGUE.CRM_PRODUCT (ID,S_NAME,S_CAPTION,S_DESC,N_QTY,F_PRICE,ID_CATEGORY,D_CREATED,ID_CREATOR,D_EDITED,ID_EDITOR) values ('4','nameTest','captionTest','descriptionTest','10','1000','1',to_date('06.08.19','DD.MM.RR'),'1',to_date('06.08.19','DD.MM.RR'),null);
Insert into CATALOGUE.CRM_PRODUCT (ID,S_NAME,S_CAPTION,S_DESC,N_QTY,F_PRICE,ID_CATEGORY,D_CREATED,ID_CREATOR,D_EDITED,ID_EDITOR) values ('5','nameTest','captionTest','descriptionTest','10','1000','1',to_date('06.08.19','DD.MM.RR'),'1',to_date('06.08.19','DD.MM.RR'),null);
Insert into CATALOGUE.CRM_PRODUCT (ID,S_NAME,S_CAPTION,S_DESC,N_QTY,F_PRICE,ID_CATEGORY,D_CREATED,ID_CREATOR,D_EDITED,ID_EDITOR) values ('6','nameTest','captionTest','descriptionTest','10','1000','1',to_date('06.08.19','DD.MM.RR'),'1',to_date('06.08.19','DD.MM.RR'),null);
Insert into CATALOGUE.CRM_PRODUCT (ID,S_NAME,S_CAPTION,S_DESC,N_QTY,F_PRICE,ID_CATEGORY,D_CREATED,ID_CREATOR,D_EDITED,ID_EDITOR) values ('8','nameTest','captionTest','descriptionTest','10','1000','1',to_date('06.08.19','DD.MM.RR'),'1',to_date('06.08.19','DD.MM.RR'),null);
Insert into CATALOGUE.CRM_PRODUCT (ID,S_NAME,S_CAPTION,S_DESC,N_QTY,F_PRICE,ID_CATEGORY,D_CREATED,ID_CREATOR,D_EDITED,ID_EDITOR) values ('10','nameTest','captionTest','descriptionTest','10','1000','1',to_date('06.08.19','DD.MM.RR'),'1',to_date('06.08.19','DD.MM.RR'),null);
Insert into CATALOGUE.CRM_PRODUCT (ID,S_NAME,S_CAPTION,S_DESC,N_QTY,F_PRICE,ID_CATEGORY,D_CREATED,ID_CREATOR,D_EDITED,ID_EDITOR) values ('11','nameTest','captionTest','descriptionTest','10','1000','1',to_date('06.08.19','DD.MM.RR'),'1',to_date('06.08.19','DD.MM.RR'),null);
Insert into CATALOGUE.CRM_PRODUCT (ID,S_NAME,S_CAPTION,S_DESC,N_QTY,F_PRICE,ID_CATEGORY,D_CREATED,ID_CREATOR,D_EDITED,ID_EDITOR) values ('12','nameTest','captionTest','descriptionTest','10','1000','1',to_date('06.08.19','DD.MM.RR'),'1',to_date('06.08.19','DD.MM.RR'),null);
Insert into CATALOGUE.CRM_PRODUCT (ID,S_NAME,S_CAPTION,S_DESC,N_QTY,F_PRICE,ID_CATEGORY,D_CREATED,ID_CREATOR,D_EDITED,ID_EDITOR) values ('13','nameTest','captionTest','descriptionTest','10','1000','1',to_date('06.08.19','DD.MM.RR'),'1',to_date('06.08.19','DD.MM.RR'),null);
Insert into CATALOGUE.CRM_PRODUCT (ID,S_NAME,S_CAPTION,S_DESC,N_QTY,F_PRICE,ID_CATEGORY,D_CREATED,ID_CREATOR,D_EDITED,ID_EDITOR) values ('7','nameTest','captionTest','descriptionTest','10','1000','1',to_date('06.08.19','DD.MM.RR'),'1',to_date('06.08.19','DD.MM.RR'),null);
Insert into CATALOGUE.CRM_PRODUCT (ID,S_NAME,S_CAPTION,S_DESC,N_QTY,F_PRICE,ID_CATEGORY,D_CREATED,ID_CREATOR,D_EDITED,ID_EDITOR) values ('9','nameTest','captionTest','descriptionTest','10','1000','1',to_date('06.08.19','DD.MM.RR'),'1',to_date('06.08.19','DD.MM.RR'),null);
Insert into CATALOGUE.CRM_PRODUCT (ID,S_NAME,S_CAPTION,S_DESC,N_QTY,F_PRICE,ID_CATEGORY,D_CREATED,ID_CREATOR,D_EDITED,ID_EDITOR) values ('14','nameTest','captionTest','descriptionTest','10','1000','1',to_date('06.08.19','DD.MM.RR'),'1',to_date('06.08.19','DD.MM.RR'),null);
Insert into CATALOGUE.CRM_PRODUCT (ID,S_NAME,S_CAPTION,S_DESC,N_QTY,F_PRICE,ID_CATEGORY,D_CREATED,ID_CREATOR,D_EDITED,ID_EDITOR) values ('21','nameTest','captionTest','descriptionTest','10','1000','1',to_date('09.08.19','DD.MM.RR'),'1',to_date('09.08.19','DD.MM.RR'),null);
Insert into CATALOGUE.CRM_PRODUCT (ID,S_NAME,S_CAPTION,S_DESC,N_QTY,F_PRICE,ID_CATEGORY,D_CREATED,ID_CREATOR,D_EDITED,ID_EDITOR) values ('22','nameTest','captionTest','descriptionTest','10','1000','1',to_date('09.08.19','DD.MM.RR'),'1',to_date('09.08.19','DD.MM.RR'),null);
REM INSERTING into CATALOGUE.CRM_STATUS_REF
SET DEFINE OFF;
Insert into CATALOGUE.CRM_STATUS_REF (ID,S_NAME,S_CAPTION) values ('1','processing','� ���������');
Insert into CATALOGUE.CRM_STATUS_REF (ID,S_NAME,S_CAPTION) values ('2','paid','�������');
Insert into CATALOGUE.CRM_STATUS_REF (ID,S_NAME,S_CAPTION) values ('3','cancelled','�������');
REM INSERTING into CATALOGUE.CRM_USER
SET DEFINE OFF;
Insert into CATALOGUE.CRM_USER (ID,S_LOGIN,S_PASSWORD,S_SALT,S_TOKEN) values ('1','admin','$2y$10$xxacPOkOHjcLxkirZeh0yedNl2kpeyiCGUiysQUwR.CCpqg/gCbJi','salt','2bbe91b7dbdb38886d083408ae128ef93ebfd769a1850a773f1deb6b8babd122');
--------------------------------------------------------
--  DDL for Index CRM_USER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CATALOGUE"."CRM_USER_PK" ON "CATALOGUE"."CRM_USER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE" ;
--------------------------------------------------------
--  DDL for Index CRM_PHOTO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CATALOGUE"."CRM_PHOTO_PK" ON "CATALOGUE"."CRM_PHOTO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE" ;
--------------------------------------------------------
--  DDL for Index CRM_ORDER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CATALOGUE"."CRM_ORDER_PK" ON "CATALOGUE"."CRM_ORDER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE" ;
--------------------------------------------------------
--  DDL for Index CRM_CATEGORY_REF_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CATALOGUE"."CRM_CATEGORY_REF_PK" ON "CATALOGUE"."CRM_CATEGORY_REF" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE" ;
--------------------------------------------------------
--  DDL for Index CRM_STATUS_REF_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CATALOGUE"."CRM_STATUS_REF_PK" ON "CATALOGUE"."CRM_STATUS_REF" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE" ;
--------------------------------------------------------
--  DDL for Index CRM_ORDR_PDCT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CATALOGUE"."CRM_ORDR_PDCT_PK" ON "CATALOGUE"."CRM_ORDR_PDCT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE" ;
--------------------------------------------------------
--  DDL for Index CRM_PRODUCT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "CATALOGUE"."CRM_PRODUCT_PK" ON "CATALOGUE"."CRM_PRODUCT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE" ;
--------------------------------------------------------
--  DDL for Trigger CRM_CATEGORY_REF_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CATALOGUE"."CRM_CATEGORY_REF_ID_TRG" BEFORE INSERT ON CRM_CATEGORY_REF 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT CRM_CATEGORY_REF_ID_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "CATALOGUE"."CRM_CATEGORY_REF_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CRM_ORDER_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CATALOGUE"."CRM_ORDER_ID_TRG" 
BEFORE INSERT ON CRM_ORDER 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT CRM_ORDER_ID_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "CATALOGUE"."CRM_ORDER_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CRM_ORDR_PDCT_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CATALOGUE"."CRM_ORDR_PDCT_ID_TRG" 
BEFORE INSERT ON CRM_ORDR_PDCT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT CRM_ORDR_PDCT_ID_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "CATALOGUE"."CRM_ORDR_PDCT_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CRM_PHOTO_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CATALOGUE"."CRM_PHOTO_ID_TRG" 
BEFORE INSERT ON CRM_PHOTO 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT CRM_PHOTO_ID_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "CATALOGUE"."CRM_PHOTO_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CRM_PRODUCT_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CATALOGUE"."CRM_PRODUCT_ID_TRG" 
BEFORE INSERT ON CRM_PRODUCT 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT CRM_PRODUCT_ID_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "CATALOGUE"."CRM_PRODUCT_ID_TRG" ENABLE;
--------------------------------------------------------
--  DDL for Trigger CRM_USER_ID_TRG
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "CATALOGUE"."CRM_USER_ID_TRG" 
BEFORE INSERT ON CRM_USER 
FOR EACH ROW 
BEGIN
  <<COLUMN_SEQUENCES>>
  BEGIN
    IF INSERTING AND :NEW.ID IS NULL THEN
      SELECT CRM_USER_ID_SEQ.NEXTVAL INTO :NEW.ID FROM SYS.DUAL;
    END IF;
  END COLUMN_SEQUENCES;
END;
/
ALTER TRIGGER "CATALOGUE"."CRM_USER_ID_TRG" ENABLE;
--------------------------------------------------------
--  Constraints for Table CRM_ORDR_PDCT
--------------------------------------------------------

  ALTER TABLE "CATALOGUE"."CRM_ORDR_PDCT" ADD CONSTRAINT "CRM_ORDR_PDCT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE"  ENABLE;
  ALTER TABLE "CATALOGUE"."CRM_ORDR_PDCT" MODIFY ("N_QTY" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_ORDR_PDCT" MODIFY ("ID_PRODUCT" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_ORDR_PDCT" MODIFY ("ID_ORDER" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_ORDR_PDCT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CRM_PHOTO
--------------------------------------------------------

  ALTER TABLE "CATALOGUE"."CRM_PHOTO" ADD CONSTRAINT "CRM_PHOTO_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE"  ENABLE;
  ALTER TABLE "CATALOGUE"."CRM_PHOTO" MODIFY ("S_NAME" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_PHOTO" MODIFY ("ID_PRODUCT" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_PHOTO" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CRM_ORDER
--------------------------------------------------------

  ALTER TABLE "CATALOGUE"."CRM_ORDER" ADD CONSTRAINT "CRM_ORDER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE"  ENABLE;
  ALTER TABLE "CATALOGUE"."CRM_ORDER" MODIFY ("ID_STATUS" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_ORDER" MODIFY ("D_EXPIRES" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_ORDER" MODIFY ("D_CREATED" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_ORDER" MODIFY ("S_CUSTOMER_PHONE" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_ORDER" MODIFY ("S_CUSTOMER_NAME" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_ORDER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CRM_USER
--------------------------------------------------------

  ALTER TABLE "CATALOGUE"."CRM_USER" ADD CONSTRAINT "CRM_USER_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE"  ENABLE;
  ALTER TABLE "CATALOGUE"."CRM_USER" MODIFY ("S_SALT" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_USER" MODIFY ("S_PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_USER" MODIFY ("S_LOGIN" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_USER" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CRM_CATEGORY_REF
--------------------------------------------------------

  ALTER TABLE "CATALOGUE"."CRM_CATEGORY_REF" ADD CONSTRAINT "CRM_CATEGORY_REF_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE"  ENABLE;
  ALTER TABLE "CATALOGUE"."CRM_CATEGORY_REF" MODIFY ("S_CAPTION" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_CATEGORY_REF" MODIFY ("S_NAME" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_CATEGORY_REF" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CRM_PRODUCT
--------------------------------------------------------

  ALTER TABLE "CATALOGUE"."CRM_PRODUCT" ADD CONSTRAINT "CRM_PRODUCT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE"  ENABLE;
  ALTER TABLE "CATALOGUE"."CRM_PRODUCT" MODIFY ("ID_CREATOR" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_PRODUCT" MODIFY ("D_CREATED" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_PRODUCT" MODIFY ("ID_CATEGORY" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_PRODUCT" MODIFY ("F_PRICE" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_PRODUCT" MODIFY ("N_QTY" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_PRODUCT" MODIFY ("S_CAPTION" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_PRODUCT" MODIFY ("S_NAME" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_PRODUCT" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table CRM_STATUS_REF
--------------------------------------------------------

  ALTER TABLE "CATALOGUE"."CRM_STATUS_REF" ADD CONSTRAINT "CRM_STATUS_REF_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CATALOGUE_TABSPACE"  ENABLE;
  ALTER TABLE "CATALOGUE"."CRM_STATUS_REF" MODIFY ("S_CAPTION" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_STATUS_REF" MODIFY ("S_NAME" NOT NULL ENABLE);
  ALTER TABLE "CATALOGUE"."CRM_STATUS_REF" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CRM_ORDER
--------------------------------------------------------

  ALTER TABLE "CATALOGUE"."CRM_ORDER" ADD CONSTRAINT "CRM_ORDER_FK1" FOREIGN KEY ("ID_STATUS")
	  REFERENCES "CATALOGUE"."CRM_STATUS_REF" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CRM_ORDR_PDCT
--------------------------------------------------------

  ALTER TABLE "CATALOGUE"."CRM_ORDR_PDCT" ADD CONSTRAINT "CRM_ORDR_PDCT_FK1" FOREIGN KEY ("ID_ORDER")
	  REFERENCES "CATALOGUE"."CRM_ORDER" ("ID") ENABLE;
  ALTER TABLE "CATALOGUE"."CRM_ORDR_PDCT" ADD CONSTRAINT "CRM_ORDR_PDCT_FK2" FOREIGN KEY ("ID_PRODUCT")
	  REFERENCES "CATALOGUE"."CRM_PRODUCT" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CRM_PHOTO
--------------------------------------------------------

  ALTER TABLE "CATALOGUE"."CRM_PHOTO" ADD CONSTRAINT "CRM_PHOTO_FK1" FOREIGN KEY ("ID_PRODUCT")
	  REFERENCES "CATALOGUE"."CRM_PRODUCT" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table CRM_PRODUCT
--------------------------------------------------------

  ALTER TABLE "CATALOGUE"."CRM_PRODUCT" ADD CONSTRAINT "CRM_PRODUCT_FK1" FOREIGN KEY ("ID_CATEGORY")
	  REFERENCES "CATALOGUE"."CRM_CATEGORY_REF" ("ID") ENABLE;
  ALTER TABLE "CATALOGUE"."CRM_PRODUCT" ADD CONSTRAINT "CRM_PRODUCT_FK2" FOREIGN KEY ("ID_CREATOR")
	  REFERENCES "CATALOGUE"."CRM_USER" ("ID") ENABLE;
  ALTER TABLE "CATALOGUE"."CRM_PRODUCT" ADD CONSTRAINT "CRM_PRODUCT_FK3" FOREIGN KEY ("ID_EDITOR")
	  REFERENCES "CATALOGUE"."CRM_USER" ("ID") ENABLE;
