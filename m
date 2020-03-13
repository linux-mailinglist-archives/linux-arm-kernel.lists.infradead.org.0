Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88C28184FA6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:54:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bneHOiJtrzjYBu+DfAaqhHo0YtHuoRkiNg6O3Gde3Ms=; b=o64Nst9c/NA+40
	K1JbG6OeplvMCYXl5DI65gnDeWNIJm6xJxaajZIQK71GkX5BcxGM/oLSGeX351S6b6L8T+Cm68Cr/
	P0Nihsx2nzGDgjp86bim4ZApT36RLaTT60vTUUNx6UyzKO4ml9m5rfSauy8YsucjNiEc2XYpxEVbl
	2WlbUlCAopQQ1eFijXnQ+8ka8lwoAHj8D9I8zrtGKCCxJSqc7Pz5rcFeMZdPqpePh/6/c2MRe97G7
	ItQDsNllVlZNjnTNoppaRqdQ0R5inRD8ZBygG7BE6M6EX26fCAchSauioaj8JP/vZXdQbJKPDpFXu
	9hlGNJl2SHb3NUS5s5Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqNe-0002DZ-Qw; Fri, 13 Mar 2020 19:54:02 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCy-0008Rl-9W; Fri, 13 Mar 2020 19:43:03 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: v7VlFKfOrwQiJmrAPXlODgvlsKo9Jer3CN+peMxxdhmNnms9pJcb6hiizhjuUn29TbJuG/4HZC
 hV1MTcq7HJY4D94ot4MKZGMaLYe92lPgj+HKdiM5LgucklnRij2aFM8fB0qKyiRtCiVTpBs9zZ
 tbyh0SjstUJsqawxY5Dt0Kn996ToIzTBxKF5bRr1vZTK6x1hSqp/H0ynvUYoLaO50b7mBqE5cR
 DMxvSnKyCddYJku8/vapJRuZTmjqRZtzjN/IiAsIZitGTkVMEbVXw24Z9iEsSxf6d5Ic7bvkP/
 O68=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; 
   d="scan'208";a="5602938"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:59 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:59 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 12:42:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dnepIhftf82o5U96MM4HEtrW6YJYJ0+TUWefXXeZrFfM/4d/En8yGWrno9fQgRA39IcR3kckyW2WesJGiKI5DvjVNvLRvdPLkF0wfIJu7rJ0UWKQdgMUYeSbNbGBxVT83vww945VXGZ68swR0KfVmX2jbz5Zeeb4o9305YUtaeyT3KHXkoZ1/qNh2CbqWzoTMOcrX1LNx7z5YlpntBvYKsSSJNxNSHN/gjKFPTh9iDO4gKiZgO1Wr7/DsHTEMKo+QkElBh9iWy2X273ie+ZAs3iMO9BY9SSt/r6YPSyZAWKDMa/kqIIxi8URfobujxD3UrI3mXyMuwCyWLrUK7q2VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uU4WBy3jKw/IKq21qfo0j6VioGHt8LJPjqDirJaHDMs=;
 b=U9KpFCfVOfEvFRw41xntndUwuo9iwJ/17R4VQ5TvslgOBartPK38sqZFOkozwQud7CX38P0164BrmhfSK6VcP+ZNITSd+oNX8TbQ9+7mvgSfcgJo2nSK7SWqw2NC4kxz5KpS0k6WAdv6Iy3VIsOHJI48lYmVwtsnvTJVN4OGgYWm7CLzEKVAOgzL7qJnHUhOiTnxbSJmFN+hzIzkheb5+Zdr44KNTKDLxcHxJ3ev8T/1TMFpHLb2YjYT5jYFcT5zJjUY/vdKq9LOrD/KpNUCmokuYTPPhhfKBziU5am3ZU/X/E+/UJ2P5kJOhPdvU41BC2zIPp4goa4wWWUCb9eiEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uU4WBy3jKw/IKq21qfo0j6VioGHt8LJPjqDirJaHDMs=;
 b=mFhRbvm8nRkDrr9e8dVm5Im4kcTKxdV8O2xT31X3Q5AQwMZZIXxppfrPfVoZAHxtLNsuM6EqyBz6uuPi0zRCP5p4WcRdpzFCjnsfi4jKgPw6ko7frgW7Mk1CFlZVoJX1G5gZbYErfl86OCerpNaBpKeE5pcF4WJyxaACUP3gqAw=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:57 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:57 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 23/25] mtd: spi-nor: Get rid of the now empty spi_nor_ids[]
 table
Thread-Topic: [PATCH v2 23/25] mtd: spi-nor: Get rid of the now empty
 spi_nor_ids[] table
Thread-Index: AQHV+W+VeCBES7VXpUOt2Bbe37M1QQ==
Date: Fri, 13 Mar 2020 19:42:51 +0000
Message-ID: <20200313194130.342251-24-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cd46bc3e-6fe5-4c33-9311-08d7c786bb09
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB106F9A04CC409D9309EEB5F0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39860400002)(396003)(366004)(376002)(199004)(478600001)(54906003)(107886003)(6512007)(110136005)(26005)(186003)(6486002)(4326008)(2616005)(316002)(71200400001)(6666004)(6506007)(86362001)(36756003)(8676002)(5660300002)(2906002)(66476007)(66446008)(66556008)(76116006)(64756008)(91956017)(66946007)(1076003)(81166006)(81156014)(8936002)(26583001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYASPR01MB10;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oY6mFB23bPD6E+h+nsLAVsZh76GIAZfLR0zG6wjcPhS5gYl4kYZ7BAGokVbyfPjB//hP9Ct3Ok5CMXNe2jrYtdVmgtofzFGIWaLuy93O7gvEooPGkUpxCfF7uczsMg31eGUezmDpNGlmfbL5avQbbzWkGawSiLYinNAVjgxAD6gK+eiIrKeQ3Jre0AjqMMhxYvAo/EgrkfRaRjJM7O8ZVaFS6yT/oZwCLqTiIZZ7dfwXxlNHDT1rzTbuRur5jYwx5ub0qUMysVHOeRpq5PsINWzEeEVo3VubgEP6RXN6zPb0L8i8FOQZPa7kUTMJJm0RknCsw9nD7j+jBqfhva41Fo6dI5cbPmFRD2CJD3l/2lTPEWGAd7Tp/hTz33Awme/MftnpwNeUAStmBuwkK/cgr3OT2V4EQfzmb+OycDaFt3++0pFpMaUViei8Uo6GetfHaxsNnTI1HbEsGEChsJlQhhz0oAuh4+4L5gPtIsNPN4s=
x-ms-exchange-antispam-messagedata: ZDS+09dd4GWTgoQsZRWWlLf9n1QKDO8MB5snizY62GdOb+zsc3weXyYENNhPcmqCaR35yN+kz9EgXTzxnOMGonu0iRbW7qVq/PlJlvB1fjQ3hx+cwvQBpVUKMrT3fpuWtqDc7VxNm0HGclEEIOuMhg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: cd46bc3e-6fe5-4c33-9311-08d7c786bb09
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:51.4400 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BSLa/3VEzaSeNyT2q8T0uAQ1WOfLSgS7BGQLScKv/oJP+r44kZtKFcTWexFg/3cSSpllpvno6fMO0NylyQ2/U50DJs++Zn6R9VuymKn6f0s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124300_437379_CEA89BD8 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: richard@nod.at, Tudor.Ambarus@microchip.com, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, miquel.raynal@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Boris Brezillon <bbrezillon@kernel.org>

All entries have been moved to manufacturer drivers. Get rid of this
empty table.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/core.c | 25 -------------------------
 1 file changed, 25 deletions(-)

diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 941ba37c8a5c..baee58fd8b04 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -1931,21 +1931,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
 	return 0;
 }
 
-/* NOTE: double check command sets and memory organization when you add
- * more nor chips.  This current list focusses on newer chips, which
- * have been converging on command sets which including JEDEC ID.
- *
- * All newly added entries should describe *hardware* and should use SECT_4K
- * (or SECT_4K_PMC) if hardware supports erasing 4 KiB sectors. For usage
- * scenarios excluding small sectors there is config option that can be
- * disabled: CONFIG_MTD_SPI_NOR_USE_4K_SECTORS.
- * For historical (and compatibility) reasons (before we got above config) some
- * old entries may be missing 4K flag.
- */
-static const struct flash_info spi_nor_ids[] = {
-	{ },
-};
-
 static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_atmel,
 	&spi_nor_catalyst,
@@ -2015,11 +2000,6 @@ static const struct flash_info *spi_nor_read_id(struct spi_nor *nor)
 		}
 	}
 
-	info = spi_nor_search_part_by_id(spi_nor_ids,
-					 ARRAY_SIZE(spi_nor_ids) - 1, id);
-	if (info)
-		return info;
-
 	dev_err(nor->dev, "unrecognized JEDEC id bytes: %*ph\n",
 		SPI_NOR_MAX_ID_LEN, id);
 	return ERR_PTR(-ENODEV);
@@ -2930,11 +2910,6 @@ static const struct flash_info *spi_nor_match_id(struct spi_nor *nor,
 {
 	unsigned int i, j;
 
-	for (i = 0; i < ARRAY_SIZE(spi_nor_ids) - 1; i++) {
-		if (!strcmp(name, spi_nor_ids[i].name))
-			return &spi_nor_ids[i];
-	}
-
 	for (i = 0; i < ARRAY_SIZE(manufacturers); i++) {
 		for (j = 0; j < manufacturers[i]->nparts; j++) {
 			if (!strcmp(name, manufacturers[i]->parts[j].name)) {
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
