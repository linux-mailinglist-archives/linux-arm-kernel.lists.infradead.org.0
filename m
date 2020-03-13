Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BF82184FA5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:53:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lG4yBLvHbjN5VvI6mazmlf/EzM6FfsWwTfNkRwoCrUM=; b=Hcdjl8h4fFn/TD
	1CqgshNDZ4G077uj8RVq7/RIaxVsPW33bY8gUHr6HhuLr3CGurZrPKbX6EOEzhe9l+rQJqpCLpM5U
	FcVSAEepin/kSlzDldqSfuYMjquOUVUZi4dWFGiDUPvSQbC9wRlVG76cAonHQemA9aWs2A5ftp00d
	4shnxnqdpwKGsJTt2iEJSj0zDJN1MFhaMYXwyenjCEJ1HI6Ap4uBM8LBb4ANCgGCPijP5vzdKxzGx
	/VQDAGPBTseo4ezpwnJtt5NF662wZXC+Lg7qMze6Ii+3tQAh2LIs9ElMnjkrN3wuH3VTU0H01tBX5
	qyPcJi22OUC9OXo60I3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqNO-0001ym-EB; Fri, 13 Mar 2020 19:53:46 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCz-0008Qz-Ng; Fri, 13 Mar 2020 19:43:04 +0000
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
IronPort-SDR: 1U6WqFBDEThRx833OTM188jn76F0beC4z/HXg6VrZ13AJaCod5Y8J1XCLppC6bWOc/1wuYi7wi
 7G4XdAm1agbHfdl7M8ux4B60P4m2XH/wV2Hh8A0O8sbTZMk18Yck8rhZSmb20DmFV8/SihO9zz
 nebXuMVBVfyvRSYs1DkBCASAvd3fZLfhak9nnpZBkNBlbrr4F+0TmafQYU29rQ/jmZDxnLYX8P
 gaaCWVCU5AKBZI46gpqYGF3/BY80jFIcHJ8VREZPBdfTEPicSrCBsU4L8bMcAUOyDAdVkGLAas
 y4o=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="68809674"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:59 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:59 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 12:42:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DJZG6IGOEnYGpuEeWSggE7NV6nKQqyET1TWklERp1WzEIMXBy/9fYF6rRR2ZdmfZX9CQwv/GSPS1WneOF4wCCWy8yPA4QGi/9fevILIQaNqXMiPeXF+2jeLVNFKl0x6gnoPZaKfLYjwjehs7038dJCDG47TglFzD9aMhqIbBl3+qZXBgjhxIWCk0IXYjig5M9C28Q7JsSCSFuhWwF3zEm9sDeuziGInqa7+BFQVW0V5U2WrYtC7PXCjo0+1m8N6NDokULfFX7XGCnM28p8iyj0qM5RWZPyUrncBJIpChcWi00Mr4kt/ie2g/nRs+ayj/wLFbRKB+AXkaTeKUugGy6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V099NUhby+ihY74LAI3olH/pjU/zAfnIQKPrEnDIw/Q=;
 b=Yakx9AJl+Q155LJR5xcBWcEoviXP7oML9DDR7r7uCr368gHzU6jjq9anVvyiRkzQR0dWTf7dsNGDbW1uxvyUSbFDBf8zuux5LOgaONBAdKibfHUZagdg0Rv3oMOB/tGgm9jJayaoMzUEISUGLOBGKNeyC4WDykXAvrTJ/Kf888aNra5rE44zelY+Wk5WcsRMYCT41Zk6oIb3uxpFPQ/GBGv+Lg9ebuZIy4XBIApfPmLYVa6ILWg2Vdomn/rvRgh8MpN1l8ItlNyzuVLB7yyEidMUUkQEWAPEXDFcY1xtNn2GRfNHFcUckWVLvihBubv2rPbLmjvqZCeqOa7RmW8PBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V099NUhby+ihY74LAI3olH/pjU/zAfnIQKPrEnDIw/Q=;
 b=Frayb6WqqkXJtPefX++0trgCMbBrNyGOYBRr9mNmgOZkF5Ilmd3W2wPAQ1EsjUcVqZT+H8n6Dv3Pj5XxodaqW3oNDfjwu+PP2LOwz+ljL6DA8JiYdKtOZhAc8mbq5sedS7tCskxV4LQFLIlwdK7IzDmdgCLASG1zpklhC0x2hLc=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:56 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:56 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 22/25] mtd: spi-nor: Move XMC bits out of core.c
Thread-Topic: [PATCH v2 22/25] mtd: spi-nor: Move XMC bits out of core.c
Thread-Index: AQHV+W+UpWoOiTUPwE+YeZBBuR/QuQ==
Date: Fri, 13 Mar 2020 19:42:50 +0000
Message-ID: <20200313194130.342251-23-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 57ec830b-8fd0-49c6-bd6b-08d7c786ba9f
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB10B3FDAE73B2131021347CF0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
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
x-microsoft-antispam-message-info: cwUSclErIyaWoxxqbz5jCxM9nKx6LUYDteELZVw7QyU2PUlMeAOur/INg9MuE8uhdMivwk4a6LGd2/mwwHob5r34LjGAxN5YxwipMgMOp8FTzkOEfHJ4AUo2SgBD5CEuaj683idwPkixKPFZMfX7jPNVhWdbeJ3pt5+ZQokdTGliF/Nh0SYWA+FlDHuN8vIxY3wBO509CQ4w5Cios9dZgPm8HeoYmvNNfoGXYOWFvYgJIXxncOgogLcnsht6VVfIT3Vx456Bi4O6X3Hn1R8QwPdHnOgkQmhYr/PTDdx/bqJLGaMPRn7Fj/JJtex4r5oV+c68+lI61qI129/AmBiqwHHJb4DNLZvT+vA5JV4zsVPahIUsCPat5u85Tsg8a8q7Vs/2fxwXE1f++gBekbiXJTglU3YjoZlb8OX/r+wLtpkMKzfeAI4bz08Q/q875zdZ
x-ms-exchange-antispam-messagedata: Sh285CbbW45MDUeIc1nRIELgqop3oJ3twbovex3mApVa5urBo345yaeeKs9cDyTpltxjAYp/z84SnGMpU/alDkxmXbe9uGvZY0HCcm50EpYO+o/2LQW4WW/5Gv5fWEGymHzAmS8VJIVfiILsNtbZOg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 57ec830b-8fd0-49c6-bd6b-08d7c786ba9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:50.8144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mva+u7hwROjxa7Lzi8k8hNG/TuB0TZFVTdDOMTnFVHYjFdYl1KC4HcoelQ8D9yMVIAdWo5CYhRIJg9rMKJsAbyRzdooBU1GTg5fExUu2lAk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124301_885992_9F56C847 
X-CRM114-Status: GOOD (  11.80  )
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

Create a SPI NOR manufacturer driver for XMC chips, and move the
XMC definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile |  1 +
 drivers/mtd/spi-nor/core.c   |  4 +---
 drivers/mtd/spi-nor/core.h   |  1 +
 drivers/mtd/spi-nor/xmc.c    | 23 +++++++++++++++++++++++
 4 files changed, 26 insertions(+), 3 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/xmc.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index fa03513dd160..7ddb742de1fe 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -16,4 +16,5 @@ spi-nor-objs			+= spansion.o
 spi-nor-objs			+= sst.o
 spi-nor-objs			+= winbond.o
 spi-nor-objs			+= xilinx.o
+spi-nor-objs			+= xmc.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index ca2f441e2806..941ba37c8a5c 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -1943,9 +1943,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* XMC (Wuhan Xinxin Semiconductor Manufacturing Corp.) */
-	{ "XM25QH64A", INFO(0x207017, 0, 64 * 1024, 128, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "XM25QH128A", INFO(0x207018, 0, 64 * 1024, 256, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ },
 };
 
@@ -1966,6 +1963,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_sst,
 	&spi_nor_winbond,
 	&spi_nor_xilinx,
+	&spi_nor_xmc,
 };
 
 static const struct flash_info *
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 8c666bff5768..2bc620708d6f 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -173,6 +173,7 @@ extern const struct spi_nor_manufacturer spi_nor_spansion;
 extern const struct spi_nor_manufacturer spi_nor_sst;
 extern const struct spi_nor_manufacturer spi_nor_winbond;
 extern const struct spi_nor_manufacturer spi_nor_xilinx;
+extern const struct spi_nor_manufacturer spi_nor_xmc;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/xmc.c b/drivers/mtd/spi-nor/xmc.c
new file mode 100644
index 000000000000..2c7773b68993
--- /dev/null
+++ b/drivers/mtd/spi-nor/xmc.c
@@ -0,0 +1,23 @@
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
+static const struct flash_info xmc_parts[] = {
+	/* XMC (Wuhan Xinxin Semiconductor Manufacturing Corp.) */
+	{ "XM25QH64A", INFO(0x207017, 0, 64 * 1024, 128,
+			    SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "XM25QH128A", INFO(0x207018, 0, 64 * 1024, 256,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+};
+
+const struct spi_nor_manufacturer spi_nor_xmc = {
+	.name = "xmc",
+	.parts = xmc_parts,
+	.nparts = ARRAY_SIZE(xmc_parts),
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
