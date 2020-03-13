Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F98E184F77
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:49:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6i9/PRpRjpP0sHDsVfSioYtuMCR18ym5z7Zo5GNwqXg=; b=XQZE9ZQkONfJnG
	FwBLhewsl5TSBHt1R+eCDTOBxy48d6Po2MxCeybqIkX+drLWYWD6/PLv+TUvJgPenwQfM5WBpxIaV
	CUs12kXqpRpL/w0PVMncTAbaWvfbCcNXyGyWlJCfZSMkwHpREpualUK2n1KHjgMAmiPCVgdInipUX
	+9DJzRuolnAAsXQ1D1UJ0sYDDpdc+FGPBAuAocE+8j1rUUhk/BXmQdTJtJsZ0122517wWNzBZe5Fu
	M6R7hrAJazOX3R2XxH/4Me8MA96yRqhiVImyarBfNlic2p1bFgRvDUBTnDLLOZf1b2LWFVWXDGRKx
	QzK58s+LwyD125HSm/Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqIb-0005U0-OE; Fri, 13 Mar 2020 19:48:49 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCr-0008KR-8j; Fri, 13 Mar 2020 19:42:55 +0000
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
IronPort-SDR: Mk7JQB3YdCqeFZgQcSq0t9EBN07mx6cqpT9tHe4m6GWFsDxm3b6W+tAOBCR9MpmWoDiIuqsbRn
 vKbmTCRXH3+TQ98F3t6EkfGb5OpkxbcaPIaVgu2IeTQWL7wX6gmYdZKznBI8RurgW9qy1PfeFD
 hTxwQ45E1NxLApjWghgXwtfe1GNUlrIi+DVQPT1vRa96O0Ug5RjPNdqVCvWMJ5Q8kfKyG6dYpv
 rYUo/GcD0v8E1jlVyohYOa2wqz+t8WkiJ+jCxNqBKWhNy31AJIizXFLka1LSBDJztUiLmf+LN6
 cKw=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="68809662"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:53 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:46 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 13 Mar 2020 12:42:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GkL+IIJYtJIg1UkSh805Xg9+Ewf8yqShTCk7MH0mzbnWN9mkGZfvRnzdd8ZSVxjQh2PuskZJw1aoKpi7ZuWcePoxq7XTJylqnxrgp+KCaorgKjQdZaHLWSdn8cpXnH+HNZvon3EJFeOswz3hL3kguEsyAO21dS8XkUF+8H0BXtoOTOt04vqhOdIKICJDbGpcpgpuGgc0s7aU9+YQg//LPFyaurv8mFg7mFYE/j7NszEnB7E/lL6M8vIEsAX0opk6t/gthHrJXW68qGWGIe4kxrRomeZmUbBzpiFuMH4PfQQGe7+obGTTb74nXlXmiGjNV03QHaUk1Xly2iP1DwuyPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ey40N/VDoz8bP6BOpKgMVRiJNMY5Cs6hOr4Q3F6reTU=;
 b=QwcTBRLgJOXy1o2c1/KnPUtFGet26l1b74KmGppi7m+kTZDyYgoK8dhRc4c6MX8SJfGjcVVmHzCU3+kOXVRT1i0g90pQERf9osDTYcAcmjgXDlXCBha45MptTbTlGTdheXJ1y9x4m77EOI7xlSi8YF8vRTKzNGusLVF0smhIYVFe7NuhU5rt1uFTCQj2RzmfxE1+Kpjhzum8LyjzQJiotmPaBSTizOsMx0aKOS0k9c7Q9FF6VDV9x4koErZkz1Lw674JZ6w6zTHj1Ayqr0+o7UEfWvbDRObUt8IQU6VuHJ6UEIMm5Ztbedha5fqAlQifzTItyCLPKZ9Fmb9kXaJvyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ey40N/VDoz8bP6BOpKgMVRiJNMY5Cs6hOr4Q3F6reTU=;
 b=Q6NC7ebd7T2NpVBfuREi+nN2tJOGHd8SlE0R6OG7CkbEu3SpG2YpIXyYy+4XGrPWYFYCGZ/vjbCYme5oME1gTDLZfVgVOAYhOzsg+6V8uxm2fSOaVM7buKArPHPxwq0QLS2Ruy82kjYbA4/seIuxwIagbCEVAmHaTwSv5820Dmk=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:51 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:50 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 13/25] mtd: spi-nor: Move Intel bits out of core.c
Thread-Topic: [PATCH v2 13/25] mtd: spi-nor: Move Intel bits out of core.c
Thread-Index: AQHV+W+Q+i04YDcpJ06/M6NUuV3hkw==
Date: Fri, 13 Mar 2020 19:42:43 +0000
Message-ID: <20200313194130.342251-14-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dea8e7c8-c849-4abb-2c11-08d7c786b73c
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB10FEAC48A630C2921847F9F0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(39860400002)(396003)(366004)(376002)(199004)(478600001)(54906003)(6512007)(110136005)(26005)(186003)(6486002)(4326008)(2616005)(316002)(71200400001)(6666004)(6506007)(86362001)(36756003)(8676002)(5660300002)(2906002)(66476007)(66446008)(66556008)(76116006)(64756008)(91956017)(66946007)(1076003)(81166006)(81156014)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYASPR01MB10;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iRU+Ipk1TwE7l7eRCpIshRCOSoe4CkP0louNCsj9jE6sOqptdcG3vu2ckH8V3MhvOsNCDCPswVvKAuS4upJHVjlXP3QkHUZBLLJVPqiozR2MRt0Kwassn2A/1bMPSdjIouJcD/1ZWIxFtKCaSDbORGaQw768s/mLpxpmHAV0Kt3N3S27lP4qJQG1JkSE5IX5+t4rdoz7VfVK9Fc78F+d7rdsMti4HF79LfoNJiNJXTmp+Zo1bhr+BNQ0hoQNOEXnxYiQoXqXBw3YKiLGXH1MEgo5UOU5q9xboNboZZhS0fS5a2VeEBHdu7zwcNm0YQyuWbGsSVz5EZL0a3vZQzA9Vr/9U76yrMInv/Ci8C+1ogW4rNoN+uM9VMWq91jabEBNZRAuuVA8UfiOcjQKIeRPdk6O044ZyFC87dOtne3kTLYftcXa0l2x5XfJI49KqxV7
x-ms-exchange-antispam-messagedata: fAz/NYf94o8cEZoGPilCOUMo0A+kcjpFmCRhoZBnihl2LvvVC32+4owQ5Qp6SjP/MMl3OArhc+HBjh6PZ7L08ayiazDgqm84GPjWdX/zZhA8bHIMKThzviZr5uos41ED5oEgobVvX8s/eJSW2hOR0w==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dea8e7c8-c849-4abb-2c11-08d7c786b73c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:43.7385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rCCfiNxzKv/T8oSWkgCoX1Ea0XuHTtRz6MEiiTHvu4tTazWHw+vBMOl8cvoL+/JUy9AWrsYlv9yFSuwoZfXLQZr6RnOh5WT70SIRX/e09ls=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124253_345951_259E8892 
X-CRM114-Status: GOOD (  12.65  )
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
Cc: Tudor.Ambarus@microchip.com, richard@nod.at, linux-mtd@lists.infradead.org,
 miquel.raynal@bootlin.com, mika.westerberg@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Boris Brezillon <bbrezillon@kernel.org>

Create a SPI NOR manufacturer driver for Intel chips, and move the
Intel definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Reviewed-by: Mika Westerberg <mika.westerberg@linux.intel.com>
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
index 236632d15c42..e860f4efdeba 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2066,11 +2066,6 @@ static struct spi_nor_fixups mx25l25635_fixups = {
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
@@ -2372,6 +2367,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_everspin,
 	&spi_nor_fujitsu,
 	&spi_nor_gigadevice,
+	&spi_nor_intel,
 };
 
 static const struct flash_info *
@@ -3151,11 +3147,6 @@ static int spi_nor_setup(struct spi_nor *nor,
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
@@ -3194,10 +3185,6 @@ static void spi_nor_manufacturer_init_params(struct spi_nor *nor)
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
index da88d7e55c76..3d31e7fc4ac4 100644
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
