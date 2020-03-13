Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD12184FA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:54:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cAQcVSmyKi5DYhZFZguTj4v0bq3DFQsc0VHsdAonPMI=; b=NI3O6Espl4qy5O
	6QeDasEUSi048eJ5jtJ0m1hWux5BX4v/yYKJSPcdqup+Rb9FxV+HOeLFo22BU4iOa8GtnG9Mm1Ne/
	cQBGkyDOYa41k9A+4/uP/1zsoGR+YGhb+Dv35/vjraTv+4bjwG9lgpcpsQlFVM/Nz7udUKr4+Hr1W
	rsVGCrNnrzYdAmGOtq086kh64s2axb7O2g/+ne05H1C3LtCvOwnAoPgBv9fyPGEx9aQXrSBT9Yfrg
	0EUebzzbENIKHSjCRSn0EdYmy/j716gdMuiv+VRsRuRKbO+1l6JhUm9Pz+WcpP82HUNF97+bejllF
	LWXO9v33jampO/oWzT2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqNv-0002Sl-0K; Fri, 13 Mar 2020 19:54:19 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCz-0008S7-07; Fri, 13 Mar 2020 19:43:04 +0000
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
IronPort-SDR: Bb8Y/9W5gh6ZNY/sIFZ0YBry5WeZNwE/eAcdv3Vkw5OmlW4wS3vax+lpvW9qCupqRtHlztkeSa
 CR0MkV55NOWFFHPxZrr0RcK15bvdzz0Mvq6fLxaKaivg4VSHN+hpcIREwpHrED6o1TG2SrF6gD
 pZNX1kEvJ+6prbp89cAdEX/bijfp5m4aJg2n+7ODBblEXxuEPyX6EW4vhm87KLXwvKgbIA46rZ
 Q4ea2keKfg47OsphlmeTNr6PkW8Fn9IVTHKVUbRWiKXI/KcysYGMoQi+fiC5o+7CeUAJGihTOe
 8Mg=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; d="scan'208";a="67134827"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:57 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:51 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Fri, 13 Mar 2020 12:42:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DyXGniVxEX9u5oE7KbeUOEDVu2e52JAPmdeFAUdx0NdeQ3cu5o5+oVWJwlahCJvQ2uMSn+SE1BFPFsGu5K2bmCX29TJhxMbefxHRHl3x+IfzF8n055uSHMgQ5sb+8nrLQ59ePSGopBZ0naZB7hcv8QXYk5MKZllJ0Dz6hkPCFVLUtr3IFtjFfHanutORUhi9xbrfsUVT4r4U6zUyonbaPAK0M3dL72dgBluc15EnKIQ/bKJB7FLzSvg4NWEoCmJpB5rHqsInehs41FNihMcBAPg7VCg7itc06QssqLykXFkxAkLcuI7/xm1miRsJ3wCm/ezEGgT8YFr05Ff41WE9pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8QqsW88R9gBHASqHK+FwCfPCQD7sflWiw6oB5rxich8=;
 b=BLvU+0iq/Qi4q811fM8KdKzOiQi9DjOly4cxLRvRt7c/0jZpt2xok4GdmyU4WP/z/T4zz/ePVyQlsGh8sZhNkWWhX1dAh7uPLSLjBHIAbJbgQBBQU16Gq1bc3S+pX/iRDALcIwUdTVt3dx8lcIaTU1V7yJc4l0TkxiJCjOokFQMIpbCXG/BMQi/WHdynNgWELoq4UIGlVlnua7qQULx+M4+VkXNTo/S4KdMXfWfmgpxqxG1PwDZjcoeMLcELdvsvPjG8lD+oJRaZN8f08mFAmeiMaBNA/wuZ1bafqHFEAxJa2msRP35JdQZlSmA/IRuTmKuxaeAwhbnQs24yheG4Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8QqsW88R9gBHASqHK+FwCfPCQD7sflWiw6oB5rxich8=;
 b=uNxzanyLo0Uwq7pBR3LIlFi1/Vk3m+DVyaStxKK3BTrJcFTqoJdKRnzOkeRl4r8+ouMgUmzzKqVzdJGP6hnrjBv1JaXXamVPhYDDFx1PS3qc5JQqa4N1rzsNvSPHfz9YD/2qcCKszcIg83hMGrR0tLhpOC1g5dyNBKSIpsJh7JY=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by BYASPR01MB10.namprd11.prod.outlook.com (2603:10b6:a02:92::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.13; Fri, 13 Mar
 2020 19:42:49 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:49 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 11/25] mtd: spi-nor: Move Fujitsu bits out of core.c
Thread-Topic: [PATCH v2 11/25] mtd: spi-nor: Move Fujitsu bits out of core.c
Thread-Index: AQHV+W+P5OP9VmS/j0KqafuphutXtw==
Date: Fri, 13 Mar 2020 19:42:42 +0000
Message-ID: <20200313194130.342251-12-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ce81dea2-8e54-4ccf-2047-08d7c786b63c
x-ms-traffictypediagnostic: BYASPR01MB10:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYASPR01MB10F90FE315F0929539FCEDF0FA0@BYASPR01MB10.namprd11.prod.outlook.com>
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
x-microsoft-antispam-message-info: Q3LTgMar/HBfKNMZZ1FH70I/sfi1nxesALudPWCr3LGqsm8oNLOtsEpPPh2LQKgZv2j90MQBZ/GUL25rclMtzA6b+1g4I/RFQP3kzgnmjW/TlyAbGGZ2jCelipz7adumwqbP0wU8hdULs6O0Q9wiBFcTT7c1Copp9hhI+Q8VHzNIvsiA1W622FL1Bj2SoLsG0auUsZnl7hyMLRQxec6ww0sjSROr0jc65XtrzkMiApPY8ib6QcApAXD4dSiYDfy/tYXr/VztYg3nCrH5a+A14yh3O0XOoUZ76RUEGs736btMDrB2VpELupE+KWtgC2uH0xiL30FRY+GOPfaV3pEdUzgC1AdrrsielFGd4xrOSCbewDhia8dtT9vS8QjqMDzSdcIfxUSBg7cvlr5j/Zu9SQySufplB+2zVHZdNW8exdUg0bBuWLvVY0noYt7mqQpg
x-ms-exchange-antispam-messagedata: wuJAfoldZ3FnWjZErcEH7r/sy60fb6Egiyu6t635NEXXvH6dnIckxK9c+Q8gEpi4nZLb3B5cIvylk+6f+JTGNiC7QISifXl1IU3NacMyXBPDZ/HMOFZe/RjKahCnmM/MfZ1dL9vP4WaE6Mn6Xk0ynw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ce81dea2-8e54-4ccf-2047-08d7c786b63c
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:42.5492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nuSuNL+TN+s07xvHELT1qvtJ8bPlbAIKHN3tkvOkP/L08ZHr95KIGwXeaQHCr7xlREu+Z8RvmBiPerQzUToS1n3GSlUU2werYXn9hfvxQEk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYASPR01MB10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124301_097273_04F6930D 
X-CRM114-Status: GOOD (  11.75  )
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
index bb824539fa97..3850c638f95a 100644
--- a/drivers/mtd/spi-nor/core.c
+++ b/drivers/mtd/spi-nor/core.c
@@ -2081,9 +2081,6 @@ static struct spi_nor_fixups gd25q256_fixups = {
  * old entries may be missing 4K flag.
  */
 static const struct flash_info spi_nor_ids[] = {
-	/* Fujitsu */
-	{ "mb85rs1mt", INFO(0x047f27, 0, 128 * 1024, 1, SPI_NOR_NO_ERASE) },
-
 	/* GigaDevice */
 	{
 		"gd25q16", INFO(0xc84015, 0, 64 * 1024,  32,
@@ -2432,6 +2429,7 @@ static const struct spi_nor_manufacturer *manufacturers[] = {
 	&spi_nor_eon,
 	&spi_nor_esmt,
 	&spi_nor_everspin,
+	&spi_nor_fujitsu,
 };
 
 static const struct flash_info *
diff --git a/drivers/mtd/spi-nor/core.h b/drivers/mtd/spi-nor/core.h
index 1a930b22ac45..d094112aa4a2 100644
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
