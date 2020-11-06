
--Add ing the Gender Type  for the given item type
INSERT INTO BLC_FIELD (FIELD_ID, ENTITY_TYPE, PROPERTY_NAME, FRIENDLY_NAME, ABBREVIATION) VALUES (10, 'PRODUCT', 'genderType.type', 'Gender', 'genderType');

-- Adding the above  BLC_FIELD entries into the index
INSERT INTO BLC_INDEX_FIELD (INDEX_FIELD_ID, FIELD_ID, SEARCHABLE) VALUES (10, 10, TRUE);

INSERT INTO BLC_INDEX_FIELD_TYPE (INDEX_FIELD_TYPE_ID, INDEX_FIELD_ID, FIELD_TYPE) VALUES (12, 10, 's');

INSERT INTO BLC_SEARCH_FACET (SEARCH_FACET_ID, LABEL, SHOW_ON_SEARCH, MULTISELECT, SEARCH_DISPLAY_PRIORITY, INDEX_FIELD_TYPE_ID, NAME, USE_FACET_RANGES) VALUES (5, 'Gender', TRUE, TRUE, 2, 12, 'Gender Type', FALSE);
INSERT INTO BLC_CAT_SEARCH_FACET_XREF (CATEGORY_SEARCH_FACET_ID, CATEGORY_ID, SEARCH_FACET_ID, SEQUENCE) VALUES (8, 2003, 5, 4);



------------------------------------------------------------------------------------------------------------------
-- Add/Update GENDER Type for products (sample)
-- =============================================
INSERT INTO HC_PRODUCT (PRODUCT_ID,GENDER_TYPE) VALUES (100,'MALE');
INSERT INTO HC_PRODUCT (PRODUCT_ID,GENDER_TYPE) VALUES (200,'FEMALE');
INSERT INTO HC_PRODUCT (PRODUCT_ID,GENDER_TYPE) VALUES (300,'UNISEX');
INSERT INTO HC_PRODUCT (PRODUCT_ID,GENDER_TYPE) VALUES (400,'UNISEX');
INSERT INTO HC_PRODUCT (PRODUCT_ID,GENDER_TYPE) VALUES (500,'MALE');
INSERT INTO HC_PRODUCT (PRODUCT_ID,GENDER_TYPE) VALUES (600,'UNISEX');
