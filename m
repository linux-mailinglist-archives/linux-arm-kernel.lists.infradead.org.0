Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 796EE184FCC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:59:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNnl0WspuYUQg7177/Ud5aSGSq5be7J3I5D72IWETzc=; b=gYAw50A3gWGnPu
	zj/F01OnBdDKfnBFyPmiXTW8l6FV+xojb+tnBIOQfBgmlB6ijT0LTzJE856XSX6fvJQqqki0s6PnO
	Da6+zO5XD7to0tQd7+uH3F4pnHcH1D/9ktG828/3GzZllZDkkMvmQNgr+kDN9wyTKQ+tPCl5a3jTT
	TMb/qN5B7Q8KtU543wZFex6zyTBgLA6yBUabXShhSnf1X0hEcT57oTCJfpJflzkERFY4Z6OIekf13
	yWCal0ZWkbCmDHwT/RQBQDtPYSR25r+3FB54yXSIf1efeLih7McK+VdxO9ePxkGbS89xuY5vx88Hb
	w28EbDlysmtSOEHLNoQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqSo-0008KN-9F; Fri, 13 Mar 2020 19:59:22 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqD8-0008S7-VA; Fri, 13 Mar 2020 19:43:14 +0000
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
IronPort-SDR: ikV568Wu5C5+uH4yDKbIVJVP1wfduuVhk4vKthKvZRSFMXtaPhnisYcodSeeRHs/1s82imWTV0
 TMHUbddzyfNlBASQDNaY7K93L+iw5jCLx4MZiLQ7yyMcV8VDYvuZn22swDDQrQ4HNfvFpU65n/
 pdfKiWjpvROzM/UUxBZH0mW1PocSBmtzjOj4smSGVRSxg6I9PVdrqqYERez8N4I/P6R/kmvp57
 A+LtuEqj+qa44POIqKg8RrCjgiBD9dhSwNiL/8WqVM6MyOL1NB/opzZ8uGRpEl1yt1JTJU+wvw
 7N0=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="67134846"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:43:00 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:55 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 12:42:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nAPVTnqa2yaWm6CIXKDLBAvBPGNE2XdwCDQIQ4Oorb4c1nUwAn8Joqwqim/0ongpNgA0zL/eSYnEvnhVQQi4hYNwuqnr8kV+9tZaCpKFoOgIjupPq/u7Z5NTPFUAigWd8roza6KGj2S0OkUFeI3wHnZvDAAxu3i0djv7iRCyE3s+bZQIEJJk/qOZb7gZs/PCpqstrahg6b+8vsTumVMGnJJYtl/ilgK+wz3uTOQ7vpvN4gteR27FVzCF2heR9edXdhcgIKFKeNRlikrLF/UROgjLcQG8WvFr2M/uWeiu2sG9tBFYNml4W50AfjxNxudPBKYzDzJdqvdfd7JvEEmulg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zN20v7wnZ7h0QsT1JbC6Idp5ab+12siBYc9gBzlhkSo=;
 b=OvNAwLANFSfN/CRHYzIJEA4TvTGl5uZBQr4nl/vO24yIsPfViTxpmJuuNF30vYkKzrEuG4SLVYdbpIfr1ldlzxpC5klL/y/Yc+FJjDgiOfQ1mDJfpTEl0x0ivtWwZeqHMzscxjq3yZ3HjicFGOe03wu0xKS+bK2BzIUCVnvJSApZS0QDcfd/1fcb9bDVLsx2SgMolMktrZ+jgsQ94opN8ndYuZij+4cpYvPUiGO/cPqKPHqQ9tYMaW/bSXM2LDyoSjEBIUQ2uCIOSgaAO4qS8KynFgVXZ+rMzUXFkkK2FT6NnFMJ+bS5zxb/LUsuwLzDoGHMcInU/1OleMLyG01TSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zN20v7wnZ7h0QsT1JbC6Idp5ab+12siBYc9gBzlhkSo=;
 b=ohDzMPDiywbPC25SVrg4gUoXvtRRC8OFNH4KZofqQSml+wjrW+K/sjDDIiEx99uC6PuUf3amIuZS28SveUr8kUoDsBYweY4KYWg6eoFsVFop1E+o43zLgQZHmUs8tDJknkt+gNw/6dFhkyOlN5qJCvhoJ7V6ccYTKcL3+diV/P4=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:54 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:54 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 19/25] mtd: spi-nor: Move Winbond bits out of core.c
Thread-Topic: [PATCH v2 19/25] mtd: spi-nor: Move Winbond bits out of core.c
Thread-Index: AQHV+W+TiBF52BMdQ0+uE6txgkBmbw==
Date: Fri, 13 Mar 2020 19:42:48 +0000
Message-ID: <20200313194130.342251-20-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f89e10d4-51a9-498b-2dd2-08d7c786b97a
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB10FD03F87D7BAD1EEE76E2F0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39860400002)(396003)(366004)(376002)(199004)(478600001)(54906003)(107886003)(6512007)(110136005)(26005)(186003)(6486002)(4326008)(2616005)(316002)(71200400001)(6666004)(6506007)(86362001)(36756003)(8676002)(5660300002)(2906002)(30864003)(66476007)(66446008)(66556008)(76116006)(64756008)(91956017)(66946007)(1076003)(81166006)(81156014)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYASPR01MB10;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: o5znUFsSoNXYi5KpyZEGB9cw/WkwEbIJFqh9qtXEQNQw0Js62wurwf0E+ET3QaZHKK23FLKw6evoG1t4ikh1tGyOKTrQHZ6kANEJLx9cFmjErmH3a9LLtJ3KHeAHJVe1xl0be7OG3hIzN/Z3KqocM5iuEb+OjY9BTqAohjyBs53XmFiNLx1hf+nJIg594BI1XUk7ziA2Y3usOcZxORNQwzMRl7zQN6virY2TDFJJTlXB91sX9cXgLPGnJVHnOQ2+p24C7L3CgW28dY+pSsIJQJlHR07K9X2fGxGpuSZNkt9W7GWB31w+0Y/vDd9NVa+10ADZDcvGP2e64IpuDicTyQlmpFjifRJO6hoB1jTWBAEa5hGNEI10Ux608OY1x9le9M/AUGmK6+lh5AszgWnhc7/iBJi2DmCtUGYzKD5AD0VGzRtL3xM8hIJPB8VbSvmi
x-ms-exchange-antispam-messagedata: Yq8QQW1CP6hKsGTnrCmru6Iq1kKo+eeLTIsCGRlbuVLp4djcnHUECptPkeJV0RviQp50q4zPWTbrnP8UnBNpGwYJ/hHcyriXszb1UwvcXrte/JxaVaR2BR4lTEOtduGNda9Eh9zs+DnLrfoHHwpy0w==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f89e10d4-51a9-498b-2dd2-08d7c786b97a
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:48.6527 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /yqTCU5TLgtw93By3aPzu2oBMQlE5Zg4nZfdK05LcXfWijhWloHT9fd1xcd2h3lqjYJKBUSQolZMAJWHzD4joffHlhaQj485wBO/41hfRYM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124311_138822_028DF45D 
X-CRM114-Status: GOOD (  13.96  )
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

Create a SPI NOR manufacturer driver for Winbond chips, and move the
Winbond definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile  |   1 +
 drivers/mtd/spi-nor/core.c    | 115 +---------------------------------
 drivers/mtd/spi-nor/core.h    |   1 +
 drivers/mtd/spi-nor/winbond.c | 112 +++++++++++++++++++++++++++++++++
 4 files changed, 115 insertions(+), 114 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/winbond.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index ef7afc654a15..33b6f834a14f 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -13,4 +13,5 @@ spi-nor-objs			+= macronix.o
 spi-nor-objs			+= micron-st.o
 spi-nor-objs			+= spansion.o
 spi-nor-objs			+= sst.o
+spi-nor-objs			+= winbond.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index c81eac6e9731..c89d3000c46e 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -465,38 +465,6 @@ int spi_nor_write_ear(struct spi_nor *nor, u8 ear)
 	return ret;
 }
 
-/**
- * winbond_set_4byte_addr_mode() - Set 4-byte address mode for Winbond flashes.
- * @nor:	pointer to 'struct spi_nor'.
- * @enable:	true to enter the 4-byte address mode, false to exit the 4-byte
- *		address mode.
- *
- * Return: 0 on success, -errno otherwise.
- */
-static int winbond_set_4byte_addr_mode(struct spi_nor *nor, bool enable)
-{
-	int ret;
-
-	ret = spi_nor_set_4byte_addr_mode(nor, enable);
-	if (ret || enable)
-		return ret;
-
-	/*
-	 * On Winbond W25Q256FV, leaving 4byte mode causes the Extended Address
-	 * Register to be set to 1, so all 3-byte-address reads come from the
-	 * second 16M. We must clear the register to enable normal behavior.
-	 */
-	ret = spi_nor_write_enable(nor);
-	if (ret)
-		return ret;
-
-	ret = spi_nor_write_ear(nor, 0);
-	if (ret)
-		return ret;
-
-	return spi_nor_write_disable(nor);
-}
-
 /**
  * spi_nor_xread_sr() - Read the Status Register on S3AN flashes.
  * @nor:	pointer to 'struct spi_nor'.
@@ -1995,73 +1963,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* Winbond -- w25x "blocks" are 64K, "sectors" are 4KiB */
-	{ "w25x05", INFO(0xef3010, 0, 64 * 1024,  1,  SECT_4K) },
-	{ "w25x10", INFO(0xef3011, 0, 64 * 1024,  2,  SECT_4K) },
-	{ "w25x20", INFO(0xef3012, 0, 64 * 1024,  4,  SECT_4K) },
-	{ "w25x40", INFO(0xef3013, 0, 64 * 1024,  8,  SECT_4K) },
-	{ "w25x80", INFO(0xef3014, 0, 64 * 1024,  16, SECT_4K) },
-	{ "w25x16", INFO(0xef3015, 0, 64 * 1024,  32, SECT_4K) },
-	{
-		"w25q16dw", INFO(0xef6015, 0, 64 * 1024,  32,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{ "w25x32", INFO(0xef3016, 0, 64 * 1024,  64, SECT_4K) },
-	{
-		"w25q16jv-im/jm", INFO(0xef7015, 0, 64 * 1024,  32,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{ "w25q20cl", INFO(0xef4012, 0, 64 * 1024,  4, SECT_4K) },
-	{ "w25q20bw", INFO(0xef5012, 0, 64 * 1024,  4, SECT_4K) },
-	{ "w25q20ew", INFO(0xef6012, 0, 64 * 1024,  4, SECT_4K) },
-	{ "w25q32", INFO(0xef4016, 0, 64 * 1024,  64, SECT_4K) },
-	{
-		"w25q32dw", INFO(0xef6016, 0, 64 * 1024,  64,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"w25q32jv", INFO(0xef7016, 0, 64 * 1024,  64,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"w25q32jwm", INFO(0xef8016, 0, 64 * 1024,  64,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
-	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128, SECT_4K) },
-	{
-		"w25q64dw", INFO(0xef6017, 0, 64 * 1024, 128,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"w25q128fw", INFO(0xef6018, 0, 64 * 1024, 256,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{
-		"w25q128jv", INFO(0xef7018, 0, 64 * 1024, 256,
-			SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
-	},
-	{ "w25q80", INFO(0xef5014, 0, 64 * 1024,  16, SECT_4K) },
-	{ "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, SECT_4K) },
-	{ "w25q128", INFO(0xef4018, 0, 64 * 1024, 256, SECT_4K) },
-	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512,
-			  SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			  SPI_NOR_4B_OPCODES) },
-	{ "w25q256jvm", INFO(0xef7019, 0, 64 * 1024, 512,
-			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "w25q256jw", INFO(0xef6019, 0, 64 * 1024, 512,
-			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "w25m512jv", INFO(0xef7119, 0, 64 * 1024, 1024,
-			SECT_4K | SPI_NOR_QUAD_READ | SPI_NOR_DUAL_READ) },
-
 	/* Catalyst / On Semiconductor -- non-JEDEC */
 	{ "cat25c11", CAT25_INFO(  16, 8, 16, 1, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
 	{ "cat25c03", CAT25_INFO(  32, 8, 16, 2, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
@@ -2096,6 +1997,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_st,
 	&spi_nor_spansion,
 	&spi_nor_sst,
+	&spi_nor_winbond,
 };
 
 static const struct flash_info *
@@ -2789,11 +2691,6 @@ static int spi_nor_setup(struct spi_nor *nor,
 	return nor->params.setup(nor, hwcaps);
 }
 
-static void winbond_set_default_init(struct spi_nor *nor)
-{
-	nor->params.set_4byte_addr_mode = winbond_set_4byte_addr_mode;
-}
-
 /**
  * spi_nor_manufacturer_init_params() - Initialize the flash's parameters and
  * settings based on MFR register and ->default_init() hook.
@@ -2801,16 +2698,6 @@ static void winbond_set_default_init(struct spi_nor *nor)
  */
 static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
 {
-	/* Init flash parameters based on MFR */
-	switch (JEDEC_MFR(nor->info)) {
-	case SNOR_MFR_WINBOND:
-		winbond_set_default_init(nor);
-		break;
-
-	default:
-		break;
-	}
-
 	if (nor->manufacturer && nor->manufacturer->fixups &&
 	    nor->manufacturer->fixups->default_init)
 		nor->manufacturer->fixups->default_init(nor);
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index e49a2200a90d..fa65fbb6e0d2 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -180,6 +180,7 @@ extern const struct spi_nor_manufacturer spi_nor_micron;
 extern const struct spi_nor_manufacturer spi_nor_st;
 extern const struct spi_nor_manufacturer spi_nor_spansion;
 extern const struct spi_nor_manufacturer spi_nor_sst;
+extern const struct spi_nor_manufacturer spi_nor_winbond;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/winbond.c b/drivers/mtd/spi-nor/winbond.c
new file mode 100644
index 000000000000..3f8c568091d3
--- /dev/null
+++ b/drivers/mtd/spi-nor/winbond.c
@@ -0,0 +1,112 @@
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
+static const struct flash_info winbond_parts[] = {
+	/* Winbond -- w25x "blocks" are 64K, "sectors" are 4KiB */
+	{ "w25x05", INFO(0xef3010, 0, 64 * 1024,  1,  SECT_4K) },
+	{ "w25x10", INFO(0xef3011, 0, 64 * 1024,  2,  SECT_4K) },
+	{ "w25x20", INFO(0xef3012, 0, 64 * 1024,  4,  SECT_4K) },
+	{ "w25x40", INFO(0xef3013, 0, 64 * 1024,  8,  SECT_4K) },
+	{ "w25x80", INFO(0xef3014, 0, 64 * 1024,  16, SECT_4K) },
+	{ "w25x16", INFO(0xef3015, 0, 64 * 1024,  32, SECT_4K) },
+	{ "w25q16dw", INFO(0xef6015, 0, 64 * 1024,  32,
+			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			   SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "w25x32", INFO(0xef3016, 0, 64 * 1024,  64, SECT_4K) },
+	{ "w25q16jv-im/jm", INFO(0xef7015, 0, 64 * 1024,  32,
+				 SECT_4K | SPI_NOR_DUAL_READ |
+				 SPI_NOR_QUAD_READ | SPI_NOR_HAS_LOCK |
+				 SPI_NOR_HAS_TB) },
+	{ "w25q20cl", INFO(0xef4012, 0, 64 * 1024,  4, SECT_4K) },
+	{ "w25q20bw", INFO(0xef5012, 0, 64 * 1024,  4, SECT_4K) },
+	{ "w25q20ew", INFO(0xef6012, 0, 64 * 1024,  4, SECT_4K) },
+	{ "w25q32", INFO(0xef4016, 0, 64 * 1024,  64, SECT_4K) },
+	{ "w25q32dw", INFO(0xef6016, 0, 64 * 1024,  64,
+			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			   SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "w25q32jv", INFO(0xef7016, 0, 64 * 1024,  64,
+			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			   SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB)
+	},
+	{ "w25q32jwm", INFO(0xef8016, 0, 64 * 1024,  64,
+			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			    SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "w25x64", INFO(0xef3017, 0, 64 * 1024, 128, SECT_4K) },
+	{ "w25q64", INFO(0xef4017, 0, 64 * 1024, 128, SECT_4K) },
+	{ "w25q64dw", INFO(0xef6017, 0, 64 * 1024, 128,
+			   SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			   SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "w25q128fw", INFO(0xef6018, 0, 64 * 1024, 256,
+			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			    SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "w25q128jv", INFO(0xef7018, 0, 64 * 1024, 256,
+			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			    SPI_NOR_HAS_LOCK | SPI_NOR_HAS_TB) },
+	{ "w25q80", INFO(0xef5014, 0, 64 * 1024,  16, SECT_4K) },
+	{ "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, SECT_4K) },
+	{ "w25q128", INFO(0xef4018, 0, 64 * 1024, 256, SECT_4K) },
+	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512,
+			  SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			  SPI_NOR_4B_OPCODES) },
+	{ "w25q256jvm", INFO(0xef7019, 0, 64 * 1024, 512,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "w25q256jw", INFO(0xef6019, 0, 64 * 1024, 512,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "w25m512jv", INFO(0xef7119, 0, 64 * 1024, 1024,
+			    SECT_4K | SPI_NOR_QUAD_READ | SPI_NOR_DUAL_READ) },
+};
+
+/**
+ * winbond_set_4byte_addr_mode() - Set 4-byte address mode for Winbond flashes.
+ * @nor:	pointer to 'struct spi_nor'.
+ * @enable:	true to enter the 4-byte address mode, false to exit the 4-byte
+ *		address mode.
+ *
+ * Return: 0 on success, -errno otherwise.
+ */
+static int winbond_set_4byte_addr_mode(struct spi_nor *nor, bool enable)
+{
+	int ret;
+
+	ret = spi_nor_set_4byte_addr_mode(nor, enable);
+	if (ret || enable)
+		return ret;
+
+	/*
+	 * On Winbond W25Q256FV, leaving 4byte mode causes the Extended Address
+	 * Register to be set to 1, so all 3-byte-address reads come from the
+	 * second 16M. We must clear the register to enable normal behavior.
+	 */
+	ret = spi_nor_write_enable(nor);
+	if (ret)
+		return ret;
+
+	ret = spi_nor_write_ear(nor, 0);
+	if (ret)
+		return ret;
+
+	return spi_nor_write_disable(nor);
+}
+
+static void winbond_default_init(struct spi_nor *nor)
+{
+	nor->params.set_4byte_addr_mode = winbond_set_4byte_addr_mode;
+}
+
+static const struct spi_nor_fixups winbond_fixups = {
+	.default_init = winbond_default_init,
+};
+
+const struct spi_nor_manufacturer spi_nor_winbond = {
+	.name = "winbond",
+	.parts = winbond_parts,
+	.nparts = ARRAY_SIZE(winbond_parts),
+	.fixups = &winbond_fixups,
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
