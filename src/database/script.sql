CREATE TABLE template_test (
    id TEXT PRIMARY KEY,
    slug TEXT NOT NULL,
    name TEXT NOT NULL,
    author TEXT NOT NULL,
    description TEXT NOT NULL
);

CREATE TABLE question (
    id TEXT PRIMARY KEY,
    content TEXT NOT NULL,
    template_test_id TEXT NOT NULL,
    FOREIGN KEY (template_test_id) REFERENCES template_test (id) ON DELETE CASCADE
);

CREATE TABLE clasification (
    id TEXT PRIMARY KEY,
    min_score INTEGER NOT NULL,
    max_score INTEGER NOT NULL,
    interpretation TEXT NOT NULL,
    template_test_id TEXT NOT NULL,
    FOREIGN KEY (template_test_id) REFERENCES template_test (id) ON DELETE CASCADE
);

CREATE TABLE alternative (
    id TEXT PRIMARY KEY,
    content TEXT NOT NULL,
    value INTEGER NOT NULL,
    template_test_id TEXT NOT NULL,
    FOREIGN KEY (template_test_id) REFERENCES template_test (id) ON DELETE CASCADE
);

-- Insertar los datos en la tabla
INSERT INTO template_test (id, slug, name, author, description) VALUES
('b1194a18-e01f-4404-baae-3ac9d19b867b', 'test-ansiedad-zung', 'Escala de Ansiedad de Zung (SAS)', 'William W. K. Zung', 'Mide el nivel de ansiedad de un individuo a través de autoevaluación.'),
('acc9398d-3954-4d6c-a958-22e1b57fed7a', 'inventario-ansiedad-beck', 'Inventario de Ansiedad de Beck (BAI)', 'Aaron T. Beck', 'Evalúa la gravedad de la ansiedad.'),
('61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'cuestionario-ansiedad-estado-rasgo', 'Cuestionario de Ansiedad Estado-Rasgo (STAI)', 'Charles D. Spielberger', 'Mide la ansiedad como estado y rasgo.'),
('53befb9b-3a8e-4e19-a55d-2946a899bb78', 'escala-ansiedad-hamilton', 'Escala de Ansiedad de Hamilton (HAM-A)', 'Max Hamilton', 'Evalúa la gravedad de la ansiedad de un paciente.'),
('7dfddcae-723b-48c6-9416-472ec14884d6', 'inventario-ansiedad-situacional', 'Inventario de Ansiedad Situacional (SAI)', 'Spielberger et al.', 'Mide la ansiedad situacional.');

-- Insertar los datos en la tabla
INSERT INTO question (id, template_test_id, content) VALUES
-- test 1
('940de160-80c3-4fa0-81e6-ea68d0066dce', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Me siento más intranquilo y nervioso que de costumbre'),
('c5f850e7-d125-4f38-9600-952d65b1d021', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Me siento atemorizado sin motivo'),
('c206b8f7-9005-4775-9495-5fac569988e9', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Me altero o angustio fácilmente'),
('e3d60914-25cc-4717-a515-1ea8ccbec690', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Siento como si me estuviera deshaciendo a pedazos'),
('ac71e158-b1a8-4f11-a1af-a5e31c5373a3', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Creo que todo está bien y que no va a pasar nada malo'),
('31093fa3-1f82-4a15-bc85-3cae1644c7a2', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Me tiemblan los brazos y las piernas'),
('9edb5d4f-0b53-4ebf-a02b-ef2a1067e1bc', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Sufro dolores de cabeza, del cuello y de la espalda'),
('ea3d3c26-b87c-45a1-8ebf-6bdb5d294a88', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Me siento débil y me canso fácilmente'),
('497700c4-5349-4f3e-acb3-21c12b4d4c70', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Me siento tranquilo y me es fácil estarme quieto'),
('8c8b3372-5892-4ae8-940e-86135d9154f2', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Siento que el corazón me late aprisa'),
('724711c6-ecf4-4647-9c15-874b3df9c56e', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Sufro mareos'),
('41e224d7-8af4-4809-bcc2-f29fea6c457d', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Me desmayo o siento que voy a desmayarme'),
('dd9dda3f-0e52-4aa1-a9e9-c04cc3b0de50', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Puedo respirar fácilmente'),
('2d93a658-b28d-428e-9247-eb9f50b3015b', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Se me duermen los pies y me hormiguean los dedos de las manos y de los pies'),
('32c9e149-981b-4cdd-9756-b7c5b2a2e33d', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Sufro de dolores de estómago, indigestión'),
('6817b314-ef3d-4197-8db7-6821bac56032', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Tengo que orinar con mucha frecuencia'),
('ae5f7004-1d61-4b5b-9dea-4e3888d993c6', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Generalmente tengo las manos secas y calientes'),
('46d79f1a-5d3f-4dab-8b50-29aaeb8154fb', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'La cara se me pone caliente y roja'),
('a09aeb0d-a99a-4340-ae39-5afdc69cb33c', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Me duermo fácilmente y descanso bien por la noche'),
('4874ced3-8367-44b0-8d54-76fccf9440a8', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Tengo pesadillas'),
-- test 2
('80dcd471-1437-4240-a7c7-dc6821de13a9', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Torpe o entumecido'),
('b2f82ac0-3326-4a1e-8e6d-8169a80a0f6b', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Acalorado'),
('bcdf91c0-18c5-487f-be17-d70d666fed8f', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Con temblor en las piernas'),
('b7ba4503-a274-4a2b-a8b4-0d306ad0fbc0', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Incapaz de relajarse'),
('bc6e9ee3-363e-45fc-a911-cc4c58806b16', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Con temor a que ocurra lo peor'),
('a17c0087-7628-4601-a6e5-b49aeff60be7', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Mareado, o que se le va la cabeza'),
('de39e0d7-e3b8-430d-89c4-84f2e5172d99', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Con latidos del corazón fuertes y acelerados'),
('76aaf325-4821-4acf-b6ed-46735cba36ec', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Inestable'),
('5bb7c4cb-31c1-4236-a814-caceb84e6ef5', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Atemorizado o asustado'),
('b91e1448-b6c2-49af-b665-1ae5a5ecbe35', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Nervioso'),
('acc7ad7a-ff8b-4d5a-ac1c-a0ccd61c7c9c', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Con sensación de bloqueo'),
('843f403d-b89b-4ee6-802d-f5c1ca7193ac', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Con temblores en las manos'),
('645a86f0-79b5-4518-b89a-9adc5d7c13f4', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Inquieto, inseguro'),
('b025ed97-a065-4f47-a5a9-979f45fbdfdf', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Con miedo a perder el control'),
('f20bed09-3617-4209-a0b5-2c5af643c086', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Con sensación de ahogo'),
('deeac3e5-5970-4006-bbb2-4ea5f4b37203', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Con temor a morir'),
('3fc89b6f-7f3d-4fa2-aa18-248bc5138ba5', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Con miedo'),
('68d24580-8113-4546-9ea7-e4e920af8e96', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Con problemas digestivos'),
('627c2284-1017-46de-bab1-1e8b5211651b', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Con desvanecimientos'),
('4706fcb2-cfd2-4c6a-a6f2-4c8a88977655', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Con rubor facial'),
('23790621-186c-4d26-b470-c3c24d0d0ae5', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Con sudores, fríos o calientes'),
-- test 3
('908691cc-d4db-4acb-b8c0-668c15870c99', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Me siento bien'),
('3ff02591-3516-495c-bf0e-4fc13f045239', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Me canso rápidamente'),
('6a636652-987f-41f1-ada3-c46f168746e7', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Siento ganas de llorar'),
('9559747f-0e59-40d6-9614-d63d512f3cd5', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Me gustaría ser tan feliz como otros'),
('8ff1b731-6ab7-4ed8-9578-296267fc26b1', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Pierdo oportunidades por no decidirme pronto'),
('6f7b9d47-3697-46f7-a7ac-dc63673d65d1', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Me siento descansado'),
('c1cc3d2f-65f7-4e5d-abb2-6d1096814688', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Soy una persona tranquila, serena y sosegada'),
('ad62e6ec-41a0-4236-a55e-cb4352365d2e', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Veo que las dificultades se amontonan y no puedo con ellas'),
('41dc9db1-f135-42b7-b5f2-6296c996665c', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Me preocupo demasiado por cosas sin importancia'),
('c19dde8b-4048-4cb5-b82f-654feed352ab', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Soy feliz'),
('4d4e3b7b-e9e0-4e87-bf16-3290544df8ad', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Suelo tomar las cosas demasiado seriamente'),
('c1a7423a-588c-420a-886d-6b7dfa22cc23', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Me falta confianza en mí mismo'),
('7b64b1b9-119a-472e-bd88-018fc433cd47', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Me siento seguro'),
('ccf9ec6f-3024-4544-82e7-8d0a10975ebb', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'No suelo afrontar las crisis o dificultades'),
('2422f0ba-dd0b-4d29-aebf-83e93255fda3', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Me siento triste (melancólico)'),
('4dccd97c-1dc1-41b7-a49c-cd56b8f52ad0', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Estoy satisfecho'),
('583a8a18-fe02-4e51-bf14-139d8e0e6510', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Me rondan y molestan pensamientos sin importancia'),
('5c56dec7-32c2-41d6-b773-7bd0f67b8d67', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Me afectan tanto los desengaños que no puedo olvidarlos'),
('33771b1e-3e11-4e5d-9127-9074d3dee210', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Soy una persona estable'),
('b78313d5-0cfc-4e8e-a00d-adb91d43b2bb', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Cuando pienso sobre asuntos y preocupaciones actuales me pongo tenso y agitado'),
-- test 4
('297a5595-0fc8-407e-bfe7-a2680af775ee', '53befb9b-3a8e-4e19-a55d-2946a899bb78', '¿Sientes ansiedad, preocupación o tensión con frecuencia?'),
('809b6f48-eec2-4373-be2d-b4f1076c045e', '53befb9b-3a8e-4e19-a55d-2946a899bb78', '¿Tienes dolores musculares, rigidez o temblores?'),
('f1c77026-b663-450c-b658-615e43d42100', '53befb9b-3a8e-4e19-a55d-2946a899bb78', '¿Sufres de mareos, despersonalización o sensaciones de sofoco?'),
('d65114df-7610-4f80-b25f-17975fa94d3d', '53befb9b-3a8e-4e19-a55d-2946a899bb78', '¿Experimentas palpitaciones, opresión en el pecho o pulsaciones irregulares?'),
('9ce44c2f-4cd7-4230-87a7-c50873ea6527', '53befb9b-3a8e-4e19-a55d-2946a899bb78', '¿Tienes dificultad para respirar, suspiros o hiperventilación?'),
('88ab11ac-e2f1-4360-a031-1c0a6286ad18', '53befb9b-3a8e-4e19-a55d-2946a899bb78', '¿Tienes náuseas, vómitos o molestias abdominales?'),
('131e6dd7-5501-4569-b0ac-5bf0de0b2317', '53befb9b-3a8e-4e19-a55d-2946a899bb78', '¿Experimentas frecuencia urinaria, urgencia o pérdida de la libido?'),
('070e06d3-2ad1-4805-829a-ef2044867fbf', '53befb9b-3a8e-4e19-a55d-2946a899bb78', '¿Tienes boca seca, sudoración excesiva o dolor de cabeza?'),
('3e596930-bd0c-4b1c-bef4-d4c4cab62c54', '53befb9b-3a8e-4e19-a55d-2946a899bb78', '¿Tienes dificultades para conciliar el sueño o sufres de insomnio?'),
('8fee3e9f-95f2-465c-93e6-beb8e66d6da8', '53befb9b-3a8e-4e19-a55d-2946a899bb78', '¿Te sientes triste, desesperanzado o has perdido interés en las cosas?'),
('2642f692-811b-410b-82b4-20b737331f14', '53befb9b-3a8e-4e19-a55d-2946a899bb78', '¿Te sientes agitado o inquieto durante las entrevistas?'),
('3e2e04e0-24db-4561-a320-4966f26a6170', '53befb9b-3a8e-4e19-a55d-2946a899bb78', '¿Te sientes generalmente tenso, especialmente en situaciones estresantes?'),
('5d1f6c85-c17a-4423-96b0-1a9a6aa34615', '53befb9b-3a8e-4e19-a55d-2946a899bb78', '¿Tienes miedos irracionales o excesivos?'),
('a93f151b-d56b-4653-941b-82378a6c18cc', '53befb9b-3a8e-4e19-a55d-2946a899bb78', '¿Muestras comportamientos ansiosos como morderte las uñas o realizar movimientos repetitivos?'),
-- test 5
('3c4885be-f397-4bd3-8eff-6580f5f72058', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Me siento calmado'),
('ac749a81-8ae9-43a7-bc96-a2427dcecf25', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Me siento seguro'),
('83ba6560-dbec-469c-ad95-fe11ad3544d3', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Estoy tenso'),
('9a21487b-e515-4306-a4dd-93c7e8a016e4', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Estoy contrariado'),
('e5915b9e-feb1-44e4-b09a-77ca9ecbc320', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Me siento cómodo (estoy a gusto)'),
('2a1700ef-62a5-4caf-bcdc-b1b4b974ac66', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Me siento alterado'),
('a3f40b25-0100-48e7-a31e-74153b482bc6', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Estoy preocupado ahora por posibles desgracias futuras'),
('91117e92-b00d-4deb-a9ef-77f9195aed6a', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Me siento descansado'),
('c333f81d-1e61-4061-b781-f1ee410b78b1', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Me siento angustiado'),
('5cb9ff83-2ab6-43c4-95ab-5c1b649a3b2b', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Me siento confortable'),
('3ee28d8b-0143-4eab-b17e-1bec5dac9a66', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Tengo confianza en mí mismo'),
('9463e039-1689-4bea-86ae-eecbde603efb', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Me siento nervioso'),
('1b23079a-2563-4fc8-a53b-3b0e105ce318', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Estoy desasosegado'),
('bb070643-19bd-4590-a59e-cb5c8b542845', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Me siento muy «atado» (como oprimido)'),
('cb1e93cf-a77c-4bbf-8b83-7c4bb23e8654', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Estoy relajado'),
('df06a686-8fa1-4e82-9cef-24ecb4490897', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Me siento satisfecho'),
('35492c2e-260c-4f28-85c7-4a8c70d77425', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Estoy preocupado'),
('51dd06a1-4852-4419-af3d-6003690ace80', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Me siento aturdido y sobreexcitado'),
('6efdc934-ffee-48ae-a28b-526b38a995b9', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Me siento alegre'),
('a0ebd69c-5e21-4d25-a6cb-3324a537efb2', '7dfddcae-723b-48c6-9416-472ec14884d6', 'En este momento me siento bien');


-- Insertar los datos en la tabla
INSERT INTO alternative (id, template_test_id, content, value) VALUES
-- test 1
('d78beba7-864b-4d9c-b298-8f1c3b0685ef', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Raramente', 1),
('26ce5908-b8c1-4b3a-a6f8-84e4ea8908e9', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Algunas veces', 2),
('96d09a90-73c7-4e6a-b385-4f9eadceb75f', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'Buena parte del tiempo', 3),
('5309bdc1-2eb0-4427-b1a3-401addf020d4', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 'La mayor parte del tiempo', 4),
-- test 2
('a960d8d8-95fd-427e-b5ba-f0ca4b98a1a5', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'En absoluto', 0),
('0cc625aa-d5d5-46dd-8641-e948d5f6b6fa', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Levemente, no me molesta mucho', 1),
('ae48756c-30f4-4b00-9b83-314273e3cdce', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Moderadamente', 2),
('0557771a-ad70-45c5-b730-76c3b1612a5c', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 'Severamente, casi no podia soportarlo', 3),
-- test 3
('04cba35d-71be-46de-b5a2-4b8deb90167f', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Casi nunca', 0),
('08662557-41b7-417c-aad5-5513002be3b5', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'A veces', 1),
('3b2b75dd-07c2-4d4b-9929-11361f135b36', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'A menudo', 2),
('a5fc2f69-e77a-4377-aae2-0e6e61c268d3', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 'Casi siempre', 3),
-- test 4
('d343a029-c597-47e4-87b4-37fae21f7b3d', '53befb9b-3a8e-4e19-a55d-2946a899bb78', 'Ausente', 0),
('b1e031ee-502d-4c2d-b461-912a5f931cab', '53befb9b-3a8e-4e19-a55d-2946a899bb78', 'Leve', 1),
('80869e8f-c52e-4214-a89c-a0273387ebba', '53befb9b-3a8e-4e19-a55d-2946a899bb78', 'Moderado', 2),
('ea0cc8da-809c-4c59-b9dc-5046864fe538', '53befb9b-3a8e-4e19-a55d-2946a899bb78', 'Grave', 3),
('de127317-38a5-4d42-982f-14b3a783c029', '53befb9b-3a8e-4e19-a55d-2946a899bb78', 'Muy grave', 4),
-- test 5
('85bd048d-948c-4ca4-9d05-b41a47643b0f', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Casi nunca', 0),
('49aed16a-3fed-4378-a629-49409737e719', '7dfddcae-723b-48c6-9416-472ec14884d6', 'A veces', 1),
('19a04598-f463-4a20-aea7-f706f97e2f30', '7dfddcae-723b-48c6-9416-472ec14884d6', 'A menudo', 2),
('ccaff821-1e6d-4854-9825-80d2c66c1087', '7dfddcae-723b-48c6-9416-472ec14884d6', 'Casi siempre', 3);

-- Insertar los datos en la tabla
INSERT INTO clasification (id, template_test_id, min_score, max_score, interpretation) VALUES
-- test 1
('7adb1c37-e44b-426b-b030-8152921d1f85', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 20, 44, 'Ansiedad normal'),
('5b2b645e-53fc-4740-bc50-350d072976ae', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 45, 59, 'Ansiedad leve a moderada'),
('cdcb300e-dbc3-4efd-969d-73332c8b613a', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 60, 74, 'Ansiedad marcada a severa'),
('5ce61369-ee22-450d-b930-dd91becf2b38', 'b1194a18-e01f-4404-baae-3ac9d19b867b', 75, 80, 'Ansiedad extrema'),
-- test 2
('03024a65-1df0-460f-b5ce-2327f9420e55', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 0, 21, 'Ansiedad muy baja'),
('b8499f07-459c-4034-a40c-9ccf639643fe', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 22, 35, 'Ansiedad moderada'),
('d658a785-c54f-4009-90db-51e067e1c52b', 'acc9398d-3954-4d6c-a958-22e1b57fed7a', 36, 63, 'Ansiedad severa'),
-- test 3
('10fdab36-aff8-4dfe-9796-b60cd83cb4c0', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 0, 11, 'Ansiedad muy baja'),
('d27e803e-e7e1-48f3-a617-cef92cc33bc4', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 12, 17, 'Ansiedad media baja'),
('d4032d72-8c14-4b1e-9c8d-33606a2e8e02', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 18, 20, 'Ansiedad promedio'),
('f15c4aea-8fc9-4584-a6c5-092198245a2a', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 21, 28, 'Ansiedad media alta'),
('c6a5c7a6-c01f-416f-852b-5a8c20d0d9ac', '61bfc55c-fec9-4ea2-b8c4-61d823ebc15c', 29, 60, 'Ansiedad muy alta'),
-- test 4
('01e9a5c3-ef48-494f-a218-a921ded5441b', '53befb9b-3a8e-4e19-a55d-2946a899bb78', 0, 17, 'Ansiedad leve'),
('8f2b4da7-3a1a-43cb-83b7-beb2a08ecc90', '53befb9b-3a8e-4e19-a55d-2946a899bb78', 18, 24, 'Ansiedad moderada'),
('b9e6488c-857c-46c7-b9a5-0f86a543434e', '53befb9b-3a8e-4e19-a55d-2946a899bb78', 25, 30, 'Ansiedad considerable'),
('0c6fc10c-cf42-4777-bd91-2ae7593da0c6', '53befb9b-3a8e-4e19-a55d-2946a899bb78', 31, 56, 'Ansiedad grave'),
-- test 5
('767371f8-196f-4853-942e-3aa141ae5427', '7dfddcae-723b-48c6-9416-472ec14884d6', 0, 11, 'Ansiedad muy baja'),
('cc0c6195-ea72-4a75-9f9e-67a353f1606d', '7dfddcae-723b-48c6-9416-472ec14884d6', 12, 17, 'Ansiedad media baja'),
('d9ad0cca-2eb5-4758-b124-0642c0feddb6', '7dfddcae-723b-48c6-9416-472ec14884d6', 18, 20, 'Ansiedad promedio'),
('6f66296d-cb9f-4f7b-bd02-37786a6abb98', '7dfddcae-723b-48c6-9416-472ec14884d6', 21, 28, 'Ansiedad media alta'),
('85241ceb-c913-4368-8a65-ee5ae81f65af', '7dfddcae-723b-48c6-9416-472ec14884d6', 29, 60, 'Ansiedad muy alta');