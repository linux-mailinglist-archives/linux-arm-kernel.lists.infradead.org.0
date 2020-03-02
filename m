Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9604317622E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:15:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOC4F5V/4mJMW6wXdbSGtfunlCzILgGBkfQMZxGYVMA=; b=kgTxsCMNANNooJ
	SsTqhF2mtmrMA7U3jWvoAVA39uoYmXEh8hc3psmP5tDaaCM+J3++RwU42ZJrhg6wcW3GHcGrqmh75
	hFxG/DGj30eBBJWTbt0yvfWWwe1zqVl1LVNM+5Z4X/JFPu1ZZGKeCt+KHpuNNNIYl4MSr8fJ1tBVf
	tu0bS2p03el7vQXvTH6Bc3OkoNhFyz+iJDx7zBcgvt3Zoyi8DGPnCXpQgPxHyp3usVXd6UItPKxXC
	6whzq4AfdM3FWA6AY2zqo68KlOAXLyKqyiZtBp4Fg7y3eftsh8+SFhE6+YF2I8CuqAo02mikR/oES
	FtNfL/Arz2X2MH6gw9dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pb6-00018J-8w; Mon, 02 Mar 2020 18:15:20 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pU3-0002x1-4h; Mon, 02 Mar 2020 18:08:09 +0000
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: ir1sRq5CHqUc8w8XpAlETMjUgg2nqqKiqMxqQQnN+kI1Nx+BixCtjB6ipV4P/2DtIALY7LLsrp
 eK0BzbLpJjCizHqkhRyJVlMp6C8QuCa27B12onNEJNavatJqzrTAStepYXVE4CO+R9EIvCl85d
 TaPutvRp4ZhvHcN5xrwRVizeVM/7G/RT4JsKMeAqvlFrvYKQidXWA1of5czV9A76cbYSULlMD+
 9Pv2V3GqK66JXH5dwcq389R7XkVqfNp3DZoF6Kq3x5kqF4hsZoQd2cbjK3A1kKQVgJcP/BQ457
 Q8M=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; d="scan'208";a="67601716"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 11:07:56 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 11:07:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Mar 2020 11:07:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FqYA5Aysul55Fkr0QNtW69CNPiPHlvU6AQ5/EmVvDJrRJFzbke/I2zR+NKNoXwOq5mw/XyrG+IF+tgOzhZlH0IxUfTdu7ya+C5H3RvEeb2UEEcAAuqvluxanexDW9CUIyEW+GTDq4ORijueKfz1dB8I2yR8tt0U5aLSH+s/brB7hMep5114FKSIn0NruSOrLKTkhnUmo+b0VfXPhBiUCOoBfowhxdauHa6UHSZSIJ8LipU/W5kvSB+G5TryQ17+F2GDNeGuBV0QE/M2PRq4JTYJY7Ip8ROQZ6ywcchSHlkGUBUULSWdl1U4gzWofhTwQCdDHHk08nxpyci5HIVS80w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R+qSak5xs4cVCUwM0lIrfQmNKhPeH8NwgE4MxqkZCHo=;
 b=iSgvY8O0Kjmh9Gc4o7eJcdBWuYDBtq1U61Tn4Ph5+xALJx7iaDlxJa0C7bOsxa2BIg/aVX+S6ECGquAimW67ivHYgXdxZlGaBuB6vTUiHjpwJ/goI2bR0FggWOwkZkJ8WlrNla9/xRUdX6mdbd2R3PpPq+sTR0wxnEYORwMkSttvIwLCisCiBbaVu4TuWCAJ/wX6MLayttktpXh7RxV7+Rii62ibNLQTh+pDpMfQlUlZRLeg5Tml9k83UP5c6vDcRXFUOsCv6PKxnJCO/bpZYMPIiO5id5MZ5M8k9tVNRcXuzXawGHx4Hx5PBNbiDY9hdiZUo5OhyXjRj/GqqKkLgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R+qSak5xs4cVCUwM0lIrfQmNKhPeH8NwgE4MxqkZCHo=;
 b=BcnxeJ5bXxmC6fOrjxVkNYHjxreEYqfwVNFRpgimWbrfgqx0mD7XgOqExvoW6vCzu4OSKsWnuBvKGFJvhJ31k841j//vqxjxOEh3IuMbn5EVhgcbTyiZ9EP0w4ag0tFKxP+Cl9YLyNfJZGdNi+NMZgSHRYibCpYy9v/qI5VUOvw=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4142.namprd11.prod.outlook.com (2603:10b6:208:135::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 18:07:49 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 18:07:49 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH 08/23] mtd: spi-nor: Move ESMT bits out of core.c
Thread-Topic: [PATCH 08/23] mtd: spi-nor: Move ESMT bits out of core.c
Thread-Index: AQHV8L17GIvmS/f6zEOqYBeDtEU3XQ==
Date: Mon, 2 Mar 2020 18:07:49 +0000
Message-ID: <20200302180730.1886678-9-tudor.ambarus@microchip.com>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 11ee166a-0b9e-4d93-8471-08d7bed49e6c
x-ms-traffictypediagnostic: MN2PR11MB4142:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4142DDBF2E550981A7EE3A3FF0E70@MN2PR11MB4142.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39860400002)(136003)(396003)(376002)(189003)(199004)(36756003)(26005)(66446008)(107886003)(6486002)(186003)(2616005)(4326008)(478600001)(6512007)(91956017)(64756008)(66946007)(2906002)(71200400001)(76116006)(8936002)(316002)(86362001)(54906003)(6506007)(66556008)(5660300002)(66476007)(7406005)(1076003)(7416002)(81156014)(81166006)(110136005)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4142;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rTYQfk3ArjFupYtRS/3APEMwZeizfxv1bFjmPbxzR+3MfxpOloa8ukKcPM2r1xweq3hphPZwRUK4FSOs0Ubx9KnilIn6KhaV/DL2POTW41ML3+zYdVGlkLTOODox0LTDe98dJElut4XuKFVPJqLQ2jFe6UZN0WpVCVBpGXbiVBJmyteltDlJIK1+noj05xDVwHmGcpufy+4Krfqsy63PhDky0twoomjrLrjpRADSEeRiRvaAFJM4xaOm7JDX6QpNaYJEeUjexsLbfBbyWRGW/Q3JuECL0i6JMozRT2ROcd4NLhkznhDEGnduJR6P2e9T2faO6vU29XbxmJbFHdRlos3SmIc0kSMlFrC9JUdTRwqcZ1qBd/iZOXJCwy3kfb5VauxrkmkS+NTalyw6Zj12MZos6mCL+F71vjXQfTsjer1UAlITR0vPi300J97JHYnE
x-ms-exchange-antispam-messagedata: 2+Z1n+paUUvVyW8ibUYqdCZ99hxH9z9N0z+H3y6T4BHO786hpxKWgocKHcF+ixjfg5JcePhCL0Gw4tsyf+TJwCI3wp+LlV0SXQr58sWf4yiQDl/Ypv9WAV3kuJ8fXj8h+fd8YYbJYNMGTJSRtqJqfw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 11ee166a-0b9e-4d93-8471-08d7bed49e6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 18:07:49.4651 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kAe5MkJHJUcfO3UqOJfz2s8eRTonOPHj0fAiRPgIG7I/K1J6R7sVP2X3Kv9ry117Ir3Emb/1CCQ9671yrboIQyrg2/B1vUIZus5E3APPVKw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_100803_236318_DABFDB05 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kstewart@linuxfoundation.org, alexandre.belloni@bootlin.com,
 linux-aspeed@lists.ozlabs.org, thor.thayer@linux.intel.com,
 jethro@fortanix.com, rfontana@redhat.com, miquel.raynal@bootlin.com,
 opensource@jilayne.com, richard@nod.at, michal.simek@xilinx.com,
 Ludovic.Desroches@microchip.com, joel@jms.id.au, nishkadg.linux@gmail.com,
 Tudor.Ambarus@microchip.com, john.garry@huawei.com, vz@mleia.com,
 alexander.sverdlin@nokia.com, matthias.bgg@gmail.com, tglx@linutronix.de,
 swboyd@chromium.org, mika.westerberg@linux.intel.com, allison@lohutok.net,
 linux-arm-kernel@lists.infradead.org, andrew@aj.id.au,
 linux-kernel@vger.kernel.org, dinguyen@kernel.org, michael@walle.cc,
 ludovic.barre@st.com, linux-mediatek@lists.infradead.org, info@metux.net
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
index 67a3493939f6..30a0ddc6de81 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2079,11 +2079,6 @@ static struct spi_nor_fixups gd25q256_fixups = {
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
@@ -2439,6 +2434,7 @@ static const struct flash_info spi_nor_ids[] = {
 static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_atmel,
 	&spi_nor_eon,
+	&spi_nor_esmt,
 };
 
 static const struct flash_info *
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 1ac226c456e1..23ce99fb8087 100644
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
