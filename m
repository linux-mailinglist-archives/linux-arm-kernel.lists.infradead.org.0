Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96223184FC4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:58:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnstzYdUJnekXwwH3gkcm0X8k/EF8WcQk/YN4Ll96Es=; b=srGBr8RjK62TyG
	uqQvNr++2b8jiohoAnCJOCV7yJoazhb0uavb8GJ7OAhb6WBcfLalIsOv6bXeQmiU7v0FZe+UvVL6k
	pJ6PalMPD7Wp5NxjXVzhAOp4encbIaVpvPnrdR3UdVLMTgAjqy0G9ouoSz2lH1A+Vo9A6IeHmSRGi
	K5nZzGYH4oTKP+aSeEn5LDssz1Wx8y0LFUbGP/JfOu+ypBTcwS46IcyoTvKJn4qpJS5B49+2bHGiu
	JyEeFyf3RseVaCsape518rdYKxT7foP2wZK5ggQmQVtrjJxoAiFTZUfanvGO3W7DHTuIoN21ZxOVG
	pdSptizYXZGobZF9AfYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqS0-0007bU-Np; Fri, 13 Mar 2020 19:58:32 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqD4-0008RC-39; Fri, 13 Mar 2020 19:43:11 +0000
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
IronPort-SDR: 7POp5JGqNLONW4HgOsvJo/uIKYQo/54FXy9J4J1nHOYjDSbvuYrTz8R2v3H6V9orNKHwhOIAuG
 nWaxWqaDAmcEZOlojMlx6BXHrf+3eW6s6cqdDoC5rwDkrGEqCE76Di8VUbGIRSou4m0o3zmuAf
 ky0x8HPnumJD7nMX3m8rFxJKFqhOPLpZRI3RqRuQkJzGsCooMPvP/dR6UpPqjSasVyc7c/77sB
 Wlmn343xdCs/8p7VAZ50/Zv9nmGdKPgHxlVGqjvfeDFwKJ4/9gvGxlOCTIGNY69EM7dlD6LQEX
 o3c=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="67134839"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:59 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:54 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 12:42:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E6tyqL1LOIK2DRIqT37ix5xcxrhtqPqNF3ck4wJEnejwBR4QVqVXfmG78Rxi3lcAuKExVqDWy68lTuLL35TBS4pkORZgJMYPdE3TATTmsTht0Bz2YH86FW6GqhEKmsHgMShbNDOU4NnlxTbl1c3ns2Z9vp9qOg7AHoxNB+XUjOVZ39CnYbq77shJ+gL4b+j4J3NDy3fhUArXXmIHX9y/Kr4teaOBOlt6ddH3r/rIemSB0KRJc3Q+XmHepzK3gQCI+CbdZb399NhY0MRAeSozHt6HYDRqFoevjXzQfKzHmz1+yxkmNPHX/HykP3wIqGh932WZ7DbvX3jJHmppGZFbqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nhCmj8w154JsSMRhyAmbF0rpo9GAmto7YlgprmKcKRQ=;
 b=PXW1mIUB0o3A3IIMivCAVgP6oZIgAWdiECbBnqYo9mnxuVccv4tA3jAF0rsKoZ76svkA9DxyrKmZuss4FPRxYuY5kfRIsy5TGV8oqTRmgIN65yd0fogEtMTg/VhgwpwrnjEgylI5zblDCdxoELkdYtdQIS0TiBUkneA8BSwUfsJXfflfi4yPK25w2FTl/1TF/Lqpue48YeLYmYSNDQuHlIrpmTx6yTAjiOOBPqQAJqRbBLQlYIvqNIldTYOD9UON1TfvCep80W7nhd4r8H78zkDEJnNmfm5/MSNWsswKch53rpr8wZ8V9gSkOpmvK6xu2pes34T1ZVPgv4q4xJelzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nhCmj8w154JsSMRhyAmbF0rpo9GAmto7YlgprmKcKRQ=;
 b=XqHFYDT0FhutShoY3fp6miKPvdTBYm05YJFr72cnCSaYnsN5u4oWKMVrwk5U1Gm90vnGv/3GRd/wnQU+sNTbaFqBJRf8tNDXYcJHO5eOY8rhglpMgixrCBSaP/fISIPfGTsfbmpQKM6z5zQoyFhvqagGnhTk8JfuBEZrudiCKFI=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:53 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:53 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 17/25] mtd: spi-nor: Move Spansion bits out of core.c
Thread-Topic: [PATCH v2 17/25] mtd: spi-nor: Move Spansion bits out of core.c
Thread-Index: AQHV+W+S/6PmEBmXpkOpud5Ipv8pxQ==
Date: Fri, 13 Mar 2020 19:42:46 +0000
Message-ID: <20200313194130.342251-18-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a4dd5462-dd9e-461f-f5c7-08d7c786b8c1
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB10BCFD68FB765BBF39E24CF0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
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
x-microsoft-antispam-message-info: WgZtHWwUTBgLe+QL47EIniA+8DT3Zt1fK1tXScBJF0Q52J0ps0nrZDAqHZ0GJ/AdTh4jJ1xeA6pZXpOzxJaBgyxHKkz6zzSlj8Pbp+bXEK2PlxlwvEqOQysZGIE5LuC1l4V/eqdSm7aDZhJpSRg+mJtVe9loj0vSWujGbF3xnHXXMJJcwrHHFBOWnhRupYEvtOYD2PBzyATkdJbjdYfMlc15uJJKMjBlN/A1PE1VE+tnErQbiWPTvL7udnxdllPgASSIoPvbUWNDP/jifxlsrn7LycfwA97vE/2FkZ1tqfYmN3L2PQzKCHIswNTxwiHpQiC3s/nSUVkM6HyVjPsXxk/kQEQuSFnOpFohy8MW0kW3dEZl0VmLE8LZEhqBnDMV/cBFcumQ7QYTf4d6Snac/+0bakHf+dPj0gmSXt7MwEZmsAloUF51bK9ffe7Waj31
x-ms-exchange-antispam-messagedata: wnYYj6lw43F1Qcc93qVSKmYv7thCYW/pevzKSEKnUYSB6d0Blmea+LG3NYe9iAd+gOeT1jfITLKA9KVY7I4a5BaBgtE2K8e6ge/wU7PNx8YC7oKhPCKcOKxSFwrcxSNqahnjDUY+cCiQbVgyv6JfZQ==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a4dd5462-dd9e-461f-f5c7-08d7c786b8c1
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:46.7768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oFBnudB/jZsq+3eprV/dRMfMHXTi4IkmcL9Bh3/8QUICcsBDeDdSRGWE4ZeF0QOfH1SFKKVB1Xa2UstQnFdPewnPn/p3gzX6MnYFNNoBKoQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124306_311364_8CA10993 
X-CRM114-Status: GOOD (  12.04  )
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

Create a SPI NOR manufacturer driver for Spansion chips, and move the
Spansion definitions outside of core.c.

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Makefile   |  1 +
 drivers/mtd/spi-nor/core.c     | 59 +--------------------
 drivers/mtd/spi-nor/core.h     |  1 +
 drivers/mtd/spi-nor/spansion.c | 95 ++++++++++++++++++++++++++++++++++
 4 files changed, 98 insertions(+), 58 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/spansion.c

diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index c7e5fb908bec..cb06ee50bf68 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -11,4 +11,5 @@ spi-nor-objs			+= intel.o
 spi-nor-objs			+= issi.o
 spi-nor-objs			+= macronix.o
 spi-nor-objs			+= micron-st.o
+spi-nor-objs			+= spansion.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
diff --git a/drivers/mtd/spi-nor/core.c b/drivers/mtd/spi-nor/core.c
index 4885607dc917..1500951254d9 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -1995,44 +1995,6 @@ int spi_nor_sr2_bit7_quad_enable(struct spi_nor *nor)
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* Spansion/Cypress -- single (large) sector size only, at least
-	 * for the chips listed here (without boot sectors).
-	 */
-	{ "s25sl032p",  INFO(0x010215, 0x4d00,  64 * 1024,  64, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "s25sl064p",  INFO(0x010216, 0x4d00,  64 * 1024, 128, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "s25fl128s0", INFO6(0x012018, 0x4d0080, 256 * 1024, 64,
-			SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
-	{ "s25fl128s1", INFO6(0x012018, 0x4d0180, 64 * 1024, 256,
-			SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
-	{ "s25fl256s0", INFO(0x010219, 0x4d00, 256 * 1024, 128, USE_CLSR) },
-	{ "s25fl256s1", INFO(0x010219, 0x4d01,  64 * 1024, 512, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
-	{ "s25fl512s",  INFO6(0x010220, 0x4d0080, 256 * 1024, 256,
-			SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
-			SPI_NOR_HAS_LOCK | USE_CLSR) },
-	{ "s25fs512s",  INFO6(0x010220, 0x4d0081, 256 * 1024, 256, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
-	{ "s70fl01gs",  INFO(0x010221, 0x4d00, 256 * 1024, 256, 0) },
-	{ "s25sl12800", INFO(0x012018, 0x0300, 256 * 1024,  64, 0) },
-	{ "s25sl12801", INFO(0x012018, 0x0301,  64 * 1024, 256, 0) },
-	{ "s25fl129p0", INFO(0x012018, 0x4d00, 256 * 1024,  64, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
-	{ "s25fl129p1", INFO(0x012018, 0x4d01,  64 * 1024, 256, SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | USE_CLSR) },
-	{ "s25sl004a",  INFO(0x010212,      0,  64 * 1024,   8, 0) },
-	{ "s25sl008a",  INFO(0x010213,      0,  64 * 1024,  16, 0) },
-	{ "s25sl016a",  INFO(0x010214,      0,  64 * 1024,  32, 0) },
-	{ "s25sl032a",  INFO(0x010215,      0,  64 * 1024,  64, 0) },
-	{ "s25sl064a",  INFO(0x010216,      0,  64 * 1024, 128, 0) },
-	{ "s25fl004k",  INFO(0xef4013,      0,  64 * 1024,   8, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "s25fl008k",  INFO(0xef4014,      0,  64 * 1024,  16, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "s25fl016k",  INFO(0xef4015,      0,  64 * 1024,  32, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "s25fl064k",  INFO(0xef4017,      0,  64 * 1024, 128, SECT_4K) },
-	{ "s25fl116k",  INFO(0x014015,      0,  64 * 1024,  32, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
-	{ "s25fl132k",  INFO(0x014016,      0,  64 * 1024,  64, SECT_4K) },
-	{ "s25fl164k",  INFO(0x014017,      0,  64 * 1024, 128, SECT_4K) },
-	{ "s25fl204k",  INFO(0x014013,      0,  64 * 1024,   8, SECT_4K | SPI_NOR_DUAL_READ) },
-	{ "s25fl208k",  INFO(0x014014,      0,  64 * 1024,  16, SECT_4K | SPI_NOR_DUAL_READ) },
-	{ "s25fl064l",  INFO(0x016017,      0,  64 * 1024, 128, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-	{ "s25fl128l",  INFO(0x016018,      0,  64 * 1024, 256, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-	{ "s25fl256l",  INFO(0x016019,      0,  64 * 1024, 512, SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_4B_OPCODES) },
-
 	/* SST -- large erase sizes are "overlays", "sectors" are 4K */
 	{ "sst25vf040b", INFO(0xbf258d, 0, 64 * 1024,  8, SECT_4K | SST_WRITE) },
 	{ "sst25vf080b", INFO(0xbf258e, 0, 64 * 1024, 16, SECT_4K | SST_WRITE) },
@@ -2151,6 +2113,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_macronix,
 	&spi_nor_micron,
 	&spi_nor_st,
+	&spi_nor_spansion,
 };
 
 static const struct flash_info *
@@ -3084,17 +3047,6 @@ static void spi_nor_info_init_params(struct spi_nor *nor)
 	spi_nor_init_uniform_erase_map(map, erase_mask, params->size);
 }
 
-static void spansion_post_sfdp_fixups(struct spi_nor *nor)
-{
-	if (nor->params.size <= SZ_16M)
-		return;
-
-	nor->flags |= SNOR_F_4B_OPCODES;
-	/* No small sector erase for 4-byte command set */
-	nor->erase_opcode = SPINOR_OP_SE;
-	nor->mtd.erasesize = nor->info->sector_size;
-}
-
 static void s3an_post_sfdp_fixups(struct spi_nor *nor)
 {
 	nor->params.setup = s3an_nor_setup;
@@ -3112,15 +3064,6 @@ static void s3an_post_sfdp_fixups(struct spi_nor *nor)
  */
 static void spi_nor_post_sfdp_fixups(struct spi_nor *nor)
 {
-	switch (JEDEC_MFR(nor->info)) {
-	case SNOR_MFR_SPANSION:
-		spansion_post_sfdp_fixups(nor);
-		break;
-
-	default:
-		break;
-	}
-
 	if (nor->info->flags & SPI_S3AN)
 		s3an_post_sfdp_fixups(nor);
 
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index fc4a70d8713c..470025131d47 100644
--- a/drivers/mtd/spi-nor/core.h
+++ b/drivers/mtd/spi-nor/core.h
@@ -178,6 +178,7 @@ extern const struct spi_nor_manufacturer spi_nor_issi;
 extern const struct spi_nor_manufacturer spi_nor_macronix;
 extern const struct spi_nor_manufacturer spi_nor_micron;
 extern const struct spi_nor_manufacturer spi_nor_st;
+extern const struct spi_nor_manufacturer spi_nor_spansion;
 
 int spi_nor_write_enable(struct spi_nor *nor);
 int spi_nor_write_disable(struct spi_nor *nor);
diff --git a/drivers/mtd/spi-nor/spansion.c b/drivers/mtd/spi-nor/spansion.c
new file mode 100644
index 000000000000..16683983a20e
--- /dev/null
+++ b/drivers/mtd/spi-nor/spansion.c
@@ -0,0 +1,95 @@
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
+static const struct flash_info spansion_parts[] = {
+	/* Spansion/Cypress -- single (large) sector size only, at least
+	 * for the chips listed here (without boot sectors).
+	 */
+	{ "s25sl032p",  INFO(0x010215, 0x4d00,  64 * 1024,  64,
+			     SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "s25sl064p",  INFO(0x010216, 0x4d00,  64 * 1024, 128,
+			     SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "s25fl128s0", INFO6(0x012018, 0x4d0080, 256 * 1024, 64,
+			      SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			      USE_CLSR) },
+	{ "s25fl128s1", INFO6(0x012018, 0x4d0180, 64 * 1024, 256,
+			      SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			      USE_CLSR) },
+	{ "s25fl256s0", INFO(0x010219, 0x4d00, 256 * 1024, 128, USE_CLSR) },
+	{ "s25fl256s1", INFO(0x010219, 0x4d01,  64 * 1024, 512,
+			     SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			     USE_CLSR) },
+	{ "s25fl512s",  INFO6(0x010220, 0x4d0080, 256 * 1024, 256,
+			      SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			      SPI_NOR_HAS_LOCK | USE_CLSR) },
+	{ "s25fs512s",  INFO6(0x010220, 0x4d0081, 256 * 1024, 256,
+			      SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			      USE_CLSR) },
+	{ "s70fl01gs",  INFO(0x010221, 0x4d00, 256 * 1024, 256, 0) },
+	{ "s25sl12800", INFO(0x012018, 0x0300, 256 * 1024,  64, 0) },
+	{ "s25sl12801", INFO(0x012018, 0x0301,  64 * 1024, 256, 0) },
+	{ "s25fl129p0", INFO(0x012018, 0x4d00, 256 * 1024,  64,
+			     SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			     USE_CLSR) },
+	{ "s25fl129p1", INFO(0x012018, 0x4d01,  64 * 1024, 256,
+			     SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			     USE_CLSR) },
+	{ "s25sl004a",  INFO(0x010212,      0,  64 * 1024,   8, 0) },
+	{ "s25sl008a",  INFO(0x010213,      0,  64 * 1024,  16, 0) },
+	{ "s25sl016a",  INFO(0x010214,      0,  64 * 1024,  32, 0) },
+	{ "s25sl032a",  INFO(0x010215,      0,  64 * 1024,  64, 0) },
+	{ "s25sl064a",  INFO(0x010216,      0,  64 * 1024, 128, 0) },
+	{ "s25fl004k",  INFO(0xef4013,      0,  64 * 1024,   8,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "s25fl008k",  INFO(0xef4014,      0,  64 * 1024,  16,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "s25fl016k",  INFO(0xef4015,      0,  64 * 1024,  32,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "s25fl064k",  INFO(0xef4017,      0,  64 * 1024, 128, SECT_4K) },
+	{ "s25fl116k",  INFO(0x014015,      0,  64 * 1024,  32,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+	{ "s25fl132k",  INFO(0x014016,      0,  64 * 1024,  64, SECT_4K) },
+	{ "s25fl164k",  INFO(0x014017,      0,  64 * 1024, 128, SECT_4K) },
+	{ "s25fl204k",  INFO(0x014013,      0,  64 * 1024,   8,
+			     SECT_4K | SPI_NOR_DUAL_READ) },
+	{ "s25fl208k",  INFO(0x014014,      0,  64 * 1024,  16,
+			     SECT_4K | SPI_NOR_DUAL_READ) },
+	{ "s25fl064l",  INFO(0x016017,      0,  64 * 1024, 128,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			     SPI_NOR_4B_OPCODES) },
+	{ "s25fl128l",  INFO(0x016018,      0,  64 * 1024, 256,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			     SPI_NOR_4B_OPCODES) },
+	{ "s25fl256l",  INFO(0x016019,      0,  64 * 1024, 512,
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ |
+			     SPI_NOR_4B_OPCODES) },
+};
+
+static void spansion_post_sfdp_fixups(struct spi_nor *nor)
+{
+	if (nor->params.size <= SZ_16M)
+		return;
+
+	nor->flags |= SNOR_F_4B_OPCODES;
+	/* No small sector erase for 4-byte command set */
+	nor->erase_opcode = SPINOR_OP_SE;
+	nor->mtd.erasesize = nor->info->sector_size;
+}
+
+static const struct spi_nor_fixups spansion_fixups = {
+	.post_sfdp = spansion_post_sfdp_fixups,
+};
+
+const struct spi_nor_manufacturer spi_nor_spansion = {
+	.name = "spansion",
+	.parts = spansion_parts,
+	.nparts = ARRAY_SIZE(spansion_parts),
+	.fixups = &spansion_fixups,
+};
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
