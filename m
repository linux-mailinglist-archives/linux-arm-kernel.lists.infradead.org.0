Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90F57176244
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:17:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZiVx/3zdFGA8Y4QimwJTLzPiumpjIQv/tNuE2UzBffU=; b=R8Sx+TrzCcOMyZ
	J5AXcQIU1/qEDy/wDCKye6O3Vh3o+RD5axixsTUPmZiXQLsa/2CeHJL15fte4qwFGIrwzErvMMk27
	90N0t2RDkHBmraKhMcPhBjrT0USFjm7PwwVm6kRmrsssCyiOAikzMAmnT5ks8zQzMHPJ3QTx2rgiz
	LIE9dJ2XW8c090To3ilq4vK29Ue7Tq+36a5lhiWi8CCBfCwRfSZKEgQys8COVGehqlA7UbwoDUF3G
	AYE7dQIBfJcoAX5s6K5iYfiuSqO97Hzd16vEjxp8U/C7IwqXbsYwyiNJMy25RzW7fUxPh8VPwUl+y
	hW78r/OerM6G6RMKnrtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pd4-00046x-9a; Mon, 02 Mar 2020 18:17:22 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pUR-0003HZ-TE; Mon, 02 Mar 2020 18:08:29 +0000
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
IronPort-SDR: 1nYaE80exlDZZGoy0sJsLgj6w5RFKPzUPvcZMrsiXcfOfOq4w1ul62zyXFefL6QOBk6uHwr+H+
 /QjG9arlTQ6kC+WE3cNiG820Z1OlUioSklmbl2MKzu8zgeVaIt2HZ6HT5yhF3d2u5qpIdhjq8i
 TF2agwbC/99N+R2fffat39rFDJhjwB2U7g/klXmIS9udMsL4l9OYxX933T8c2ZAsMOAPy9+wXe
 byquWC5DrBRF5L9HYcuxyTbpvvh3bwFs3MuuqJhwyP2dZ85z4L2qnyVwjjWuCerxlZPXAyQ/9s
 blg=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; 
   d="scan'208";a="4204979"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 11:07:59 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 11:07:58 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Mar 2020 11:07:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y/2TdvHXIC1kwkz2uqyRQ0QhqgJLo2UiyKkCj/U2DpI8UwVap2t0RfR3lM1z2d+6O1A7qHGzjV9fQlSBv4Jc6ZZQM06KjmCfgTQKmnoocSVLz77ZlO7ID+wnGy26gg4d70OE1OIe9Zyh/yqvOKdobDGJWVFhu6qzVJwxl6mibC1Qql8S6JAxoiAcAg8FDaQc2JvLITBgJoku3kFFQFqIGWU+lFZwiztW8KOHW26AgRPj7FFNsHcOlSsI0oYM9jjzQQrzj6g7y4jEQ/yCHzt2Rr9OzkA5ZuMbZAzXf5/NdpIC7qet7gEZPsfIOx4xcd9JVJusYTrYY02URU5S0+SSzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zQNxp4/ODycXKKWExtuP8d3tzJEpIVsJwFcPOHPtdiU=;
 b=hSf204sI3UmKSftOHgkOHIH2t27G7PeAoZBEhX2Mly4z8txoGjFdzlRL7jbLbjx440O7k/t4QKD9nQ4XR5qKZba6pwysnkHnvCxO6LgOAWBjixU5d4iXyG9y5J8SU3cfaNc7kn8JTuvCMfwMJjSchUfauXHEqBL6fZT/zulksg9YZ/kuvLf62NOUZ/G1Mbr0ah7ee2KeKJf1ejOHnqjWjLSEF3lfcqf13CBEpdBmwsGXusIj6cpJqJ3MG+iuhhl72vuYtUfGnvVe9gGbpHlD6iH/tp6tWw9Prur++V5yYUIe/aBQFM3g9doGG0aR7T9LuGQOyjb+6TpLUyGGYfXECA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zQNxp4/ODycXKKWExtuP8d3tzJEpIVsJwFcPOHPtdiU=;
 b=mZ77aYJ+eRREU0KWiHW+nEyvFRRz0p6cvIAnlm5iIDFK/B81MiCkxdC/JXOY7G0kh27uwqG+UiQEnxZxi7q5zHNe7NsLOIoiDv7FCjhvowRd0/fXYTT9IHjXtvAW7C8xS6ojy4DXSUZsUX/btA4o2Q9tJpAk01SDK7YcVzl8tmg=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4142.namprd11.prod.outlook.com (2603:10b6:208:135::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 18:07:52 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 18:07:52 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH 12/23] mtd: spi-nor: Move Intel bits out of core.c
Thread-Topic: [PATCH 12/23] mtd: spi-nor: Move Intel bits out of core.c
Thread-Index: AQHV8L19tRI2pepxgUmer4ve1YM+Ww==
Date: Mon, 2 Mar 2020 18:07:51 +0000
Message-ID: <20200302180730.1886678-13-tudor.ambarus@microchip.com>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8ff69d23-3630-49fe-df19-08d7bed4a033
x-ms-traffictypediagnostic: MN2PR11MB4142:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4142EEE16E90847884C1B677F0E70@MN2PR11MB4142.namprd11.prod.outlook.com>
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
x-microsoft-antispam-message-info: QosRsB37Eog11MyfspnZMxAD931GMLMSmhKObsuGSKyRsHc7c5/xOUJR+tfktR5W5Un7kl72PFkeNDyoB3cFt0EkmcHLpydjVapnnAZkxcy6UwE0HCv0XyTXtje4l/ZklQ5/lNGtMk+l8Ofu7ivWOib5dhc0CfBKHcS2QTjzWYGi56F1dSo29ttMKN2lasGDY5MTrzUKgq93I0XobMS/ZX8J47d+YljYZ4eg63rFarsusTZB2eDfUN4SPmqIJ1T25c6zrX8/84KWPtBw/EgnML+xEJcxwW/XaTwCNJ5LA0QnETcH+qfqTmlRdXl2s/J3BCfc1uafMaEYtummZO/uMEejww0tpzziBOTgv8Jcdj8o8/qlShIUKUS0Ldf0jsaJMuvUo/0JibfPZpTGD6GKkK5r0UdVJaCLpi17MaaNUIlSiYcNHepFf4aKPwCqW2KV
x-ms-exchange-antispam-messagedata: Z1XhK57Te0p/eUDsW3EYUAExzGn0IbcUYjLe33QTtZ2fUpzX163F1HgRjHPu7hI6IeHC2I+xWLwBsyTDmxZqW/+hsx/1M9MqTc6p96sTvh6x03nW95RhGvIV6YrRc9rwLrrU3751VZ9d3ldUNxhJYw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ff69d23-3630-49fe-df19-08d7bed4a033
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 18:07:51.5759 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yete0sVdh66DphObvTLX9PwnrmZ13j7W97BxCdmO0Q8vCXSf9A8Qy+CFvR9vfOr9UOURlRzVKRUMwFODCpcIsOr3HFxhQ+SC/t+mJNSBTc0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_100828_012139_ECC0422D 
X-CRM114-Status: GOOD (  11.83  )
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

Create a SPI NOR manufacturer driver for Intel chips, and move the
Intel definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile |  1 +
 drivers/mtd/spi-nor/core.c   | 15 +--------------
 drivers/mtd/spi-nor/core.h   |  1 +
 drivers/mtd/spi-nor/intel.c  | 32 ++++++++++++++++++++++++++++++++
 4 files changed, 35 insertions(+), 14 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/intel.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index 38f704be4b03..8eb741a27fa7 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -7,4 +7,5 @@ spi-nor-objs			+= esmt.o
 spi-nor-objs			+= everspin.o
 spi-nor-objs			+= fujitsu.o
 spi-nor-objs			+= gigadevice.o
+spi-nor-objs			+= intel.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 8520423b1104..2f47852a3a01 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2064,11 +2064,6 @@ static struct spi_nor_fixups mx25l25635_fixups = {
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* Intel/Numonyx -- xxxs33b */
-	{ "160s33b",  INFO(0x898911, 0, 64 * 1024,  32, 0) },
-	{ "320s33b",  INFO(0x898912, 0, 64 * 1024,  64, 0) },
-	{ "640s33b",  INFO(0x898913, 0, 64 * 1024, 128, 0) },
-
 	/* ISSI */
 	{ "is25cd512",  INFO(0x7f9d20, 0, 32 * 1024,   2, SECT_4K) },
 	{ "is25lq040b", INFO(0x9d4013, 0, 64 * 1024,   8,
@@ -2370,6 +2365,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_everspin,
 	&spi_nor_fujitsu,
 	&spi_nor_gigadevice,
+	&spi_nor_intel,
 };
 
 static const struct flash_info *
@@ -3149,11 +3145,6 @@ static int spi_nor_setup(struct spi_nor *nor,
 	return nor->params.setup(nor, hwcaps);
 }
 
-static void intel_set_default_init(struct spi_nor *nor)
-{
-	nor->flags |= SNOR_F_HAS_LOCK;
-}
-
 static void issi_set_default_init(struct spi_nor *nor)
 {
 	nor->params.quad_enable = spi_nor_sr1_bit6_quad_enable;
@@ -3192,10 +3183,6 @@ static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
 {
 	/* Init flash parameters based on MFR */
 	switch (JEDEC_MFR(nor->info)) {
-	case SNOR_MFR_INTEL:
-		intel_set_default_init(nor);
-		break;
-
 	case SNOR_MFR_ISSI:
 		issi_set_default_init(nor);
 		break;
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index c44802a05532..c4c23efaa68b 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -173,6 +173,7 @@ extern const struct spi_nor_manufacturer spi_nor_esmt;
 extern const struct spi_nor_manufacturer spi_nor_everspin;
 extern const struct spi_nor_manufacturer spi_nor_fujitsu;
 extern const struct spi_nor_manufacturer spi_nor_gigadevice;
+extern const struct spi_nor_manufacturer spi_nor_intel;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/intel.c b/drivers/mtd/spi-nor/intel.c
new file mode 100644
index 000000000000..d8196f101368
--- /dev/null
+++ b/drivers/mtd/spi-nor/intel.c
@@ -0,0 +1,32 @@
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
+static const struct flash_info intel_parts[] = {
+	/* Intel/Numonyx -- xxxs33b */
+	{ "160s33b",  INFO(0x898911, 0, 64 * 1024,  32, 0) },
+	{ "320s33b",  INFO(0x898912, 0, 64 * 1024,  64, 0) },
+	{ "640s33b",  INFO(0x898913, 0, 64 * 1024, 128, 0) },
+};
+
+static void intel_default_init(struct spi_nor *nor)
+{
+	nor->flags |= SNOR_F_HAS_LOCK;
+}
+
+static const struct spi_nor_fixups intel_fixups = {
+	.default_init = intel_default_init,
+};
+
+const struct spi_nor_manufacturer spi_nor_intel = {
+	.name = "intel",
+	.parts = intel_parts,
+	.nparts = ARRAY_SIZE(intel_parts),
+	.fixups = &intel_fixups,
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
