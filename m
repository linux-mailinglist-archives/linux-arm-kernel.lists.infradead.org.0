Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F02D184FA4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:53:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3vSxS5nohnYasGi/fAHVs91TgU7OSb8jJeiUJmCQn8k=; b=hGXoNxJvMr3CLb
	voOls2FwE+CDJWXkf2mXQ3QUNzLamYOniwuM03bdbREgCLj1Hgwo8I0LkhxUlxOXQQ++JbKcghrpj
	BH/KRkzx+I8qNQdc+T1t4EzZbtXJRz+kkz1sodXcXKSmoW0nMY5jqamIWdU6v29uXgKtOQ2k2xPRi
	q206nqJEpQn5hEKxFJcQ75ca2uh0TqE9E6RN8XnZ3bHJSqT/5hWLYFpsAYY6qXRAxf4WXZH0pMmyV
	89QUOMQcXQan1sJ0KzPsz01nQj/5lRVTHTGzg3r3j8PiS2GWSsEI0xmcpv0X0cwa4gyduhIr2QS9e
	JuF73XwqYNV3hP1ZFdRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqN6-0001m3-SU; Fri, 13 Mar 2020 19:53:28 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCy-0008RC-1y; Fri, 13 Mar 2020 19:43:01 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: sGAXbhErN3cK1lbkMX/YWfsNs0mVhwPmMwDBmoQ86nUdKZQPE90pPcQ6iSD8UfUPncZp4QwcQM
 Anb1He7LKpvi4aKhxaaGkYL2voOEN+9zPBEFogArA6VKZ48Vl1mXX8wrntFERb8AqDtsw3aGEb
 eHCacKv0zKOcjIAJaOrQUqdXAp46t+OuK7VInBQihYwFcjrLWbHzmSxacOezhHHRZUgMKLpe8/
 dUjiwodQyzcKWzr52u++pobzarWqTENY55zGkRwmiaviNDDHInnrPljjvM5gbvYfJRib+DFba5
 4oQ=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="67134826"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:57 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:50 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 13 Mar 2020 12:42:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nVWx0r6/Da+ECCdByeJ23IrcEvnQTN/pf9mAIa3yLWRNwf9z71Q9ds4qFVtWM+AwLOeduI3H8tQpVmazPZ5GmAVru5kXICmy8/i5maKXEYbTdHNVsPXnCC3OyfFolHznwb28M4GnJH7M67oFyiKWRN9tAV7UmXSVOLNK3+SKXA/YeccKQH3Jql7m6UcYtTDlu4i4dx23ls8Yp24qmvk+LmU607+vEP/Gqs8C4ZPdXgIzxhLdwCPvjBdCr0l5RGuqZkkXb6zWZDKcs/B5t6W/Y4Vi1sYhwFOdzv1QnZb4OqYyLB4uBxpD+3uprfRYlNQQpqoPaxLqzhLgzFiouSGS7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uionsl51ILXBGO9cTZuJK/wov/75Uadur+bRa7Oltek=;
 b=JU3t4yzwOslgba0XR9gNrR/bzbCdK5MTzYxZfp2q5PHPRI/KhOweL45yzcao1JADYEfh7bcH+ZrNjWOJWEey2eds1RcEcJJMz3Hkjmh7fJFmfXwKUz+4/5Ybk/k5B+bH42fZNiJuAPfXiFc1mPpkTXymFV0X5BmmBTb2vWEEAQhL/rH+bnlQTyoN3G4cy/Rl8kS2Jq74VZl5Do/OgHzcX0wKXPGAIPRWa/EHEPUBZk99HZjRBn5aMDMvzdY8BrvJBM7pglEVXpiTKHrC/5xXnvkF6rhRsKHyAowyRS047XnAiDmOw3wxcu9/kSUUB+SPkZS/vSenrH1M+gvqYkUXbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uionsl51ILXBGO9cTZuJK/wov/75Uadur+bRa7Oltek=;
 b=sX2DuJ3ZNKApLsFodVjkG4zmNhwqzmhmDIrZfdCc+XgB5fkhDocIY4gICu27SA/ISXqftjP6woHxVXg6HPRkCGcBx3ZKUX+EVbk1RXPg+JUqkSxTBGwUpeyBhBiLpp72mxXoGNCz1lnWyZZxuDVYk+JL9//sd4+dlv13f/JTZaY=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:48 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:48 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 10/25] mtd: spi-nor: Move Everspin bits out of core.c
Thread-Topic: [PATCH v2 10/25] mtd: spi-nor: Move Everspin bits out of core.c
Thread-Index: AQHV+W+P8VafLMyQKk2etwnRCLbPuA==
Date: Fri, 13 Mar 2020 19:42:41 +0000
Message-ID: <20200313194130.342251-11-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f970e6f7-f661-49ae-8aa5-08d7c786b5e1
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB10F376EAA214A2C45862EEF0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
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
x-microsoft-antispam-message-info: FB3bHl7qXJnIIcf0LzQi+rLA+vjlkx2UmJttZHGgISA4/nR7oyaw4S2EiOZcmb53PGVWYbhSESXEWPH3LnqqT0AFiWPG2W+S8Pwe9kJdvhmKKu1+HAYusWQ9mGZR+YlhM9dq0vfU6+/+KKx5hYyuwM8loybVwbnNtlag6QTG1xpvdgKFqp2GSJChKdfndzuX+J9ANea8PI0kZUmeFyrwlxbeSgmE/3ubS6fJP2dZNRZXfy2Nz2+nbe3ZpX35WeKWna6UDwJnGGy8gbZOlOthEHsxF2EroRJZyg8W0TGC/F+g5K9fjw2OuVzXF5Xd+/SqNb2gd90dKtBFoaVS2oXleRZIG1ViJN+p5Op06ODbhrL0Oym/p+h8CDW4MikaUjukG9MHDmkGaw1XdUQw6bgC/ihbprIaY+zJPyo2WGvhtCF5h9dULLcS5TMfxwprL/yt
x-ms-exchange-antispam-messagedata: dqn4stq3EqaJg+NhAknSmwW+q0eAlYZYKxU1OOV7yTT8coDYp/NBmHYRtiDk0WlmvuXBqDlMZkD++aQ8E03C8NPTlS2P7jeS6BUPU7nBJ5+zXzvOCauUoNZGZdFx/wQBDLtGWAauim8b63FGGFnNIw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f970e6f7-f661-49ae-8aa5-08d7c786b5e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:41.9286 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9B+2QmS8DZ5n5PaC9HOtERfA/lo0WNgmvESbdikdy4o8bon4N6JuPX2f3HogXHcDoy5XyfH/qWp9RpGBoWfMdiKTXdyMNzc1ouA5GG9WWKc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124300_247399_339091A3 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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

Create a SPI NOR manufacturer driver for Everspin chips, and move the
Everspin definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile   |  1 +
 drivers/mtd/spi-nor/core.c     |  7 +------
 drivers/mtd/spi-nor/core.h     |  1 +
 drivers/mtd/spi-nor/everspin.c | 27 +++++++++++++++++++++++++++
 4 files changed, 30 insertions(+), 6 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/everspin.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index 4e5ef10e4fd7..384c520689d8 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -4,4 +4,5 @@ spi-nor-objs			:= core.o sfdp.o
 spi-nor-objs			+= atmel.o
 spi-nor-objs			+= eon.o
 spi-nor-objs			+= esmt.o
+spi-nor-objs			+= everspin.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index b52fece97579..bb824539fa97 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2081,12 +2081,6 @@ static struct spi_nor_fixups gd25q256_fixups = {
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* Everspin */
-	{ "mr25h128", CAT25_INFO( 16 * 1024, 1, 256, 2, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
-	{ "mr25h256", CAT25_INFO( 32 * 1024, 1, 256, 2, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
-	{ "mr25h10",  CAT25_INFO(128 * 1024, 1, 256, 3, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
-	{ "mr25h40",  CAT25_INFO(512 * 1024, 1, 256, 3, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
-
 	/* Fujitsu */
 	{ "mb85rs1mt", INFO(0x047f27, 0, 128 * 1024, 1, SPI_NOR_NO_ERASE) },
 
@@ -2437,6 +2431,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_atmel,
 	&spi_nor_eon,
 	&spi_nor_esmt,
+	&spi_nor_everspin,
 };
 
 static const struct flash_info *
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 33f2c63be596..1a930b22ac45 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -170,6 +170,7 @@ struct spi_nor_manufacturer {
 extern const struct spi_nor_manufacturer spi_nor_atmel;
 extern const struct spi_nor_manufacturer spi_nor_eon;
 extern const struct spi_nor_manufacturer spi_nor_esmt;
+extern const struct spi_nor_manufacturer spi_nor_everspin;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/everspin.c b/drivers/mtd/spi-nor/everspin.c
new file mode 100644
index 000000000000..04a177a32283
--- /dev/null
+++ b/drivers/mtd/spi-nor/everspin.c
@@ -0,0 +1,27 @@
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
+static const struct flash_info everspin_parts[] = {
+	/* Everspin */
+	{ "mr25h128", CAT25_INFO(16 * 1024, 1, 256, 2,
+				 SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
+	{ "mr25h256", CAT25_INFO(32 * 1024, 1, 256, 2,
+				 SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
+	{ "mr25h10",  CAT25_INFO(128 * 1024, 1, 256, 3,
+				 SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
+	{ "mr25h40",  CAT25_INFO(512 * 1024, 1, 256, 3,
+				 SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
+};
+
+const struct spi_nor_manufacturer spi_nor_everspin = {
+	.name = "everspin",
+	.parts = everspin_parts,
+	.nparts = ARRAY_SIZE(everspin_parts),
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
