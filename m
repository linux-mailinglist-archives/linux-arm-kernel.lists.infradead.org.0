Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFDB176223
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:13:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/Dt4JbG0RIbpeXZLhwlySbDPmihII3Haz5PCSRVojM=; b=j8W2u0zgSlOtvY
	Fzs8KI/YShjYQrMeUQstYe3cB2h3OMe9sKZlT6LBeGBHXiw9EKA4mcnPc2lqz5eyERQSh+9Fsoohx
	KFsCeCU+3qSmxeIIogyhKEMTwyXUmSkY2httTYf+TlnNQxx6NeXik/4ytj0rotYIiY3JeGtPl4teN
	973DhSxMnk3z9y2nfJ/oIwkQKGde8qzXs4nGYn3GYZeW/rHI9dCSAtgj3buSjGNRwOt3L80COlLXP
	m38zLQIiWroR/YdP6R7KuGMyhHlzrBTUDsB6wQDqNCewpyZcIALJ1fgzA5VSFhLM7qfnmayrmjbRd
	L0F4tIGdPVHQomsa4kig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pYv-0007z0-5o; Mon, 02 Mar 2020 18:13:05 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pTy-0002tk-DZ; Mon, 02 Mar 2020 18:08:02 +0000
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
IronPort-SDR: gR/Xu0SH8PwleouJjQTdyvo2tNePF1kmxNt9Yqu2xbiAeiyyd3Opedr5l+62aRQoz82JB8Yh9+
 GMw0rmCa9R/p284u+eHGr9Ur0KBSh2ElX5AdDHNQkEU6Jif+IfMjfURBUrdEyjWMXbb1TYVlrm
 eIzo9eueMsb/xoEfe3TA4GqTiHe95hWtU3zFLpqszyWocnnt2iJjE7kcEY5y8jeaFyCuh7iCA0
 ix0ZtcwCRsdJRWfNoPMvQhCuDez+GnCFvLzYY+lVGWAmXH/oBe3mu9dP9fEEVQZwiloAYRWfD8
 /U8=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; d="scan'208";a="67338210"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 11:07:57 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 11:07:56 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Mar 2020 11:07:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AeVCneqFyyyUHYnYHM1OYNQoLYgbswwX/IXChOxNHQfV3TdLqZQRG6iiPrOZzrfjLQ7pPvPpy3uNxJ41RdX+LZzdmRN0PjOEBVD+lNB6toADL1JMkRLGwo3s6+WTr25Fz50mzX3IYU2FrLirP/smJORHYaKIC5pUMm8Q5XANbV02Q+BswQ6kxSAJn8ul71ZeQekNilnhaB8BWf8a4CfA81NwxqjXwITg3o0YNadC+QoHTK/MbdSpWObjc5IAs++0ABTXPeBmxDnz6ueNLFIrPbZ4XYPSy9iy90MANpR14XlIHV5QIKotC8XCdXWQRdTzmd+/RFj17Tzx3EIf+oihJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rsW3ZRI0mBQfRBdenKmxzlAMylpl2YHfDiiCdbRInNo=;
 b=HE72FMi9kkmiGQaGtWwrOJ6zmzk0MtEaUyQ8d/8MRfvpIEOahePgdDZ7RXTWnq4Xwdy+CGkoNdeG91KExgDldL5OZkhizpu6lS/qQ/F2NWV7sO4IXDk/WZUwnntr7fc87flyqIOFMoffhvqupfVUk/d2vfhuRTYGaSpAv99Z8/3zvzjzvh+Mqmna6bpYRa/DU5PQF2fqAYgq6tyzIw9yRWtkbye5P+Yk4yE7AgBfEYjs6ypUmEh0PqkQ8Pf9QgsDCGM9NbTkZp0Lik2bnoIxp+mvi8DN1SfS+yZcOrhQ5mL7Gl2DwOnzU3oonhDDH+TrJe49Kyp7ECVad7bSErsSRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rsW3ZRI0mBQfRBdenKmxzlAMylpl2YHfDiiCdbRInNo=;
 b=daou+bLc7/NMzOd/ii6LFc7l340mDN4oC/DJpbZ6WggqO9Wsg0f4Pe741NF5K7EKIqBjjwhWlXjWgpDEIXjSlZs1VwsDP9/SM/24vmJIQs8wYFzHSAtbWV0106rbDrdz3VFBHmyUk7ckN/6yfU6O0XBLl86tzGcy5WA9knzQ76I=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4142.namprd11.prod.outlook.com (2603:10b6:208:135::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 18:07:51 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 18:07:50 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH 09/23] mtd: spi-nor: Move Everspin bits out of core.c
Thread-Topic: [PATCH 09/23] mtd: spi-nor: Move Everspin bits out of core.c
Thread-Index: AQHV8L18TK41hD+gVUGQ55J4iGg1rA==
Date: Mon, 2 Mar 2020 18:07:49 +0000
Message-ID: <20200302180730.1886678-10-tudor.ambarus@microchip.com>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1c6ca503-0991-4a9c-00cd-08d7bed49eb8
x-ms-traffictypediagnostic: MN2PR11MB4142:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4142065EE6002BDADA87AC63F0E70@MN2PR11MB4142.namprd11.prod.outlook.com>
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
x-microsoft-antispam-message-info: m9+BgFAYTRd92e1ANJXjBLdI6XmFC8Wt0bBqM5+d+luVH33LeGFdu+Jfkb1E2y7/ftIFW0W6JbdqiewF8wRBjGICW2KCzX9JRJw/StBV2lErW2dRUARPjD43gAyXKgnbOJaNfIWlatCy8HUHJ/nwCNdi+ezOuTMB5zzfPc/uMjxfoMhEPQ80oO03mYlb5qwigz+FlzOvwGXuAd7XZj08dsSX3d2OW61DI2H+i7yujnEc1iDEn7YkDhWlyd3z7YfGW2hXFCW0wJsXPDlpM7WLhwetWwdbnhpHXh+cgd+mtZmBN+wLKJgs8ZV528mZmujipbtO67Ke6fvsq6fF1fMkEqdl/bHpVd3ezoB7iPeQybepiGYyMv7Z4anj4ikzStj/PEsHlwH+gTkiq9hAbfbsI1jtkCe0gZr/afbQ+jjqfSFP2EatrASErlconsrWLcMl
x-ms-exchange-antispam-messagedata: Sg02pV9zz9o0tr+QvXXUrc1RXHiaBXfUCoc9HyRFvZPxdkKFFVfd17Gka3kq03oACReIyBzVsaIKGotJN/G+qnyM1y6BHx2ggjshfiFG/6ps14ksxR0q4CnINHG2tOl7PvfJ4cYsLIy2YlMmNy6hWQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c6ca503-0991-4a9c-00cd-08d7bed49eb8
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 18:07:50.0118 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Abhsjg48ZATt41Obr4fbzEwsPVdTHKzvXacQP1lKRdZsOLZGLSAmjphNfiV6TAV55bgQFhN4K0e0lCUJpbPXrSyI9fldo2C7Br/nK+DnIrg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_100758_816868_AD2D1C3A 
X-CRM114-Status: GOOD (  10.53  )
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
index 30a0ddc6de81..07eec3476053 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2079,12 +2079,6 @@ static struct spi_nor_fixups gd25q256_fixups = {
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
 
@@ -2435,6 +2429,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_atmel,
 	&spi_nor_eon,
 	&spi_nor_esmt,
+	&spi_nor_everspin,
 };
 
 static const struct flash_info *
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 23ce99fb8087..d36e7f93dbcf 100644
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
