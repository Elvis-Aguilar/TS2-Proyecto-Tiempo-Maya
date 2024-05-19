USE tiempo_maya;

-----
---Agregando rutas de las imagenes de las energias
-----

-- Crear una copia de seguridad de la tabla (opcional)
CREATE TABLE energia_backup AS SELECT * FROM energia;

-- Agregar la nueva columna con NOT NULL y un valor por defecto
ALTER TABLE energia ADD COLUMN rutaImgInfografia VARCHAR(100) NOT NULL DEFAULT '';

-- Iniciar una transacción para actualizar las rutas de las imágenes
START TRANSACTION;

UPDATE energia SET rutaImgInfografia = 'imgs/energias/Jun.png' WHERE id = 1;
UPDATE energia SET rutaImgInfografia = 'imgs/energias/Keb.png' WHERE id = 2;
UPDATE energia SET rutaImgInfografia = 'imgs/energias/Oxib.png' WHERE id = 3;
UPDATE energia SET rutaImgInfografia = 'imgs/energias/Kajib.png' WHERE id = 4;
UPDATE energia SET rutaImgInfografia = 'imgs/energias/Job.png' WHERE id = 5;
UPDATE energia SET rutaImgInfografia = 'imgs/energias/Waqib.png' WHERE id = 6;
UPDATE energia SET rutaImgInfografia = 'imgs/energias/Wuqub.png' WHERE id = 7;
UPDATE energia SET rutaImgInfografia = 'imgs/energias/Wajxaqib.png' WHERE id = 8;
UPDATE energia SET rutaImgInfografia = 'imgs/energias/Belejeb.png' WHERE id = 9;
UPDATE energia SET rutaImgInfografia = 'imgs/energias/Lajuj.png' WHERE id = 10;
UPDATE energia SET rutaImgInfografia = 'imgs/energias/Julajuj.png' WHERE id = 11;
UPDATE energia SET rutaImgInfografia = 'imgs/energias/Kablajuj.png' WHERE id = 12;
UPDATE energia SET rutaImgInfografia = 'imgs/energias/Oxlajuj.png' WHERE id = 13;

COMMIT;

-----
---Agregando rutas de las imagenes de los nahuales
-----
-- Crear una copia de seguridad de la tabla (opcional)
CREATE TABLE nahual_backup AS SELECT * FROM nahual;

-- Agregar la nueva columna con NOT NULL y un valor por defecto
ALTER TABLE nahual ADD COLUMN rutaImgInfografia VARCHAR(100) NOT NULL DEFAULT '';

-- Iniciar una transacción para actualizar las rutas de las imágenes
START TRANSACTION;

UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/batz.png' WHERE idweb  = 16;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/e.png' WHERE idweb  = 17;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/aj.png' WHERE idweb  = 18;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/ix.png' WHERE idweb  = 19;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/tzikin.png' WHERE idweb  = 0;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/ajmaq.png' WHERE idweb  = 1;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/noj.png' WHERE idweb  = 2;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/tijax.png' WHERE idweb  = 3;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/kawoq.png' WHERE idweb  = 4;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/ajpu.png' WHERE idweb  = 5;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/imox.png' WHERE idweb  = 6;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/iq.png' WHERE idweb  = 7;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/aqabal.png' WHERE idweb  = 8;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/kat.png' WHERE idweb  = 9;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/kan.png' WHERE idweb  = 10;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/kame.png' WHERE idweb  = 11;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/kej.png' WHERE idweb  = 12;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/qanil.png' WHERE idweb  = 13;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/toj.png' WHERE idweb  = 14;
UPDATE nahual SET rutaImgInfografia = 'imgs/nahuales/tzi.png' WHERE idweb  = 15;

COMMIT;

-----
---Agregando rutas de las imagenes de los Uniales
-----
-- Crear una copia de seguridad de la tabla (opcional)
CREATE TABLE uinal_backup AS SELECT * FROM uinal;

-- Agregar la nueva columna con NOT NULL y un valor por defecto
ALTER TABLE uinal ADD COLUMN rutaImgInfografia VARCHAR(100) NOT NULL DEFAULT '';

-- Iniciar una transacción para actualizar las rutas de las imágenes
START TRANSACTION;

UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/pop.png' WHERE idweb  = 1;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/woo.png' WHERE idweb  = 2;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/zip.png' WHERE idweb  = 3;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/sots.png' WHERE idweb  = 4;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/tsek.png' WHERE idweb  = 5;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/xul.png' WHERE idweb  = 6;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/yaxkin.png' WHERE idweb  = 7;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/mol.png' WHERE idweb  = 8;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/chen.png' WHERE idweb  = 9;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/yax.png' WHERE idweb  = 10;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/sak.png' WHERE idweb  = 11;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/keh.png' WHERE idweb  = 12;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/mak.png' WHERE idweb  = 13;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/kankin.png' WHERE idweb  = 14;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/muan.png' WHERE idweb  = 15;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/pak.png' WHERE idweb  = 16;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/kayab.png' WHERE idweb  = 17;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/kumku.png' WHERE idweb  = 18;
UPDATE uinal SET rutaImgInfografia = 'imgs/uniales/uayeb.png' WHERE idweb  = 0;

COMMIT;


-----
---Agregando rutas de las imagenes de los Uniales
-----
-- Crear una copia de seguridad de la tabla (opcional)
CREATE TABLE kin_backup AS SELECT * FROM kin;

-- Agregar la nueva columna con NOT NULL y un valor por defecto
ALTER TABLE kin ADD COLUMN rutaImgInfografia VARCHAR(100) NOT NULL DEFAULT '';

-- Iniciar una transacción para actualizar las rutas de las imágenes
START TRANSACTION;

UPDATE kin SET rutaImgInfografia = 'imgs/kines/Imix.png' WHERE iddesk  = 1;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Ik.png' WHERE iddesk  = 2;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Akbal.png' WHERE iddesk  = 3;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Kan.png' WHERE iddesk  = 4;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Chikchan.png' WHERE iddesk  = 5;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Kimi.png' WHERE iddesk  = 6;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Manik.png' WHERE iddesk  = 7;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Lamat.png' WHERE iddesk  = 8;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Muluk.png' WHERE iddesk  = 9;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Ok.png' WHERE iddesk  = 10;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Chuwen.png' WHERE iddesk  = 11;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Eb.png' WHERE iddesk  = 12;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Ben.png' WHERE iddesk  = 13;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Ix.png' WHERE iddesk  = 14;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Men.png' WHERE iddesk  = 15;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Kib.png' WHERE iddesk  = 16;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Kaban.png' WHERE iddesk  = 17;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Etznab.png' WHERE iddesk  = 18;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Kawak.png' WHERE iddesk  = 19;
UPDATE kin SET rutaImgInfografia = 'imgs/kines/Ajaw.png' WHERE iddesk  = 20;

COMMIT;






