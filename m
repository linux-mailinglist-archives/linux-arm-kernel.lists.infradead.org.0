Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B07184F7C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:49:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q6C7iH/7MnUZ/tLexCIrR18nvpQiGZSBscJDzIe9gl4=; b=jk6/oIxBhhpb2W
	/k9fvWNgTT9rwZTSjPekCVSBLeX4/Qkw++fL1awj7xVV3hbchjVlczNpQUvIsKgbisJw6qxN+f8kb
	cBJ83DBJBpes33O0Ueyp56csXAqRXpV8vhNMQGyeXpRfhUH7a2Y+qWWpTzZDrRXS3wWFdGGK8fDwL
	fvVVXNxQXuVYZ13tcZpxlPAQTieKfJ/ooUSy0mprzyvwRmcsTUH75IrSr4Jlh7aH9uxNN45AbdcQM
	s+GO4n9/V87oufLT4XwGwvfv6L7/ZB6ADAZePPcmT9UMnmgecSE1Gkxha1kGFOrkQDy8vGPJzd2E5
	+rpf9HaIVEDjJjDtlxNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqJK-00065C-Mf; Fri, 13 Mar 2020 19:49:34 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCr-0008Gk-2e; Fri, 13 Mar 2020 19:42:56 +0000
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
IronPort-SDR: Sbwsq01FbCokJoHYmFJFMfaWlUDVaIDcS6fKcKIVpi/2/9zSU6BOpIQFGteTNApz8DUdNIy5cK
 CA1P5m1n1T3A+OlyNQ7HOpM4W8rCI5oCRZdl6C7QNF3KSaAeTg1fFLKNLJnzuj99Fng429/Bbm
 6nD3Hte/yszQWRqJX7IumQqfQHReSC1VMS+D1sB45fyx2f0m+6wEU44R/d7RZBtQZMSTL1XLmH
 eSA5nlrRrGnd0hhT1GYK85XpCdzDdRA/FlrS1+j5yJqJeFGGXjwEXPlJ1jSa7qN+qO0qLc5VTF
 dv0=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="68809660"
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
 b=ShCXTrW4zXD9lEMua8+HLANx67GM0Es+gpUjEPXfVtrm7QxY+AGBTvfDapjDHPn6hvJKsXzFY06fsZ04vgeJOfByk7L0XhxTXbnKcozp+t02HPogm2fdykoCR1w/OxqBu43X/XOBxghqMDy2fhELOLe9AZSx6w9c0kaAAYbCca8Rre7R0o6MiAbZDpO0kFgDsGRAAchbXoc8wBKl9mqooDPGuItGfzLErorVtdlP7jTxAeQgQPDIuHRORf//9Hgtjn/KjsM0wGLfplQoeCL9m+m0/zveGZXPE+AVKr4+Wh42zxyp08+N3uJRDU51v6J19LQiqV25Y40Sb1zkl7PSTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CTK2taqtInNKFykwbVkUwrVKBGd4ATEZuRCkHWKLzFo=;
 b=gbvK1Kifj41Jhnyt9UhWB5IvXmaEuO3KRrOKsXMvS0LoQnD8SRSQ2y7WEsJzf+azaz1SYNZg4TYaX3l5LgGwPQbOFGYWOvt+OKwewR0MvNkmr4Z2hmUUkiBmunZKeFzRTe8r2VIIuFFNgyUT9yuZck52k8U0eeIsyAwX5MljPXUNjF0u34zkecpg52ELoxmG4EMxdwhIBZuC8jFT6fhGs/VyY83xF2FmKp88a0+hbdKbTiWHdzUpKBdOa/Vc5noZVR29mcUowV3tuNOeg1EJ7Vy6uoCf55pqkikfj/7zBtfM5dSHwmmkBGc/9lDHOJdRzFiv6w8kLgiE8e95S+WZug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CTK2taqtInNKFykwbVkUwrVKBGd4ATEZuRCkHWKLzFo=;
 b=jXbk7yTlPdpgn5A0YIRU128Ft5dcSUA+gL6rpy85Rslzxwb96DmpvFaCtF9HK/NwGeh5ppglphetXxkW/htKYkuwPPv08lm676x96uVXevrGwe3dFttRA6xeQPWy/6zT86FobAmHQJ33hKt8OU7fjieRx0gbPlyI7Ot44tUqlYU=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:46 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:46 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 07/25] mtd: spi-nor: Move Atmel bits out of core.c
Thread-Topic: [PATCH v2 07/25] mtd: spi-nor: Move Atmel bits out of core.c
Thread-Index: AQHV+W+ODXaLT9f3nkGxluC9m8UVzA==
Date: Fri, 13 Mar 2020 19:42:39 +0000
Message-ID: <20200313194130.342251-8-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f025216f-9c0f-4fe1-d4a9-08d7c786b4b2
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB10C0B5D390FD8CC4D55E11F0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:6430;
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
x-microsoft-antispam-message-info: Ts2sYiH7r8FY8S0ru4seIZpwG+A8NLlJ3V0gsUIXNPZH5Em10I0hb7HhD2Ra97xWvoEkhcObk14KTbkQktQvQKpDGJWrsEmCLL3BqzNiVRHFFaATDndTRC15G7yupobcRNpWWrGgn6lT2FTlZUf5mCvEl5dnegLSXkuX4nw0bQ25f2gIou+AFnqA3v/s4wcGA3QOpqQ5XmVLxJbuoBLEee2sC/62WBJHuTygA2Vz26jTKj0JoctB0W4I041H3liTZU9p3Br8uP7Z1sG2WCJIe8Vh6+kb4OGKtpHjWG59FmcR+MJ1+wrcGhR5Q6I1vOfTjnrtOfzjJN66+7DOsslM/u2LiEKiJ2TjXz4pe2GPJI1ehSYQoWXIJ79/XQ6WfuEWH639gFH5MITZN+Pxhs2tiM10Xoo6WTR7RUpA+94T4Wc26NS7bR3axKDNVZWOguAO
x-ms-exchange-antispam-messagedata: PFxxfQokq6N38LkyFEUk1sELsIkQVUEW+PCk4piUshffqO1l9TC98MLyjP3wgz6CLMkfln3vxxtC1ZAjaNPr+tXuItDIDQKoKQx7zdCyXR/xhT+GRPbdpM2F1FPao4CmrKfrpuOGGNb+E9FbV7xqjA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f025216f-9c0f-4fe1-d4a9-08d7c786b4b2
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:39.8048 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KIhAfXhZXR+H89/JgrV2J3oDrP17TnYEVXZe2HOivg7jG4LVhQc0hXuQQJ8kWNMp8Zd1W27v+5J8PobK3mQPnvzy4b3pnd/jPw4smO+r3bY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124253_170238_CAAF7683 
X-CRM114-Status: GOOD (  12.90  )
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

Create a SPI NOR manufacturer driver for Atmel chips, and move the
Atmel definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile |  1 +
 drivers/mtd/spi-nor/atmel.c  | 46 ++++++++++++++++++++++++++++++++++++
 drivers/mtd/spi-nor/core.c   | 32 +++----------------------
 drivers/mtd/spi-nor/core.h   |  3 +++
 4 files changed, 53 insertions(+), 29 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/atmel.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index 6bcdb6f1615a..0a243592e416 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -1,4 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
 spi-nor-objs			:= core.o sfdp.o
+spi-nor-objs			+= atmel.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/atmel.c b/drivers/mtd/spi-nor/atmel.c
new file mode 100644
index 000000000000..3f5f21a473a6
--- /dev/null
+++ b/drivers/mtd/spi-nor/atmel.c
@@ -0,0 +1,46 @@
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
+static const struct flash_info atmel_parts[] = {
+	/* Atmel -- some are (confusingly) marketed as "DataFlash" */
+	{ "at25fs010",  INFO(0x1f6601, 0, 32 * 1024,   4, SECT_4K) },
+	{ "at25fs040",  INFO(0x1f6604, 0, 64 * 1024,   8, SECT_4K) },
+
+	{ "at25df041a", INFO(0x1f4401, 0, 64 * 1024,   8, SECT_4K) },
+	{ "at25df321",  INFO(0x1f4700, 0, 64 * 1024,  64, SECT_4K) },
+	{ "at25df321a", INFO(0x1f4701, 0, 64 * 1024,  64, SECT_4K) },
+	{ "at25df641",  INFO(0x1f4800, 0, 64 * 1024, 128, SECT_4K) },
+
+	{ "at25sl321",	INFO(0x1f4216, 0, 64 * 1024, 64,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+
+	{ "at26f004",   INFO(0x1f0400, 0, 64 * 1024,  8, SECT_4K) },
+	{ "at26df081a", INFO(0x1f4501, 0, 64 * 1024, 16, SECT_4K) },
+	{ "at26df161a", INFO(0x1f4601, 0, 64 * 1024, 32, SECT_4K) },
+	{ "at26df321",  INFO(0x1f4700, 0, 64 * 1024, 64, SECT_4K) },
+
+	{ "at45db081d", INFO(0x1f2500, 0, 64 * 1024, 16, SECT_4K) },
+};
+
+static void atmel_default_init(struct spi_nor *nor)
+{
+	nor->flags |= SNOR_F_HAS_LOCK;
+}
+
+static const struct spi_nor_fixups atmel_fixups = {
+	.default_init = atmel_default_init,
+};
+
+const struct spi_nor_manufacturer spi_nor_atmel = {
+	.name = "atmel",
+	.parts = atmel_parts,
+	.nparts = ARRAY_SIZE(atmel_parts),
+	.fixups = &atmel_fixups,
+};
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 4494959cd937..56def4d0bbd0 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2081,25 +2081,6 @@ static struct spi_nor_fixups gd25q256_fixups = {
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* Atmel -- some are (confusingly) marketed as "DataFlash" */
-	{ "at25fs010",  INFO(0x1f6601, 0, 32 * 1024,   4, SECT_4K) },
-	{ "at25fs040",  INFO(0x1f6604, 0, 64 * 1024,   8, SECT_4K) },
-
-	{ "at25df041a", INFO(0x1f4401, 0, 64 * 1024,   8, SECT_4K) },
-	{ "at25df321",  INFO(0x1f4700, 0, 64 * 1024,  64, SECT_4K) },
-	{ "at25df321a", INFO(0x1f4701, 0, 64 * 1024,  64, SECT_4K) },
-	{ "at25df641",  INFO(0x1f4800, 0, 64 * 1024, 128, SECT_4K) },
-
-	{ "at25sl321",	INFO(0x1f4216, 0, 64 * 1024, 64,
-			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-
-	{ "at26f004",   INFO(0x1f0400, 0, 64 * 1024,  8, SECT_4K) },
-	{ "at26df081a", INFO(0x1f4501, 0, 64 * 1024, 16, SECT_4K) },
-	{ "at26df161a", INFO(0x1f4601, 0, 64 * 1024, 32, SECT_4K) },
-	{ "at26df321",  INFO(0x1f4700, 0, 64 * 1024, 64, SECT_4K) },
-
-	{ "at45db081d", INFO(0x1f2500, 0, 64 * 1024, 16, SECT_4K) },
-
 	/* EON -- en25xxx */
 	{ "en25f32",    INFO(0x1c3116, 0, 64 * 1024,   64, SECT_4K) },
 	{ "en25p32",    INFO(0x1c2016, 0, 64 * 1024,   64, 0) },
@@ -2474,7 +2455,9 @@ static const struct flash_info spi_nor_ids[] = {
 	{ },
 };
 
-static const struct spi_nor_manufacturer *manufacturers[0];
+static const struct spi_nor_manufacturer *manufacturers[] = {
+	&spi_nor_atmel,
+};
 
 static const struct flash_info *
 spi_nor_search_part_by_id(const struct flash_info *parts, unsigned int nparts,
@@ -3253,11 +3236,6 @@ static int spi_nor_setup(struct spi_nor *nor,
 	return nor->params.setup(nor, hwcaps);
 }
 
-static void atmel_set_default_init(struct spi_nor *nor)
-{
-	nor->flags |= SNOR_F_HAS_LOCK;
-}
-
 static void intel_set_default_init(struct spi_nor *nor)
 {
 	nor->flags |= SNOR_F_HAS_LOCK;
@@ -3301,10 +3279,6 @@ static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
 {
 	/* Init flash parameters based on MFR */
 	switch (JEDEC_MFR(nor->info)) {
-	case SNOR_MFR_ATMEL:
-		atmel_set_default_init(nor);
-		break;
-
 	case SNOR_MFR_INTEL:
 		intel_set_default_init(nor);
 		break;
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 8599796dfc40..76a5c91abe23 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -166,6 +166,9 @@ struct spi_nor_manufacturer {
 	const struct spi_nor_fixups *fixups;
 };
 
+/* Manufacturer drivers. */
+extern const struct spi_nor_manufacturer spi_nor_atmel;
+
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
 int spi_nor_set_4byte_addr_mode(struct spi_nor *nor, bool enable);
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
