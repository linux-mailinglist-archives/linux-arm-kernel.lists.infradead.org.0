Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38BD7184F72
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:47:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIsWg+Hion01YRtw2qZzS/qBJzq3oyV2opbSXxFVMko=; b=fmx4sqXv5Iv9mJ
	s0XREym0gYpxDCQRy/wl+xrolkCtp/AVKCZZ3P2SHr02NoeqEbQX+smkrkE/ZncWQJoXIMyTZbVtU
	FT6cltT4WlrV2Rj8sBHt3BYVLE+3ykHc61wOxO/qNVs0tQnuTDU4w9x17+2XfAPjuOgeCntCZovPE
	m+H3YzjHERZsJa4cFl+B3u84bzYsPXljMXRRm/3YHN208FacfNp3D50WblMVJxtAI4UQI4eMaJFTX
	Md44UfU2EGf/5tIrmZy+8korKuZ3QmqSjO1A4QGhiO7+7HlXValV+OHsYn5PX/ao1hU/VvTj+ckpU
	sZscVY7WiC3tuAh2zbgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqHR-0004QG-Ey; Fri, 13 Mar 2020 19:47:37 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCo-0008KR-RG; Fri, 13 Mar 2020 19:42:53 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: YmBcgycMIVhNcEkSObS+JHLyKPKMUK173LCE3o+3eOw2kD007RCDWpi7yJ92dJxQ8FQ2R3ea2f
 qRsFCrHfCdERO+G5fCFlK0RbH4uO6kGjURjqVg3qz8YouXXAXQ2Dy0TVmj4RgysipTFdGo7294
 1U5BoP6UGm7Oafw4FTDvxsxglt2KVQbqZLZpaybPEjJYNmsqtab99ulcLlLTY7kcz8k/Afpk8P
 wnbhr6lw2gnZ5tBGBYeOofl1QoChmY8TDOzeoB/vkVgAVsVjFXFFPSaPG8S+eSGLEGqoCeC5zv
 aPs=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="68809659"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:51 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:44 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 13 Mar 2020 12:42:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D0J8pcLDHgGWHsl5vcZDxH42WRBEKHq2UjuGC5GocN5XcI6WhHmzFZYp/jms5b5+O3+buzhcLRoNqhrBnddibW4XXrMgK0PY4XK5yT65lZwQdG2CIHSlpK1ehyJlvDwYm04LzAvaOt4SpSYXq8W+DtUJebFu5MDOGHapz5Gkz4IAKiAx/oHqAA9KNoyLp2wvKat/zWOY1DxfyICDenNMr3tc84Qz0yBDW9CLUNoATXUDnjAe1IIQHC+2+U6B7CeGXL29I7e0mBvNDWqpUt7mwuKpqegEycAzZkLsAnEPvamkkOLk9WfTybvTsRuHsjF0nQXeg7Oy4oMUqdqcxs7yHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LpMUbYik94Nzh7aQbIFJ1mMkiJv8v1be70BNQD69Vhs=;
 b=aX+iTFsVrfgg4HOTQFO0WeGMa2+LvIxAmUsKhM86RQOl8/1iFGpMr5HnRLUt3hNMJHuoN6ywrS5emLg18mC61+l2mjC5i0sVmLIj72iW7N/ovpCwTGYEvDhftbddChaX2pyq6Q/P+Tphz8smAYBg8NnXmWMsBXlvdKnNUoGHnNzAn5AHHcWYK3Vse9Vj85p9SdxL4g/VUKMnK1QbrvvzSxsmM7osS+wYo802Fe0a5KbVIN0L44gt5dQ43IN0WVgWgAs/09EShAemeqem5xaE2xhUUsKnizS1jV2eiZC13yPrBtWs9nvz5v0A5M+GHDaqHZ0p+QSe65/fNtQCpQX4ow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LpMUbYik94Nzh7aQbIFJ1mMkiJv8v1be70BNQD69Vhs=;
 b=mCuDW/jmWWAJuBrfYxMRIQo9AAq1L8PbX+1OriUMREdK8qHFaWNkuXAxKEt9Ga5cJ4Kpv/+l+KFRwQ51N9MvEPPlDHTdlrUvseB+QWX+Hj/1p8uJku5/LIdLizHKamXZua9MvB9MSRbBq3uvf0biHI+W+beYCdk9woDE6YY6A14=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:47 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:47 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 08/25] mtd: spi-nor: Move Eon bits out of core.c
Thread-Topic: [PATCH v2 08/25] mtd: spi-nor: Move Eon bits out of core.c
Thread-Index: AQHV+W+OI8AuanpfMEycVHVwzCoB4Q==
Date: Fri, 13 Mar 2020 19:42:40 +0000
Message-ID: <20200313194130.342251-9-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: be7e0171-2d49-491f-0a4f-08d7c786b515
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB107B99383A95E4AC7C683DF0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39860400002)(396003)(366004)(376002)(199004)(478600001)(54906003)(107886003)(6512007)(110136005)(26005)(186003)(6486002)(4326008)(2616005)(316002)(71200400001)(6666004)(6506007)(86362001)(36756003)(8676002)(5660300002)(2906002)(66476007)(66446008)(66556008)(76116006)(64756008)(91956017)(66946007)(1076003)(81166006)(81156014)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYASPR01MB10;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GGQEqdG0ksFK+NzcbAEKbSVXs/6/at6UfvQAf1+7MCmXbdhYl+EfBcBIQpdrfeX3zf4maqAvIMh8mvp4i71djcGOqmSrifmDuotYF6lebsHEthzEgAt/8dO9lZ3rMTVonJ0uxeee1rDZiK5An33lxugyUsOhCTTuYXCXFVoqcTNxDsvVUHAjlUezlybg28o1NmfZiUIAZe4rLrujzldpXs8IXT1DFGdak6WWLQ0Tb/HxN94RfYzo3KyFPkMec1igLHcaj2/oHz5l9sDATmU+Be2ig/ogZL6WLwKK67ReCbFEiMKJnMj+F9duqSZU4GomzxtYjIcnV5OEOfXaWPHz5AhZYr8llQg91y+3Um1ESyeQZuCX2Z4pe4l9sgtDiEiH3Vj3rzrKCkj8cza/3DR13HDjBSTGVIgOkRcyCdhZkDYqkt0owy0liD4uqpQprOyA
x-ms-exchange-antispam-messagedata: AanYbPVUT5uClzhBblbj8JhnuX+IGdKnbuVYgaQEFnX35cFxlcG27QVq34k5G3l6TYKE1khxinuJuxGl3LjBWifgbK66xzbyy6o3JTxtYaUTaUOmTHUUIUGYBeQlyVWHhi06T2CQZMqjgeFKHbIrfw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: be7e0171-2d49-491f-0a4f-08d7c786b515
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:40.4594 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CG5entKkmDm7Kq0MnnmC7SR9P+elWojzXCVYMe7KxSAosWLQHtnYAQaXLq2gx7jVCAZuwPpAsofjlWtaWpp2ue3LMLmjMvuteil2IYzOhPo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124250_921995_CA4B9E5B 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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

Create a SPI NOR manufacturer driver for Eon chips, and move the
Eon definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile |  1 +
 drivers/mtd/spi-nor/core.c   | 18 +-----------------
 drivers/mtd/spi-nor/core.h   |  1 +
 drivers/mtd/spi-nor/eon.c    | 34 ++++++++++++++++++++++++++++++++++
 4 files changed, 37 insertions(+), 17 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/eon.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index 0a243592e416..e1bc8ccfe14d 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -2,4 +2,5 @@
 
 spi-nor-objs			:= core.o sfdp.o
 spi-nor-objs			+= atmel.o
+spi-nor-objs			+= eon.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 56def4d0bbd0..66873af7e546 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2081,23 +2081,6 @@ static struct spi_nor_fixups gd25q256_fixups = {
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* EON -- en25xxx */
-	{ "en25f32",    INFO(0x1c3116, 0, 64 * 1024,   64, SECT_4K) },
-	{ "en25p32",    INFO(0x1c2016, 0, 64 * 1024,   64, 0) },
-	{ "en25q32b",   INFO(0x1c3016, 0, 64 * 1024,   64, 0) },
-	{ "en25p64",    INFO(0x1c2017, 0, 64 * 1024,  128, 0) },
-	{ "en25q64",    INFO(0x1c3017, 0, 64 * 1024,  128, SECT_4K) },
-	{ "en25q80a",   INFO(0x1c3014, 0, 64 * 1024,   16,
-			SECT_4K | SPI_NOR_DUAL_READ) },
-	{ "en25qh16",   INFO(0x1c7015, 0, 64 * 1024,   32,
-			SECT_4K | SPI_NOR_DUAL_READ) },
-	{ "en25qh32",   INFO(0x1c7016, 0, 64 * 1024,   64, 0) },
-	{ "en25qh64",   INFO(0x1c7017, 0, 64 * 1024,  128,
-			SECT_4K | SPI_NOR_DUAL_READ) },
-	{ "en25qh128",  INFO(0x1c7018, 0, 64 * 1024,  256, 0) },
-	{ "en25qh256",  INFO(0x1c7019, 0, 64 * 1024,  512, 0) },
-	{ "en25s64",	INFO(0x1c3817, 0, 64 * 1024,  128, SECT_4K) },
-
 	/* ESMT */
 	{ "f25l32pa", INFO(0x8c2016, 0, 64 * 1024, 64, SECT_4K | SPI_NOR_HAS_LOCK) },
 	{ "f25l32qa", INFO(0x8c4116, 0, 64 * 1024, 64, SECT_4K | SPI_NOR_HAS_LOCK) },
@@ -2457,6 +2440,7 @@ static const struct flash_info spi_nor_ids[] = {
 
 static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_atmel,
+	&spi_nor_eon,
 };
 
 static const struct flash_info *
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 76a5c91abe23..efa154a6bdf5 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -168,6 +168,7 @@ struct spi_nor_manufacturer {
 
 /* Manufacturer drivers. */
 extern const struct spi_nor_manufacturer spi_nor_atmel;
+extern const struct spi_nor_manufacturer spi_nor_eon;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/eon.c b/drivers/mtd/spi-nor/eon.c
new file mode 100644
index 000000000000..ddb8e3650835
--- /dev/null
+++ b/drivers/mtd/spi-nor/eon.c
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (C) 2005, Intec Automation Inc.
+ * Copyright (C) 2014, Freescale Semiconductor, Inc.
+ */
+
+#include <linux/mtd/spi-nor.h>
+
+#include "core.h"
+
+static const struct flash_info eon_parts[] = {
+	/* EON -- en25xxx */
+	{ "en25f32",    INFO(0x1c3116, 0, 64 * 1024,   64, SECT_4K) },
+	{ "en25p32",    INFO(0x1c2016, 0, 64 * 1024,   64, 0) },
+	{ "en25q32b",   INFO(0x1c3016, 0, 64 * 1024,   64, 0) },
+	{ "en25p64",    INFO(0x1c2017, 0, 64 * 1024,  128, 0) },
+	{ "en25q64",    INFO(0x1c3017, 0, 64 * 1024,  128, SECT_4K) },
+	{ "en25q80a",   INFO(0x1c3014, 0, 64 * 1024,   16,
+			     SECT_4K | SPI_NOR_DUAL_READ) },
+	{ "en25qh16",   INFO(0x1c7015, 0, 64 * 1024,   32,
+			     SECT_4K | SPI_NOR_DUAL_READ) },
+	{ "en25qh32",   INFO(0x1c7016, 0, 64 * 1024,   64, 0) },
+	{ "en25qh64",   INFO(0x1c7017, 0, 64 * 1024,  128,
+			     SECT_4K | SPI_NOR_DUAL_READ) },
+	{ "en25qh128",  INFO(0x1c7018, 0, 64 * 1024,  256, 0) },
+	{ "en25qh256",  INFO(0x1c7019, 0, 64 * 1024,  512, 0) },
+	{ "en25s64",	INFO(0x1c3817, 0, 64 * 1024,  128, SECT_4K) },
+};
+
+const struct spi_nor_manufacturer spi_nor_eon = {
+	.name = "eon",
+	.parts = eon_parts,
+	.nparts = ARRAY_SIZE(eon_parts),
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
