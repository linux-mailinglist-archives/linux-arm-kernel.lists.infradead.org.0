Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B2D5184F70
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:47:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOyZL8/+I8NSVGJMeyBx3TBs3oNZwB95ViuXOEjt8/E=; b=eRln/RwaEcgDp9
	bvnehi9RygQskSyWL1I7MU+53DHLu7Vc6jqkIMpYEjKvgJiIAzGWqTrdxjYtrY9ac1+iFCopOWQRc
	NzSa3xUmgGq/Z0/BZn81JQwJ983y7+J6Q3Z417+Dq3VOSzdd6A50VdaknWVvhnp8LCjaZ+4VkUqPA
	2Eu2sIjlVLUiRKpwYN2TAslB7kSMChVKMX8pot8VfaugSCHW0vC/OuU9eCKXRIReJMzDJTWZb3xpZ
	ydvbQ7OrhU6CLY6638rypQN3BcSKRn43JY13Q6dkoOQV+YhUbqIkJDSyZmX79Ws7LYtBFJMLvM11q
	Uk7HclgZRkCOU8LK0mbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqH8-0004Bb-KA; Fri, 13 Mar 2020 19:47:18 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCo-0008Gk-Fa; Fri, 13 Mar 2020 19:42:52 +0000
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
IronPort-SDR: bOw4xh/s7FPvEPFVJSq0Jt1869YkdlD0nNcap5QSHyVcWVKPIwN8VJByBsFohRYc3a0tSa2+SO
 1STZalV9BNDygCQhjqellT2/OA2oyFBwYXQyXsBGNAsSGMKM74xZyXCCtYDpT+vtiT5dqly0+M
 V35X8a+uh1TqizqR+caXMB58J0UiHGP9LU7aA6U0JLgNkIYfVw8UGN2tae/WgSvpREYvkeG7Qv
 1pZ3zi3OvJouPJpFquHrfBw5bitpyHMbbH0Y5ukW4GgQv/Ikt/3A3Q5n9zCaQRap7YO1SqmD8c
 H4k=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="68809657"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:50 -0700
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
 b=UeeSLNp5bU9H1LKzEtvuK8s/ABk6nSJkd2eikUqgLBHYl8vPNUqLDHgPUq+ejlvq6G417sGgrmMt4++qqHkGK5FnVyRsjS32/F02gBhwmVNhw8rAwN/gKJBoFU7PLH9tOD5H6cHFck9M03KG1DjuEOrLQ2syhS3V358od1qNldcjz6ugeuwWJ0WlTA6ogG1PG0yoCMqW9yTJIKChzbjXPKZtDs1skXiAYjPC6bS9ByEO8VSsWRLQ291gXeOrhieqrUysNki+4BkCi6raypCJUyIOoP/Vbgx3NKQTrSDQ3onqycfXLMULWyXzmxRTNFSbIbXLLl+66re2Iin3mldJJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JD14xX5Y9/Mx5MfPpqFVLqChoAQSrXc3LcEu0PZNwvU=;
 b=NnxDMag6YwfhWhD+F/2hLUXbhP7oN2iI8NGnn2y6BvRfVB3ZBCIHrCu1p8BRBRVytIPH+akUvJDI6+93Zp19Ptr03/Ta63eGZCzvucluxQmvT79j5QtkeYjDVeBBnRmjuOKXu6bPJE3e2rXlvJXbvKb4CH6EA2t5bQm98QsEA1WcU05GM/ilMrB6cgCv1oEnjtBksq9dgqZ28xsZEV/PcCyllMasucdffRma54z5s8UeLGsruscykEGHsRU5z1qdm6rWrkCX0aTXt67OWQOMcPAJ7zDZd5m7WY6NdYq8YGwSeI8BNDlg6pUwr4PVZdgh7G37q4NwZpl6L8N9jGvF3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JD14xX5Y9/Mx5MfPpqFVLqChoAQSrXc3LcEu0PZNwvU=;
 b=SPbFyoi5itIlUveMUS7Q8HtdyOzlv8gXHuJkWtoDExC3UKWqRS68p/OqsJCFZmFlO6b80HlYP7WY0+ozFES3kIleMB6bCtrTJGv6S3PYAXyG9bMPRu5frURmknMf7U/4Yv1olJ8e/EwhQ9F8U/XYrNGVGAZ/zCjjDkDDN9rBHQ0=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:48 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:47 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 09/25] mtd: spi-nor: Move ESMT bits out of core.c
Thread-Topic: [PATCH v2 09/25] mtd: spi-nor: Move ESMT bits out of core.c
Thread-Index: AQHV+W+OwNbebwIhcE+yz8wJnZNDTA==
Date: Fri, 13 Mar 2020 19:42:41 +0000
Message-ID: <20200313194130.342251-10-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 15f5e921-ea50-4f61-9b72-08d7c786b571
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB1086F075ECECE7129BFD45F0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
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
x-microsoft-antispam-message-info: z2FYBYEXqR8+M98ra7M2UJ41e+aMJCqo6BXZP18wcjIKKOE8LyUE5PvHxMKXy7uDEpRq1yhfIPyDkZ9Uv2oyblS2jnMiYJPN3wJuCphdTqtLYkXDIOvLEhFcYoUn9UeOfwmdFxvrzlUIICExwGD3sDZ/umBa1/L6SDkKiKKTLw5G7ikZVumVT0g0oPPYhF3VSLbQh21/B1Y6Ko/cvK8DO7kQTw0Nlv+nDoT+tqV/cQx32cBBh9unFenFfdjG08sDBtL+HoGrRJz1cvB1S4jqA0xf8x/YWDrXLQHWWuU+102yFgloDV56vSpKSvaulyjNyTdiU1TmM8p4OGbIMrKU6ixKGtyqRhIRj3BLsEu5CEC95P7rompiMRki3YmX3dgyg/f2BWWa2Wik4PCL3e/DSgPvMGG0CbSRu1Dh5mHoWc8NDE2PtanfTPcszXCTPOgI
x-ms-exchange-antispam-messagedata: 9h/Gp3NfjEEm6YBiDvksR86qrQT3ZC0PhpMmh5G7Vugwwj3EcKbwloViC6R5j6+qrjRHu+HlrPwm+7ogNbKCht40aH9+aEbcLHfHT1+HJaHV6e7R660FNkB8EnxylMk0gkqgoiC4YrqVcRdXLWEH3Q==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 15f5e921-ea50-4f61-9b72-08d7c786b571
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:41.1650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HLp0SfSalXv4hp8aT/0ADM4IbfDGMzuTTAc2D+waGmI+tWMxRry+d+6cqe1CJer9g/8pcjnzcPFwKKceEcQlCgFmPW3fAX/zD86Zdpn4SxQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124250_551364_96298083 
X-CRM114-Status: GOOD (  12.78  )
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

Create a SPI NOR manufacturer driver for ESMT chips, and move the
ESMT definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile |  1 +
 drivers/mtd/spi-nor/core.c   |  6 +-----
 drivers/mtd/spi-nor/core.h   |  1 +
 drivers/mtd/spi-nor/esmt.c   | 25 +++++++++++++++++++++++++
 4 files changed, 28 insertions(+), 5 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/esmt.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index e1bc8ccfe14d..4e5ef10e4fd7 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -3,4 +3,5 @@
 spi-nor-objs			:= core.o sfdp.o
 spi-nor-objs			+= atmel.o
 spi-nor-objs			+= eon.o
+spi-nor-objs			+= esmt.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 66873af7e546..b52fece97579 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2081,11 +2081,6 @@ static struct spi_nor_fixups gd25q256_fixups = {
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* ESMT */
-	{ "f25l32pa", INFO(0x8c2016, 0, 64 * 1024, 64, SECT_4K | SPI_NOR_HAS_LOCK) },
-	{ "f25l32qa", INFO(0x8c4116, 0, 64 * 1024, 64, SECT_4K | SPI_NOR_HAS_LOCK) },
-	{ "f25l64qa", INFO(0x8c4117, 0, 64 * 1024, 128, SECT_4K | SPI_NOR_HAS_LOCK) },
-
 	/* Everspin */
 	{ "mr25h128", CAT25_INFO( 16 * 1024, 1, 256, 2, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
 	{ "mr25h256", CAT25_INFO( 32 * 1024, 1, 256, 2, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
@@ -2441,6 +2436,7 @@ static const struct flash_info spi_nor_ids[] = {
 static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_atmel,
 	&spi_nor_eon,
+	&spi_nor_esmt,
 };
 
 static const struct flash_info *
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index efa154a6bdf5..33f2c63be596 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -169,6 +169,7 @@ struct spi_nor_manufacturer {
 /* Manufacturer drivers. */
 extern const struct spi_nor_manufacturer spi_nor_atmel;
 extern const struct spi_nor_manufacturer spi_nor_eon;
+extern const struct spi_nor_manufacturer spi_nor_esmt;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/esmt.c b/drivers/mtd/spi-nor/esmt.c
new file mode 100644
index 000000000000..c93170008118
--- /dev/null
+++ b/drivers/mtd/spi-nor/esmt.c
@@ -0,0 +1,25 @@
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
+static const struct flash_info esmt_parts[] = {
+	/* ESMT */
+	{ "f25l32pa", INFO(0x8c2016, 0, 64 * 1024, 64,
+			   SECT_4K | SPI_NOR_HAS_LOCK) },
+	{ "f25l32qa", INFO(0x8c4116, 0, 64 * 1024, 64,
+			   SECT_4K | SPI_NOR_HAS_LOCK) },
+	{ "f25l64qa", INFO(0x8c4117, 0, 64 * 1024, 128,
+			   SECT_4K | SPI_NOR_HAS_LOCK) },
+};
+
+const struct spi_nor_manufacturer spi_nor_esmt = {
+	.name = "esmt",
+	.parts = esmt_parts,
+	.nparts = ARRAY_SIZE(esmt_parts),
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
