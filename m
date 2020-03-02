Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD30317622C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:14:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WjF9GyEUhvKKoJGwqLilJbjcCDnJuYhz6v03rHHQG1I=; b=h0k812JuKwbVHC
	oTpnPnBZdun7MWaWoesmQRi7S5TH0ROH020uwPz4YeiC00tUTi2e+eD9aaygA4Lv8I+79SnqExPiy
	3pINOVGzkZOAGZ8DtDB3eDMVnMlDGnwDmttknMhlY8t5tnUKA7X308NAd7onV3353lVX/Lf8fgfMH
	MiGoKcfM60Uci7TZgqHPPoG5/G3Z04gFI05CzEzKhr1Q7jok0ptuKcwUt2A1Yia9F0W/olmrLucnv
	Np5bHgKaUiC3zG6xUyT9Px63vRMySFXFRjftuGdNPI5YBh8ezsBJjTI5PlaF3Y6wDtNZ9RZjFfCOW
	VxskqIDzUQlhJjU2JR3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8paG-0000am-Dl; Mon, 02 Mar 2020 18:14:28 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pU1-0002vi-NR; Mon, 02 Mar 2020 18:08:08 +0000
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
IronPort-SDR: D1FpkcxzaQiZ0n2nlIrJoRSon9lCUUG2Qy2BIBRoEaDqa+TFUAur0EHwjCvTEbvaFUXgHRXWrj
 O/jHB2I5BXWQIyKl0NlATo8Yzd2cJnrphFmCibOgos3Vcv0pIACv61G8rTZOTVW7HqPJIG8ak9
 il+n+U3wkbDUOJ9LOGL6qQ5eeBk/EnKd4cn9KOrgDGASAZLis4ZcwZd6pq2HmSLlskhAMS6Yme
 fbGg+I6NoJxd1/KX51yvGFFVugAj4GNQs/lSyy76auz/CsS+0OyI4vjEUxjJ2zC3Je5shxt8lb
 AHQ=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; 
   d="scan'208";a="4204955"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 11:07:55 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 11:08:08 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Mar 2020 11:07:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gakz15OUFMVAjmHQn8rjHDguQwABQ3waMf/+24rdL3rBMK6qAThAso7kFyhHllsvGc5lUWvyizFG7nQOFIVCRgdyuNwBFJOOiM97ax7E/jO7lqwt7HU4jSQgZhpoUqy/X35te8slkvBSp8Aha90IUozsW71Lgbcrei1w2iXuHZSGw/3ucZI9lG7u5+iBY+9B7mKidnh8b0J2FTQzg5hjaWtlPmR5GKQZztj2Eulqhz5JatPM68qy8/lya0ad2cgaww2+zNJRaxn6/U5dO0Gvqgq68G+wmdFAhFeZK7ihNvO3wql625s6kwNps/qC8vQD2MOIh8nb/7Y74MJJVIXklA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wsZsP29gg3Xo0UeBFVlT03ptSKcfz0ZHDBXWCEEKbwg=;
 b=e7G3z2KnaARmBepYgP/8j6H4p/k/dCw3Yy59T1rJGs0y3Nsav9RifsSa/vpxoeRCFHc64ZPHFBWc3tBE8Volq2YePwGdVsR4YIt5PjgXKh5hZ8jyDwQvSZlPaZt5QU0bplBGCEs6xx5fbdScQhT3uSU3oN51JavaDSb1H1cQNtpaBHM5s/b4CwobRA1t5VDEKlSyViRf+c0jE2s5c4QFxCn/OL0RBYIz8s8afR1Ti2Jt6Wq7nBcBfsh+HI7x9P2c8gTwRFaKDu1biyKKMyAqrH/uhlo7BBjrjGOQXQEwhHEjQ3CJdUXpERdQROGKWUqZrFp0vGvvydLTv4AUHNFhXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wsZsP29gg3Xo0UeBFVlT03ptSKcfz0ZHDBXWCEEKbwg=;
 b=iHjB61M5LmfzG6eZpygDccDFQKIEBeCcgwhdZmXCiwoO/n6Sx5fc98xgCMcsvI6OiRwoGvTjx5zctS9A+sMr9nsTiwmxbVKyIjQrcQMU+XCQLeQ0R5TogrOz6RK0ICZeZ2tbwBEE++WLrgmgJTr4cut6EA13pG9UcisR4cOPxaE=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4142.namprd11.prod.outlook.com (2603:10b6:208:135::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 18:07:48 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 18:07:48 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH 06/23] mtd: spi-nor: Move Atmel bits out of core.c
Thread-Topic: [PATCH 06/23] mtd: spi-nor: Move Atmel bits out of core.c
Thread-Index: AQHV8L17gM5lW3tn1E2no72hayeDYQ==
Date: Mon, 2 Mar 2020 18:07:48 +0000
Message-ID: <20200302180730.1886678-7-tudor.ambarus@microchip.com>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c2068276-36ed-4435-54e5-08d7bed49dc2
x-ms-traffictypediagnostic: MN2PR11MB4142:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4142775DD6B7934538256806F0E70@MN2PR11MB4142.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
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
x-microsoft-antispam-message-info: 82oui1pEy9UD7502+Ou0rb/osSgOO+d0KAUojwwam/6hPMll5OJ/p9JGp2BEgkodCx8koCE+2KGIBB0OAlX/asoONq2rAF/ptq1InsXe+H5new07EcCW3dYknbp82yNH1CvIddjCG8Za+ja/mXsGMhJPfvMX/jepPKBcjck4EDdQUU8Rs3OdlRKNvHnuhNLtX8Oyjr1U1/CWzsMuWk27Kphb4G050RIajz/svZdI8G76t33N6OtC6HDiZ7kaAPoeL2w+yWc1STjj1PK1IAkPN2oe2/pC3JVo/CtMWtfvyKOLWHTgHIvSMZucuMpdOES636Ll6zd5mt4EzZKyji/D1GQ94gozMb6lbcTb+xPo+6e49wRIPNBtjdmXJT1OOoDERxPhUOcFtmIqpxKNmViysZcASUf7oNGOuU7s0tropOFc5uWNdRCROV0rxcmiOR6p
x-ms-exchange-antispam-messagedata: 8HckLX77RboUqqouMJEKOOYrt3NiOml9ISOfcjKrjPbEiIxq0amFQLgMF+b3NAH5GyN2djfhHh5ilVK+rd/l2qy8ui8nR7LkuXju3gEn4PEvQweNvK8hwLzltfzJcKnwlwiW1k7RpMMiJcn2kg+6sw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c2068276-36ed-4435-54e5-08d7bed49dc2
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 18:07:48.3228 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dQGXY7hAC8Azbaye2AH6GntDPb9Q+3SXOFbYi23idKFxXFljgpIfE6liKxf/jcyguuooU0dT09JZcXno6vXLB8dTnHiqFWNlCUHisKdwjpo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_100802_228087_907BDB8B 
X-CRM114-Status: GOOD (  11.98  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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
index d41ef1795707..45d370229e0a 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2079,25 +2079,6 @@ static struct spi_nor_fixups gd25q256_fixups = {
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
@@ -2472,7 +2453,9 @@ static const struct flash_info spi_nor_ids[] = {
 	{ },
 };
 
-static const struct spi_nor_manufacturer *manufacturers[0];
+static const struct spi_nor_manufacturer *manufacturers[] = {
+	&spi_nor_atmel,
+};
 
 static const struct flash_info *
 spi_nor_search_part_by_id(const struct flash_info *parts, unsigned int nparts,
@@ -3251,11 +3234,6 @@ static int spi_nor_setup(struct spi_nor *nor,
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
@@ -3299,10 +3277,6 @@ static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
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
index 89b8dd1c8213..505e580add68 100644
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
 int spi_nor_en4_ex4_set_4byte(struct spi_nor *nor, bool enable);
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
