Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 422D5184F7E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:50:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RPXLCvA1FR6eSbgNoqfzuvQLz+zIdEdLvAaV4BVsShg=; b=Ztb3Tbt3isFv+d
	1n3N+v5Ynaf9+6qlvGiBi2Ws1k3UPsWhSI/g9aFdegRYBLOxbYpK6LIwM/7KTB/9ob4wFjKM4DnOe
	zIbMe0RhbHcsXDwZZ8psnQGouYH1n9tbM2Xx45NaBRAShK5xxObW2uRWqpn3H2/Lh/ac462juTh4S
	xuQNAjmF4arWh4eevlcNzpwFdqdk0vq3I9VgfNnqDKwd5Jf12iVkvrrOZpOfxnPOUz8OO1iq7FYv6
	fOMNNBsXdWO2iDWK9c0Uq7Xx8szYVdcb1dHztq6tiIK+rdzQpmtp7urkulOmijlU4CnxtOzvmoGnu
	mq1aXszl9bEIPLGI28QA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqJe-0006LS-Qe; Fri, 13 Mar 2020 19:49:54 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCq-0008LF-Cm; Fri, 13 Mar 2020 19:42:56 +0000
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
IronPort-SDR: aboUV9t57jJs5PhoPbJ9EQ7ts2h5tIBcBI6RemY4SIJu2kDi+wSwUuUIma1p7VzVUp4OJdapJU
 0bRBNauA6wXe/UMBHGPbTbZh4OxkFjv6CHa30Y5c1AUf/s7vGPq1GoBImLuWKz7pK/emS3Vdnj
 C+louIlfdhPbtTZKlDWHCOrIwJ8B3RFEK3rhIFq+KAlpyOnwP2+pFlQ8Vpq1/kIDUJcQ/sKm2I
 DkwMmfETCpyvc56u+cwKK9dUHmppcYU2Ro+ce7qCm1248/HUmrPX31xR1da5OdDSTmHqg6Tv65
 AuQ=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; 
   d="scan'208";a="5602927"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:51 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:46 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 13 Mar 2020 12:42:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S3b7hQc/85ClGDl+rUGtE0bEXQ8tf8keRqIKHZ987CNcnujH1fEOGQTlT3hti48lDN309ObiToQWBTkO5RQ8vT74QtqNz+BMf/lKxNzetbbjKMDh4uHwwEzsmX5KS8xp79B2Ha5XI/zKnrQFf6Djn4+5Qo7xG5KcazkmP5FJcBCc00jsaflV9QV5ROPabOuT7WjuHE/3YBuB1C+Ldj4mJSAUAkFImTv5LkKwETf9yKvISC/HHS2wHjklWx4CfzFz9tgi2MNN5qwmPndO/85ulBOfRoDNVZpQZxcLxq/FPAYfNLXfKg5xc+YrPu51084kG+uPKChjODkkVHAu+TeRvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6mG46Dyyz3HSTrOCn7VbaqeMIJkXcnUZ0LnBpsyFPfw=;
 b=eKHZn2CdDu1LAKjsdXXQkRJ6/XY3TWfY0UkSRZlHxPfBkBfeNWWyJZrpj/5AoLxd597d57CZFTd39AxlYQpQw/CuE+ZZYZt15chFfOfOlCLidXBYOQeO6ssOXE9cLm+JP1IDyQWQCx5EDAempDsvRWWqoOSUOMKKdUSqW9kUOMkThUs5gtW9UQCDDgdZ5QaD9WGRw0V28fuF96njMwIg/hM7XR17Ab/BZPaMfLUIveg9NjAJpXSw0oSDRihINXGhvz5O4pNjJnmmYgYYKYhCc2YZgFP7nf5MROK0hnJIUc2kyZDoA6C9XLGwC4Gfenj4tRdsSqxrMUxiiquX+cc8Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6mG46Dyyz3HSTrOCn7VbaqeMIJkXcnUZ0LnBpsyFPfw=;
 b=D97zHwAA3xHe8zvJbxQHCWg9YaNA5w11uWl4N6msbiXrKf84JPnecfeAyr2zhp2i+8Vhh3xpxKHGekbc+zz+kXF9VsDNVlq5K4yid3eO7iEA/sLQJhUCpV4FVoxvhpmeAyXUKkihznWwYNK8MK5fX+EDHy9RBXUIvWgrZUHvWWw=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:50 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:49 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 12/25] mtd: spi-nor: Move GigaDevice bits out of core.c
Thread-Topic: [PATCH v2 12/25] mtd: spi-nor: Move GigaDevice bits out of core.c
Thread-Index: AQHV+W+QSPOuame32EKDdLflumdU1A==
Date: Fri, 13 Mar 2020 19:42:43 +0000
Message-ID: <20200313194130.342251-13-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c9b449fa-e06c-4c7e-10c8-08d7c786b69a
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB1099153B51609917F04DD5F0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
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
x-microsoft-antispam-message-info: NLE/5KTwMAuuz6C8I3GjPyS8xAa4irIbQt2KOM9fFfpmqVjlaZAqRJUM15Fj56uKZ9DKWtLPoBcnP5MWjG9CJ0TnUWMVaPXuntH9cjNLk5c+ZjMxR+Usk8Svv0DxieVpgSSKEcabms03vE42x+4+B/7aDEfh1t1XEL3f5RVz0lEdz8qK9+lQQgx/QtsZrry2qrt8zHakCGfXWzdwV3j6Xh4Uwr7Kc0iiSsnYJBNF1mDOZ/jXfCQrhpUeiKwh7NEfzdLbcP2fM8Oe90fq3diRlG/UOf+i++Jse3hmKh9J46iGL6yz3ZBW5iaoOxyD53RWpgbv9uSewrNfRujmEWqx0PHbXn22YryCIOKWvInfI9l8XTEBfNdfATMYkePwB8DYktmmA2jjFf+kH1CMaFnXvpKuxAzNf6qgiFbbpepKTvlXe3JYa1eeaBATrqgPqrIC
x-ms-exchange-antispam-messagedata: ITfgREMIRcCm2JcY+27X6eLRyNnhy321XKu12wpOtVhnokelaJYajMj2CpcI81a8ABRFpzUMia6d/dy3qoNA3KBPUL7vF7rwIhBklG8ej4dg6UL8aaaNiTXikl87nBglwa6EbT+mA/UqvOb+NmWm/w==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c9b449fa-e06c-4c7e-10c8-08d7c786b69a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:43.1439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t3th7Agr1UhuycR9FuKHvJcDtxNMreAzpATFi5ZCMNPsSza5YBvVVlbvwdYs5G+Ib0e904cLIxk77wPG3eZfaoOrM7scsdTwli4EfknospI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124252_505721_42D2168C 
X-CRM114-Status: GOOD (  13.01  )
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

Create a SPI NOR manufacturer driver for GigaDevice chips, and move the
GigaDevice definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile     |  1 +
 drivers/mtd/spi-nor/core.c       | 60 +-------------------------------
 drivers/mtd/spi-nor/core.h       |  1 +
 drivers/mtd/spi-nor/gigadevice.c | 59 +++++++++++++++++++++++++++++++
 4 files changed, 62 insertions(+), 59 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/gigadevice.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index ca6222d98b0f..38f704be4b03 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -6,4 +6,5 @@ spi-nor-objs			+= eon.o
 spi-nor-objs			+= esmt.o
 spi-nor-objs			+= everspin.o
 spi-nor-objs			+= fujitsu.o
+spi-nor-objs			+= gigadevice.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 3850c638f95a..236632d15c42 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2054,21 +2054,6 @@ static struct spi_nor_fixups mx25l25635_fixups = {
 	.post_bfpt = mx25l25635_post_bfpt_fixups,
 };
 
-static void gd25q256_default_init(struct spi_nor *nor)
-{
-	/*
-	 * Some manufacturer like GigaDevice may use different
-	 * bit to set QE on different memories, so the MFR can't
-	 * indicate the quad_enable method for this case, we need
-	 * to set it in the default_init fixup hook.
-	 */
-	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
-}
-
-static struct spi_nor_fixups gd25q256_fixups = {
-	.default_init = gd25q256_default_init,
-};
-
 /* NOTE: double check command sets and memory organization when you add
  * more nor chips.  This current list focusses on newer chips, which
  * have been converging on command sets which including JEDEC ID.
@@ -2081,50 +2066,6 @@ static struct spi_nor_fixups gd25q256_fixups = {
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* GigaDevice */
-	{
-		"gd25q16", INFO(0xc84015, 0, 64 * 1024,  32,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"gd25q32", INFO(0xc84016, 0, 64 * 1024,  64,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"gd25lq32", INFO(0xc86016, 0, 64 * 1024, 64,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"gd25q64", INFO(0xc84017, 0, 64 * 1024, 128,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"gd25lq64c", INFO(0xc86017, 0, 64 * 1024, 128,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"gd25lq128d", INFO(0xc86018, 0, 64 * 1024, 256,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"gd25q128", INFO(0xc84018, 0, 64 * 1024, 256,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"gd25q256", INFO(0xc84019, 0, 64 * 1024, 512,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB |
-			SPI_NOR_TB_SR_BIT6)
-			.fixups = &gd25q256_fixups,
-	},
-
 	/* Intel/Numonyx -- xxxs33b */
 	{ "160s33b",  INFO(0x898911, 0, 64 * 1024,  32, 0) },
 	{ "320s33b",  INFO(0x898912, 0, 64 * 1024,  64, 0) },
@@ -2430,6 +2371,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_esmt,
 	&spi_nor_everspin,
 	&spi_nor_fujitsu,
+	&spi_nor_gigadevice,
 };
 
 static const struct flash_info *
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index d094112aa4a2..da88d7e55c76 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -172,6 +172,7 @@ extern const struct spi_nor_manufacturer spi_nor_eon;
 extern const struct spi_nor_manufacturer spi_nor_esmt;
 extern const struct spi_nor_manufacturer spi_nor_everspin;
 extern const struct spi_nor_manufacturer spi_nor_fujitsu;
+extern const struct spi_nor_manufacturer spi_nor_gigadevice;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/gigadevice.c b/drivers/mtd/spi-nor/gigadevice.c
new file mode 100644
index 000000000000..7930e4490dab
--- /dev/null
+++ b/drivers/mtd/spi-nor/gigadevice.c
@@ -0,0 +1,59 @@
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
+static void gd25q256_default_init(struct spi_nor *nor)
+{
+	/*
+	 * Some manufacturer like GigaDevice may use different
+	 * bit to set QE on different memories, so the MFR can't
+	 * indicate the quad_enable method for this case, we need
+	 * to set it in the default_init fixup hook.
+	 */
+	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
+}
+
+static struct spi_nor_fixups gd25q256_fixups = {
+	.default_init = gd25q256_default_init,
+};
+
+static const struct flash_info gigadevice_parts[] = {
+	{ "gd25q16", INFO(0xc84015, 0, 64 * 1024,  32,
+			  SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			  SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "gd25q32", INFO(0xc84016, 0, 64 * 1024,  64,
+			  SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			  SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "gd25lq32", INFO(0xc86016, 0, 64 * 1024, 64,
+			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			   SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "gd25q64", INFO(0xc84017, 0, 64 * 1024, 128,
+			  SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			  SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "gd25lq64c", INFO(0xc86017, 0, 64 * 1024, 128,
+			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			    SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "gd25lq128d", INFO(0xc86018, 0, 64 * 1024, 256,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			     SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "gd25q128", INFO(0xc84018, 0, 64 * 1024, 256,
+			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			   SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "gd25q256", INFO(0xc84019, 0, 64 * 1024, 512,
+			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			   SPI_NOR_4B_OPCODES | SPI_NOR_HAS_LOCK |
+			   SPI_NOR_HAS_TB | SPI_NOR_TB_SR_BIT6)
+		.fixups = &gd25q256_fixups },
+};
+
+const struct spi_nor_manufacturer spi_nor_gigadevice = {
+	.name = "gigadevice",
+	.parts = gigadevice_parts,
+	.nparts = ARRAY_SIZE(gigadevice_parts),
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
