Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C93017621F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:13:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ajHJL24sSsuZzbZDQVMGLdCPEdO/JOfY6cU6XCL0aM=; b=XJUtNlu72O9kxh
	gHTSNoZKOxxgYXOUFos6WPDITtDWVsyyTdLSLMpo/ik8U/FNXl6+RVqrkzvvx+TZns0HZlxqV1cb5
	uQSD6+DYZ1iH0YvNgH75skzkDdRmZozH6CXfeyhE++rplFJxed7Hf0KSarMTYfO7YeEcXvATOBfk2
	4RGfqPOmBgzfW8RmOUF88wkZBWok0Y53eio+1uSjwSEcX/TcWgeX0lyND55t+KlCy17LFdsVOPeZ+
	e4UCLKMQdI5ql2fn6vfIMOz1oswHr/JP4M5R2VoJ0aJJXO/rHI7CXYkim3Dc2tgWyTacuHnNBJmWV
	KuM89igGl1hFw7PWOiuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pYg-0007hj-Sx; Mon, 02 Mar 2020 18:12:50 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pTz-0002pE-Gm; Mon, 02 Mar 2020 18:08:04 +0000
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
IronPort-SDR: 3yN3hY2M8+72kOesf2mq8NaCoBwwZ0IRjFkX9Zghg+9ShfbGQJbjsdPYl82fx8y9hS8PCJRRSf
 TJBike23J9rBaOtjEcXeBj2ESxTpsU7py0IaiEQYvnR3f/gNCV0Pt8K8cVPcH+/bcJjW2Em6q1
 Er3Zpy3TsRlw6cb/50ROvXA7+6Mqf6+CBKk6CCb6BBhOY8Ggs9QM1QYXxlnJT171SlWxCDlF/W
 lJSL1Rv5e4KBftMfD6p0gzpJfqedmOQI9Ipx78w0/WghNFgp+B8qRjznPK4y0hLhMTsUHr63/r
 +/s=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; d="scan'208";a="67338212"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 11:07:58 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 11:07:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Mar 2020 11:07:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fkeWmQ5FKQtL6kp6zMk3lmDYuvtDVX51Q+4p7Akc02oZkGKzx9zrviuuYLtfE7Y7/O81VuOjdK5/I2RSU1Pu+WAekjgY5W9kkhw9Bnyj5sW3XdGJ9PUthkc1OW+OLMoaeLga/3JdvZtyemUca9Wo5sfYl32mBqf7s6qJhT97ilLxm7wgw9z48NNKpyXsq6QzoRM4CMzTyLckv6QEY2Utu1QExnsVYdOWYXQ6Tvxk9MgolV8ct1XzwpfaranP42s/i/QypuI11eQ6+kUIVCvNSpoCSZPdadsIGeZv5ZykKAHXN32MVA+shmAgyEpQOYSOCNfjPKRU4mgQoUQkhK79Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=90I5xiosVvrJFbFYf69oXpGUrzopeAQ5QWknTP1I9l8=;
 b=JjenhB7ualx0N40B/4YCjWg/VQbdiqXZP6d9K6rxDTJJCFiIF8N2EkAj94kKTotRN119wo0DYeL1pB+FraFyPXX1p1EyvT4h5L/6oyloyrUm2VILbJUe06J3/RXnOuhE3k2nZ2B44RctzVasctNgI/L/qF7SwItlw2u9vlp/NJiDHjpcwJuJIDZEUz2LSLiG9W1s/4iOVunVGTMtBfEk/BVMrYqLhJsN/sxwWYbHzjLAazOx6k/jO9gVQaFieXZG8XvuWoAzr/iTPFyn9bo1I9A1rRoSA8VCx92Oig7uJUV++gOC84fFN49eXG+NnSILU7imLyl82nyCUukhv/ugLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=90I5xiosVvrJFbFYf69oXpGUrzopeAQ5QWknTP1I9l8=;
 b=BDYqrYLbeN3D1ZbUpuri38z0+mZ78dEU0qH35o/QpdJVzDSjO0MBEnoKmtnH3m+LDy3xSovcipW012RYfBHYGtI4rP9vAfJkVFbRUPTEKEqrEjKMSyTVMDJn/eekPle2N37ycocRuXpqjLQHEL8Q56Cq3ffyk2WxMHGghi3GF7Q=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4142.namprd11.prod.outlook.com (2603:10b6:208:135::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 18:07:51 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 18:07:51 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH 10/23] mtd: spi-nor: Move Fujitsu bits out of core.c
Thread-Topic: [PATCH 10/23] mtd: spi-nor: Move Fujitsu bits out of core.c
Thread-Index: AQHV8L18ZNXwf2yInkuGN2gQm47v7g==
Date: Mon, 2 Mar 2020 18:07:50 +0000
Message-ID: <20200302180730.1886678-11-tudor.ambarus@microchip.com>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c99121a5-7125-486c-5070-08d7bed49fbc
x-ms-traffictypediagnostic: MN2PR11MB4142:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4142139C4587A06CBACC54F1F0E70@MN2PR11MB4142.namprd11.prod.outlook.com>
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
x-microsoft-antispam-message-info: xcxUJ3oRfr9L/g09MIRdXOFgY+36fyw+nHoPzpBGuSAgUwoPZVBHmugTWMdjEAPk6tN9Rg8u59qL1FGeRxGOpi47wE/SlhSn8xoxbae90yA5l4VcsafFCvBTWrnForym01/ZDtp8NSV+LuUwVTzgZ3xT7qSXmL1MZzRQX2mN2VbjmLkSPqf5Emxo7K0SBTV8OcK1Bs8ic9DSga1fU0BXp1oenrM1lkT1ElpZaHOSQIGDFN4SyQHHQfuelwfyKmCNRqeCcoA50uidkUvIxaTSeIumke2sAXk6KzyOeNSXpZXFgbh9dl4ZBQdpvovwScgU3mxcpvLzcO+yeEw7+Ga+CUy/kyX9SNHxF/TifEQst5nnNcJRcwR4f7yoDgiQ2urjAU6hBNC5njGY33afpb5WhDKQIJaGJIaTeDVcxWnddB3EhgD1RDRHdKTmOFHfM+A5
x-ms-exchange-antispam-messagedata: 9tXBDW1bpEPeKZ9BjG9oVl/aL3I3nW4+bxTUxRXpiYE/lEzATWOkvwA3He1u0XQcpG+3OPX5cmbNzXhHLLu5K6gRiGR/bnX2F3Rbhjutn//vKrsXUROPjmY6VweLKAXzzCVh7Ovr13j9LJMSKsLGxg==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: c99121a5-7125-486c-5070-08d7bed49fbc
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 18:07:50.5445 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xGJuwy8yWuQIkfalIccMJFn7Yyu/+PSC2wHIbTT+jEXp8wSqRXZ7xVabUfqQtdJr3LbcUmmLq+KP+/ge+MQIRylUP7vRVmNitjpF5tg4/bQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_100800_156664_D625841A 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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

Create a SPI NOR manufacturer driver for Fujitsu chips, and move the
Fujitsu definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile  |  1 +
 drivers/mtd/spi-nor/core.c    |  4 +---
 drivers/mtd/spi-nor/core.h    |  1 +
 drivers/mtd/spi-nor/fujitsu.c | 20 ++++++++++++++++++++
 4 files changed, 23 insertions(+), 3 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/fujitsu.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index 384c520689d8..ca6222d98b0f 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -5,4 +5,5 @@ spi-nor-objs			+= atmel.o
 spi-nor-objs			+= eon.o
 spi-nor-objs			+= esmt.o
 spi-nor-objs			+= everspin.o
+spi-nor-objs			+= fujitsu.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 07eec3476053..3f3955bbbb70 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2079,9 +2079,6 @@ static struct spi_nor_fixups gd25q256_fixups = {
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* Fujitsu */
-	{ "mb85rs1mt", INFO(0x047f27, 0, 128 * 1024, 1, SPI_NOR_NO_ERASE) },
-
 	/* GigaDevice */
 	{
 		"gd25q16", INFO(0xc84015, 0, 64 * 1024,  32,
@@ -2430,6 +2427,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_eon,
 	&spi_nor_esmt,
 	&spi_nor_everspin,
+	&spi_nor_fujitsu,
 };
 
 static const struct flash_info *
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index d36e7f93dbcf..1b9f7402e5ff 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -171,6 +171,7 @@ extern const struct spi_nor_manufacturer spi_nor_atmel;
 extern const struct spi_nor_manufacturer spi_nor_eon;
 extern const struct spi_nor_manufacturer spi_nor_esmt;
 extern const struct spi_nor_manufacturer spi_nor_everspin;
+extern const struct spi_nor_manufacturer spi_nor_fujitsu;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/fujitsu.c b/drivers/mtd/spi-nor/fujitsu.c
new file mode 100644
index 000000000000..e385d93e756c
--- /dev/null
+++ b/drivers/mtd/spi-nor/fujitsu.c
@@ -0,0 +1,20 @@
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
+static const struct flash_info fujitsu_parts[] = {
+	/* Fujitsu */
+	{ "mb85rs1mt", INFO(0x047f27, 0, 128 * 1024, 1, SPI_NOR_NO_ERASE) },
+};
+
+const struct spi_nor_manufacturer spi_nor_fujitsu = {
+	.name = "fujitsu",
+	.parts = fujitsu_parts,
+	.nparts = ARRAY_SIZE(fujitsu_parts),
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
