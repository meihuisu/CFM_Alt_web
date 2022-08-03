SET CLIENT_ENCODING TO UTF8;
SET STANDARD_CONFORMING_STRINGS TO ON;
BEGIN;
CREATE TABLE "blind_trace_tb" (gid serial,
"name" varchar(254),
"descriptio" varchar(254),
"timestamp" varchar(24),
"begin" varchar(24),
"end" varchar(24),
"altitudemo" varchar(254),
"tessellate" int8,
"extrude" int8,
"visibility" int8,
"draworder" int8,
"icon" varchar(254));
ALTER TABLE "blind_trace_tb" ADD PRIMARY KEY (gid);
SELECT AddGeometryColumn('','blind_trace_tb','geom','0','MULTILINESTRING',4);
INSERT INTO "blind_trace_tb" ("name","descriptio","timestamp","begin","end","altitudemo","tessellate","extrude","visibility","draworder","icon",geom) VALUES ('WTRA-ORFZ-SFNV-Northridge_Frew_fault-CFM2','
<a href="http://scec.org"><img src="https://files.scec.org/s3fs-public/SCEC_Traditional_Logo_Red.png"></a><br />
<br />
<h2>Community Fault Model Metadata</h2><br />
<b>CFM5.3 Fault Object Name:</b> WTRA-ORFZ-SFNV-Northridge_Frew_fault-CFM2<br />
<b>Fau',NULL,NULL,NULL,NULL,'1','0','-1',NULL,NULL,'01050000C00100000001020000C027000000A60E20903C985DC0E6E2181ADF274140B1BFEC9EFC7EB9C00000000000000000D16A5677C3985DC03243CFD45428414052499D8006F6B9C000000000000000008861E31C53995DC0E00BB3A2C1284140378941604555BAC00000000000000000154B5A66F3995DC0E34BE1D5442941400F9C33A20495BAC0000000000000000084979407949A5DC0152CC8F8C62941400612143F66D2BAC000000000000000000E2D813F389B5DC01B9187043D2A4140A9A44E4023F5BAC00000000000000000F5C8438FEA9B5DC0DD2DAF32A32A414089D2DEE0ABEFBAC000000000000000007A493AA19F9C5DC0CD8519FFFA2A4140EC51B81E15D6BAC00000000000000000E87750DD549D5DC003C4C1DC512B41409A081B9EAEBABAC0000000000000000084044629099E5DC0418311D4AD2B4140EC51B81E059FBAC000000000000000000D810FC3BB9E5DC056E7457A122C41403D9B559FCB7FBAC0000000000000000049A38C1A6F9F5DC07CA6D03F732C41407DAEB662BF58BAC0000000000000000025221575DD9F5DC02D3B4420A92C4140DD240681E536BAC0000000000000000087DC65A397A05DC063411BB00A2D4140091B9E5E69F2B9C000000000000000007E2E59B352A15DC090F64FFA672D4140BA490C029BB6B9C000000000000000006C8B81C3DDA15DC0A1116F69592D4140B7D100DE22F9B9C00000000000000000091288FA67A25DC0893C2B02572D414012A5BDC1876DBAC00000000000000000163B5336FCA25DC03A8FDFAE952D41402EFF21FD16D9BAC00000000000000000592B0A7964A35DC0236CF1FBEA2D414060764F1E361FBBC00000000000000000A3441853CAA35DC091F739CD452E4140C0EC9E3CDC7CBBC0000000000000000097D73C2743A45DC0DA8B3DA8C52E41400F9C33A2142FBCC0000000000000000036E82FCBBAA45DC0E27455E53F2F414048BF7D1D681BBDC00000000000000000A9610ADA39A55DC0DFE25FC4F62F41408351499D30E3BDC000000000000000008CA033B4B9A55DC064DBC7ECB0304140FDF675E0FC77BEC00000000000000000CB40387E31A65DC0FD7133A95031414060764F1E36BFBEC000000000000000002747E0DFABA65DC058BD2F4CEC3141409A779CA213C7BEC0000000000000000002B774300CA75DC0A3C6B0FE5E324140EFC9C342ADA9BEC00000000000000000ECFBA3E96CA75DC02DE46B7DD0324140E02D90A0C884BEC0000000000000000003DF25D709A85DC0618CAACD5F33414060764F1E36B4BEC00000000000000000C253B15BA6A85DC0E3212E1BF13341403D9B559F2BBCBEC000000000000000000086D07742A95DC0D30D35344E3441406F1283C0CA26BFC00000000000000000463706DDB0A95DC0F40846FE773441402EFF21FDF692BFC0000000000000000066CF06431FAA5DC0ECD92BC5A134414003098A1F23FFBFC000000000000000004EF32ADEAFAA5DC0107B695EA43441400612143FC67EC0C00000000000000000D418FD7940AB5DC0B4D874F3A63441405D6DC5FEFAFDC0C000000000000000006C5AA183D1AB5DC05CC08718AF34414043AD69DE8977C1C00000000000000000AB872C4F7EAC5DC021DF52A2F834414040A4DFBE46C3C1C000000000000000002BBB38102BAD5DC03A54803042354140C66D3480BF0FC2C000000000000000005E98528BA7AD5DC0ADBEB4FD9F35414023DBF97E9220C2C00000000000000000');
CREATE INDEX ON "blind_trace_tb" USING GIST ("geom");
COMMIT;
ANALYZE "blind_trace_tb";
