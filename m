Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 533C2184FCB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:59:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ia8q6yFtArAPkHsRRRRBFZE1hWyV2mp4KpDiBzd5zgk=; b=RnmbJPHNdTt/0N
	J3a9XOkZ/0AIMJtUnWObW0Tt2Z2Ax91Ai+Ag0hpAn0A5ENxP1nJZ2HOQDF8goY7wvpYwQTxYhRpfU
	QuTBGw+tOOBRrAo09BzB0Yo2G7i7ZRPVf/e1TwZxpqZnWfg1yDi3x5RIkQvhVrZAOS3UkHyY+6Cex
	nPsamjsSA/lM94mM1yACu7fJN87WTMeNqzbebM1QrlGA1i9U5wPmZrkDMzVjmq5XdMg6Fd5alMqWJ
	/Blb4OfsX/G3dHwBR3yauBVJuasvx7jHJtCRjNU24fHGExnv3YA0drffvlGxDwcR/LsZrS0I18IjV
	e1ml89b31mkhSRYItzcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqSb-00084U-FU; Fri, 13 Mar 2020 19:59:09 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqD9-0008RC-Ka; Fri, 13 Mar 2020 19:43:14 +0000
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
IronPort-SDR: IrofOWlzOsaSIDRfshECHZJeoNLkqlvJCXhL5XgSMNFp76gboqht1z04LNI9ZfeefcYexQYL6T
 At3dY+B+ja8V4zCiDrV0PmedRBmFK5rDHG9bR0CSmrIHckvv347f3tL6ubZnACjeOWgw/TAMWp
 w6ZrNY+Nv/oNeWrxnlVDfSvcQatA+ZJleP5hiAhUQT5XQGSKhYTvCddw3fDJpEjIb0a9BGjbv3
 5YcFbtAnz1mejfnlOHylGCZus83JFEi1s+g/TKeO3OuZ5k0Zfpoy9W/7M+8nU+LwooOhJk6t1f
 VsI=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="67134848"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:43:00 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:56 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 12:42:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UUrvJnr8DOTJzgijnYdHNmCsgyq8Kg9JzOheZbchHFl2PJGzdtbMwaN9QpmdQV+hdHDJXIaH3ZOhfEjFPqMwJEF2PO7JXEdlgojYS5qLslNQfYJfeha98QWfJDw2rMhrPICxsO+sUuG3DREkyy0fumQ+AAcOF3ZSHsJy5wYj+UNuCTWDCF+w9oHq7NNXh52TbARS2ZLpWu+Vscahbw/a5aNbNQtYtj2sarQYPIOfk7ddxE92NaXLK+HWPaOePcF1i9rQVWbqgJ7LDTAGdG1YTNUe6guBFjYBoDz2cwtr+jgqyUDycWro/X1iDWMhVrQbV4pIirDY0m1XDZdfcqOtmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TgJHRZcBZQXvhgZhMj0Mm6Yhl2JLd+i3FrvEHUdkDB4=;
 b=lNFYP0cPHatkLeXt2FYeMJh1P8KgIldzKfsR/cHr78tWuIG6UKUyBGc2Ass4JHPfZQo6Vkj7SJ9dvDGs2UzmLQx5WaY8dJrQZx4uARWmoy5XiZLKVoMImg+S8FI0wFQZcsH1ydXBoYCztrULa1OINPXwYjby7WO2U/PegyQDHMSlYk3hZMllEhPj3Q7b9yw0SWq0bpmRlUNmVyb2Hhl/amP7n578F/+y30eOcSu3tWwg5fZispoOueMgF/h/thw7E71HUQqLMeUNjSAnDBEHR/4AB3CRJg+U4W+z98NrTWoJwmHh8ZAFCRCALei0M9dF4CxcJqEUVx2gbVZefpFWug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TgJHRZcBZQXvhgZhMj0Mm6Yhl2JLd+i3FrvEHUdkDB4=;
 b=FGmc8HB6gQTczzRT9HxPGbWBtsyrDS4Utv2ZJYSR/ZhfWeaLrHO2Nn7w923N9THEJdJ5dnNP+T0P220ymBRV48gjNo/M5Rka3jTQlDz00abLLTYxg4BJzIjX4u7TIahzLmXfcrTwQTGPaO0TmyyB+0H6K6PO2s08wTVMfOZ5JAA=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:55 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:55 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 20/25] mtd: spi-nor: Move Catalyst bits out of core.c
Thread-Topic: [PATCH v2 20/25] mtd: spi-nor: Move Catalyst bits out of core.c
Thread-Index: AQHV+W+TibuTUj6RC0Cux+sAiSLtdg==
Date: Fri, 13 Mar 2020 19:42:49 +0000
Message-ID: <20200313194130.342251-21-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7543e0d7-017d-4823-ee4f-08d7c786b9db
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB107BFCAAEFF793FA27CFEDF0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
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
x-microsoft-antispam-message-info: 28l6OwPh4vwtYcWuS9ISZB4cZF/F2c+2U6dqa12t6qBPLqKpX72R0JkyHddYHuCY2YoosT5izdWNCGtmIamdBD23q4/bNGfcezUD2RUkRl5yTkccz68U6zd9kk1w3X0X1JQCaKMHtiDtkvsnuDPz1tfJ24s9iVpjFR2CI0sR5WlZxA2Wt5ato7NixcOkXKMxF+A5A4ympOmW5ZhI4pxUZCp6I5gD3Dr2xOcXG1gFYsFwJ533UIPz73xW704fzsMEwZYIXY5+ulUlmTUANfk6daKkDJYGkMRzWtM98n4bM/4r8dH6/QrSzRQnIJXhQHLjAghyFlHNXS6vn/JnO9J+zsAtCfjzKfa/kukrVNqNC0yQICFiHr4qtd2+oF1qpc1TPs86IgJ7JKJEd0D+Hasq5b2ihdhX3DTZ+OSjumXOBJjmee1xOMjlM2bnVKzjfssN
x-ms-exchange-antispam-messagedata: lhTnRDbgsCgYcNCbNaNNyFL2BgShQ55WRn48rzM9HGc+nzRvgr3rC8VYKwVW3iFzC8yYzt1qHjMF87u4VO1f4ichlEG6zOz7oDqwFrBD4H3REw1kqi9Ll1aFKnD6wxR51iwTPiAh2/hvuYX2qzaMvA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 7543e0d7-017d-4823-ee4f-08d7c786b9db
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:49.3113 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DGNhqdb1NOqOnEMnUhqkk/SCwfKaBU4H+7cxBPHLT+w7LA3BumuzYhPcW9919ImQiJMvAdXqO6fY02PP2oVC3AdtAfixAsz7E2kgaOUA15Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124311_866260_A3F95AC5 
X-CRM114-Status: GOOD (  11.82  )
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

Create a SPI NOR manufacturer driver for Catalyst chips, and move the
Catalyst definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile   |  1 +
 drivers/mtd/spi-nor/catalyst.c | 29 +++++++++++++++++++++++++++++
 drivers/mtd/spi-nor/core.c     |  8 +-------
 drivers/mtd/spi-nor/core.h     |  1 +
 4 files changed, 32 insertions(+), 7 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/catalyst.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index 33b6f834a14f..cd8d95b727c9 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -2,6 +2,7 @@
 
 spi-nor-objs			:= core.o sfdp.o
 spi-nor-objs			+= atmel.o
+spi-nor-objs			+= catalyst.o
 spi-nor-objs			+= eon.o
 spi-nor-objs			+= esmt.o
 spi-nor-objs			+= everspin.o
diff --git a/drivers/mtd/spi-nor/catalyst.c b/drivers/mtd/spi-nor/catalyst.c
new file mode 100644
index 000000000000..011b83e99e95
--- /dev/null
+++ b/drivers/mtd/spi-nor/catalyst.c
@@ -0,0 +1,29 @@
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
+static const struct flash_info catalyst_parts[] = {
+	/* Catalyst / On Semiconductor -- non-JEDEC */
+	{ "cat25c11", CAT25_INFO(16, 8, 16, 1,
+				 SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
+	{ "cat25c03", CAT25_INFO(32, 8, 16, 2,
+				 SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
+	{ "cat25c09", CAT25_INFO(128, 8, 32, 2,
+				 SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
+	{ "cat25c17", CAT25_INFO(256, 8, 32, 2,
+				 SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
+	{ "cat25128", CAT25_INFO(2048, 8, 64, 2,
+				 SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
+};
+
+const struct spi_nor_manufacturer spi_nor_catalyst = {
+	.name = "catalyst",
+	.parts = catalyst_parts,
+	.nparts = ARRAY_SIZE(catalyst_parts),
+};
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index c89d3000c46e..99da7d8e9097 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -1963,13 +1963,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* Catalyst / On Semiconductor -- non-JEDEC */
-	{ "cat25c11", CAT25_INFO(  16, 8, 16, 1, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
-	{ "cat25c03", CAT25_INFO(  32, 8, 16, 2, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
-	{ "cat25c09", CAT25_INFO( 128, 8, 32, 2, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
-	{ "cat25c17", CAT25_INFO( 256, 8, 32, 2, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
-	{ "cat25128", CAT25_INFO(2048, 8, 64, 2, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
-
 	/* Xilinx S3AN Internal Flash */
 	{ "3S50AN", S3AN_INFO(0x1f2200, 64, 264) },
 	{ "3S200AN", S3AN_INFO(0x1f2400, 256, 264) },
@@ -1985,6 +1978,7 @@ static const struct flash_info spi_nor_ids[] = {
 
 static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_atmel,
+	&spi_nor_catalyst,
 	&spi_nor_eon,
 	&spi_nor_esmt,
 	&spi_nor_everspin,
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index fa65fbb6e0d2..aaa2a460a159 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -168,6 +168,7 @@ struct spi_nor_manufacturer {
 
 /* Manufacturer drivers. */
 extern const struct spi_nor_manufacturer spi_nor_atmel;
+extern const struct spi_nor_manufacturer spi_nor_catalyst;
 extern const struct spi_nor_manufacturer spi_nor_eon;
 extern const struct spi_nor_manufacturer spi_nor_esmt;
 extern const struct spi_nor_manufacturer spi_nor_everspin;
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
