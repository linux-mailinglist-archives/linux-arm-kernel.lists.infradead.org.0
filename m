Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1DA8184F6C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 20:46:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/PSp2aduK5aknSnvydeWD5QHSG5h1E2KgFP3PogbXMU=; b=AtUic7LtzHu3H+
	44XL57hsxTehO6Bl9vx027F+N5kiZAmhVnVtdwCVA2PEfLfTCmY7Ezzr/hSOW5qUFdUyCA3+rI+iL
	nXdguv+xi2nQciOlWNgcnqYyn8JbKByRfWsf2JcZ6pIlkonnMapDNsm4hAs36jX3WGscmWsxEH9xU
	PT4YxR0g5A6Oc1JcLWlILmY6KOSahWS2GxZYi3utsSUt7T43qlVO2CPruJY2e60SdL5nLN2Cg60GM
	suacnkpSGOvuEZKKykWf55ilAMhaZ6zLT/B5T50WucpCvA3EECqn3ThNzCsQrQ7ez+HKbCjDVXKm8
	FMlUE7eQH7aXHKWPtKcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCqGL-0003N3-9E; Fri, 13 Mar 2020 19:46:29 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCqCm-0008Ik-OI; Fri, 13 Mar 2020 19:42:51 +0000
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
IronPort-SDR: 3J2EBTwUcZRk4Xfz4yfsxl3udMKM3kVISij5RF1LTenWigXeW1/64CWnC3Lno3tefEVuZgiWMo
 5eTfdqiV3goK3YCEHpx8K1HFIcB3WRKjQLD/mJBk+lvC2xsc0o71HV98BqsLTz69PnWp35uiA9
 UWDgFdkGtGz0OH5kPowTnQcX0MdRua4wnotqB8Chdu3pzFFjoEfC45INJKHrSHBwvlTd+6zakO
 AYrBQCPIwzkASSNrPXeSUyxWeE6QeWN1Xj2j0UBIhBJD7d8c8R0ylNNTg2lraVkoZPZszxosic
 W/0=
X-IronPort-AV: E=Sophos;i="5.70,549,1574146800"; 
   d="scan'208";a="5602898"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Mar 2020 12:42:43 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Mar 2020 12:42:31 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 13 Mar 2020 12:42:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kLrAIzJErol7kXoetskL0NZ+xUN35iBrJmKFwfFo078L8DJDtRSYxBRoK9Uh3iTipHeW6WEkCeme8F1TBj3x8HdQrtrAWfaH24LpKV4LVUep4hax3KPlDhQXpoTVuGGYtvwzvyJHZ4Q2TBVzAf7znkF7lrdhN2Yg2pp4EUXAiI5QXN0AX4QzbqcOf0ABH26JO3B5PyEems9MxWCEp4QBw293Gq3NwOVFFn/FHrdpsQJGt4IoaCawU1tiy5al1A/IApx885p4ZIOjsQ/NneqW9yW+sql/xjIwVLDs2UfEjmLMVc0INrsscH+MNrmMydeAAGCEZdMZUwX2vCegktwBxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nH3q/u1K0gemSjsw4RayWvLkVuTppadMjy3Trdcw4GE=;
 b=E6OM+iQnzBk+eieeC60sEjuEJEDvRl2PM2on3UtKl3Hd7LbDXDBQnM1w/f2Wkb7QTSDTC+0zxNwYN0H++HAiVAtgj38ovEZzWORxSLPi7NWw9CaFn4ZdLTIqniJJexMCpPShGlBdsfmG6QHhPuQKo1new7U/VktSaCuLs72MziYad8cVSXqbkuzJQ+H4BOxVdjCL+S6t0lKszKSFdMZCOlmHqV218jOk364vq5Wd19G0XxloRxQQkwK/+qf5MswnGqEPEh8F84npGlGpEjdDtD1itvmw4p0Oi5cY/UaiE+a9iSgR3MPNbsfde+8ysJLjZUFY/pgov8Sy17gbGGFSkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nH3q/u1K0gemSjsw4RayWvLkVuTppadMjy3Trdcw4GE=;
 b=KLZPrbSiBTrbQAsakayG7HpzlzwZfsLv2BWD44AwIxfTJmvGiz2HdxsoPsrh2zZXLpB0oeh8MbJnsZfRktCWVajx+6JwpajoExKUuhA/G3G3+voeKYmZW1iQnGYsa9jUz+4VQF3qzIuc1NuE8jQ5OATZ4Xr1yKzTKGKi8qKLvRk=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4399.namprd11.prod.outlook.com (2603:10b6:208:17b::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.15; Fri, 13 Mar
 2020 19:42:36 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2793.018; Fri, 13 Mar 2020
 19:42:36 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>
Subject: [PATCH v2 03/25] mtd: spi-nor: Prepare core / manufacturer code split
Thread-Topic: [PATCH v2 03/25] mtd: spi-nor: Prepare core / manufacturer code
 split
Thread-Index: AQHV+W+LR17gOMNel0mvf/SQfYQ4XA==
Date: Fri, 13 Mar 2020 19:42:36 +0000
Message-ID: <20200313194130.342251-4-tudor.ambarus@microchip.com>
References: <20200313194130.342251-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200313194130.342251-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 67dd7722-afeb-4665-c7a5-08d7c786ae64
x-ms-traffictypediagnostic: MN2PR11MB4399:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4399DC3E78BAC22530383558F0FA0@MN2PR11MB4399.namprd11.prod.outlook.com>
x-bypassexternaltag: True
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 034119E4F6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(136003)(396003)(366004)(39860400002)(199004)(316002)(2616005)(186003)(71200400001)(81156014)(110136005)(26005)(86362001)(107886003)(8936002)(30864003)(54906003)(6512007)(8676002)(76116006)(91956017)(66946007)(66556008)(66476007)(66446008)(64756008)(81166006)(478600001)(4326008)(5660300002)(1076003)(6506007)(6486002)(36756003)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4399;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CXGbaCvmCUaKEgcJdP3zRryMcy3fFmS6GoOduBtQzPBQqPl03Cs44CXJLxMkccJBBi7L8BnlQjoC4pyPEedLq8kIxSq/EtBeosZ7pyqI4Jm6KeLdZ43LjnhkT8FOD9de5lWyQDhKBRn4j0Lbx5osWpffq+oxex1WaGgv3qMZkLHRqld9iq4H4/FFLLLxty1D5xINuENZ6Ml4grmtC6V6RAg+8VWkzZl4biuKqvi4I5ZcNP+rsd+YRvxNiNwajnfL6ljwDkFy+xrhR9HYHpaj9N0JPxXc1JZbFU7Bt8Fjb/+K3BgjP1AAAvOcloIRX0p1uZoM1IwyOk/g1VW7/Hi4Tc2pJtzWJNjGoGURE9VxggXJMIHJMqOqHc1ScvzGQjtRvHTNCNOreaJqmgCkmw/ti3KzmdIFCjrKvqhX06J1iNhwl2ethu6K/jgNc7q9MxYc
x-ms-exchange-antispam-messagedata: c4qnZuBzWc0lbJAC4dQUM2ilNas92qNkkzEvwcihtkpOim8rzeM1DhsQe7noJHMOuPwoNmRpLL3vA7WrpmHqGL0IQhu1Jx4JLZSYHnd1+3m2XpabrnvODaMT05lSnwn3pe0xqdhqzF1EG16mNQwzNA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 67dd7722-afeb-4665-c7a5-08d7c786ae64
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2020 19:42:36.0420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 76zzrhTXapVGw5io3/yo1AvLUbTr8q+6qIwLWjkAn7bgmDsv7m5lqNvmj+tjqsEX1SpP9cYtXm6CTHrvFBwpCBCuh/l8snVhF38wWTx0dPU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4399
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_124248_861944_EA5F8B91 
X-CRM114-Status: GOOD (  16.05  )
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

Move all SPI NOR controller drivers to a controllers/ sub-directory
so that we only have SPI NOR related source files under
drivers/mtd/spi-nor/.

Rename spi-nor.c into core.c, we are about to split this file in multiple
source files (one per manufacturer, plus one for the SFDP parsing logic).

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Reviewed-by: Vignesh Raghavendra <vigneshr@ti.com>
---
 drivers/mtd/spi-nor/Kconfig                   | 75 +------------------
 drivers/mtd/spi-nor/Makefile                  |  9 +--
 drivers/mtd/spi-nor/controllers/Kconfig       | 75 +++++++++++++++++++
 drivers/mtd/spi-nor/controllers/Makefile      |  8 ++
 .../spi-nor/{ => controllers}/aspeed-smc.c    |  0
 .../{ => controllers}/cadence-quadspi.c       |  0
 .../mtd/spi-nor/{ => controllers}/hisi-sfc.c  |  0
 .../spi-nor/{ => controllers}/intel-spi-pci.c |  0
 .../{ => controllers}/intel-spi-platform.c    |  0
 .../mtd/spi-nor/{ => controllers}/intel-spi.c |  0
 .../mtd/spi-nor/{ => controllers}/intel-spi.h |  0
 .../mtd/spi-nor/{ => controllers}/nxp-spifi.c |  0
 drivers/mtd/spi-nor/{spi-nor.c => core.c}     |  0
 13 files changed, 86 insertions(+), 81 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/controllers/Kconfig
 create mode 100644 drivers/mtd/spi-nor/controllers/Makefile
 rename drivers/mtd/spi-nor/{ => controllers}/aspeed-smc.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/cadence-quadspi.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/hisi-sfc.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/intel-spi-pci.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/intel-spi-platform.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/intel-spi.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/intel-spi.h (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/nxp-spifi.c (100%)
 rename drivers/mtd/spi-nor/{spi-nor.c => core.c} (100%)

diff --git a/drivers/mtd/spi-nor/Kconfig b/drivers/mtd/spi-nor/Kconfig
index 267b9000782e..6e816eafb312 100644
--- a/drivers/mtd/spi-nor/Kconfig
+++ b/drivers/mtd/spi-nor/Kconfig
@@ -24,79 +24,6 @@ config MTD_SPI_NOR_USE_4K_SECTORS
 	  Please note that some tools/drivers/filesystems may not work with
 	  4096 B erase size (e.g. UBIFS requires 15 KiB as a minimum).
 
-config SPI_ASPEED_SMC
-	tristate "Aspeed flash controllers in SPI mode"
-	depends on ARCH_ASPEED || COMPILE_TEST
-	depends on HAS_IOMEM && OF
-	help
-	  This enables support for the Firmware Memory controller (FMC)
-	  in the Aspeed AST2500/AST2400 SoCs when attached to SPI NOR chips,
-	  and support for the SPI flash memory controller (SPI) for
-	  the host firmware. The implementation only supports SPI NOR.
-
-config SPI_CADENCE_QUADSPI
-	tristate "Cadence Quad SPI controller"
-	depends on OF && (ARM || ARM64 || COMPILE_TEST)
-	help
-	  Enable support for the Cadence Quad SPI Flash controller.
-
-	  Cadence QSPI is a specialized controller for connecting an SPI
-	  Flash over 1/2/4-bit wide bus. Enable this option if you have a
-	  device with a Cadence QSPI controller and want to access the
-	  Flash as an MTD device.
-
-config SPI_HISI_SFC
-	tristate "Hisilicon FMC SPI-NOR Flash Controller(SFC)"
-	depends on ARCH_HISI || COMPILE_TEST
-	depends on HAS_IOMEM
-	help
-	  This enables support for HiSilicon FMC SPI-NOR flash controller.
-
-config SPI_NXP_SPIFI
-	tristate "NXP SPI Flash Interface (SPIFI)"
-	depends on OF && (ARCH_LPC18XX || COMPILE_TEST)
-	depends on HAS_IOMEM
-	help
-	  Enable support for the NXP LPC SPI Flash Interface controller.
-
-	  SPIFI is a specialized controller for connecting serial SPI
-	  Flash. Enable this option if you have a device with a SPIFI
-	  controller and want to access the Flash as a mtd device.
-
-config SPI_INTEL_SPI
-	tristate
-
-config SPI_INTEL_SPI_PCI
-	tristate "Intel PCH/PCU SPI flash PCI driver (DANGEROUS)"
-	depends on X86 && PCI
-	select SPI_INTEL_SPI
-	help
-	  This enables PCI support for the Intel PCH/PCU SPI controller in
-	  master mode. This controller is present in modern Intel hardware
-	  and is used to hold BIOS and other persistent settings. Using
-	  this driver it is possible to upgrade BIOS directly from Linux.
-
-	  Say N here unless you know what you are doing. Overwriting the
-	  SPI flash may render the system unbootable.
-
-	  To compile this driver as a module, choose M here: the module
-	  will be called intel-spi-pci.
-
-config SPI_INTEL_SPI_PLATFORM
-	tristate "Intel PCH/PCU SPI flash platform driver (DANGEROUS)"
-	depends on X86
-	select SPI_INTEL_SPI
-	help
-	  This enables platform support for the Intel PCH/PCU SPI
-	  controller in master mode. This controller is present in modern
-	  Intel hardware and is used to hold BIOS and other persistent
-	  settings. Using this driver it is possible to upgrade BIOS
-	  directly from Linux.
-
-	  Say N here unless you know what you are doing. Overwriting the
-	  SPI flash may render the system unbootable.
-
-	  To compile this driver as a module, choose M here: the module
-	  will be called intel-spi-platform.
+source "drivers/mtd/spi-nor/controllers/Kconfig"
 
 endif # MTD_SPI_NOR
diff --git a/drivers/mtd/spi-nor/Makefile b/drivers/mtd/spi-nor/Makefile
index 738dfd74cf76..d6fc70ab4a32 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -1,9 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
+
+spi-nor-objs			:= core.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
-obj-$(CONFIG_SPI_ASPEED_SMC)	+= aspeed-smc.o
-obj-$(CONFIG_SPI_CADENCE_QUADSPI)	+= cadence-quadspi.o
-obj-$(CONFIG_SPI_HISI_SFC)	+= hisi-sfc.o
-obj-$(CONFIG_SPI_NXP_SPIFI)	+= nxp-spifi.o
-obj-$(CONFIG_SPI_INTEL_SPI)	+= intel-spi.o
-obj-$(CONFIG_SPI_INTEL_SPI_PCI)	+= intel-spi-pci.o
-obj-$(CONFIG_SPI_INTEL_SPI_PLATFORM)	+= intel-spi-platform.o
diff --git a/drivers/mtd/spi-nor/controllers/Kconfig b/drivers/mtd/spi-nor/controllers/Kconfig
new file mode 100644
index 000000000000..10b86660b821
--- /dev/null
+++ b/drivers/mtd/spi-nor/controllers/Kconfig
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: GPL-2.0-only
+config SPI_ASPEED_SMC
+	tristate "Aspeed flash controllers in SPI mode"
+	depends on ARCH_ASPEED || COMPILE_TEST
+	depends on HAS_IOMEM && OF
+	help
+	  This enables support for the Firmware Memory controller (FMC)
+	  in the Aspeed AST2500/AST2400 SoCs when attached to SPI NOR chips,
+	  and support for the SPI flash memory controller (SPI) for
+	  the host firmware. The implementation only supports SPI NOR.
+
+config SPI_CADENCE_QUADSPI
+	tristate "Cadence Quad SPI controller"
+	depends on OF && (ARM || ARM64 || COMPILE_TEST)
+	help
+	  Enable support for the Cadence Quad SPI Flash controller.
+
+	  Cadence QSPI is a specialized controller for connecting an SPI
+	  Flash over 1/2/4-bit wide bus. Enable this option if you have a
+	  device with a Cadence QSPI controller and want to access the
+	  Flash as an MTD device.
+
+config SPI_HISI_SFC
+	tristate "Hisilicon FMC SPI-NOR Flash Controller(SFC)"
+	depends on ARCH_HISI || COMPILE_TEST
+	depends on HAS_IOMEM
+	help
+	  This enables support for HiSilicon FMC SPI-NOR flash controller.
+
+config SPI_NXP_SPIFI
+	tristate "NXP SPI Flash Interface (SPIFI)"
+	depends on OF && (ARCH_LPC18XX || COMPILE_TEST)
+	depends on HAS_IOMEM
+	help
+	  Enable support for the NXP LPC SPI Flash Interface controller.
+
+	  SPIFI is a specialized controller for connecting serial SPI
+	  Flash. Enable this option if you have a device with a SPIFI
+	  controller and want to access the Flash as a mtd device.
+
+config SPI_INTEL_SPI
+	tristate
+
+config SPI_INTEL_SPI_PCI
+	tristate "Intel PCH/PCU SPI flash PCI driver (DANGEROUS)"
+	depends on X86 && PCI
+	select SPI_INTEL_SPI
+	help
+	  This enables PCI support for the Intel PCH/PCU SPI controller in
+	  master mode. This controller is present in modern Intel hardware
+	  and is used to hold BIOS and other persistent settings. Using
+	  this driver it is possible to upgrade BIOS directly from Linux.
+
+	  Say N here unless you know what you are doing. Overwriting the
+	  SPI flash may render the system unbootable.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called intel-spi-pci.
+
+config SPI_INTEL_SPI_PLATFORM
+	tristate "Intel PCH/PCU SPI flash platform driver (DANGEROUS)"
+	depends on X86
+	select SPI_INTEL_SPI
+	help
+	  This enables platform support for the Intel PCH/PCU SPI
+	  controller in master mode. This controller is present in modern
+	  Intel hardware and is used to hold BIOS and other persistent
+	  settings. Using this driver it is possible to upgrade BIOS
+	  directly from Linux.
+
+	  Say N here unless you know what you are doing. Overwriting the
+	  SPI flash may render the system unbootable.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called intel-spi-platform.
diff --git a/drivers/mtd/spi-nor/controllers/Makefile b/drivers/mtd/spi-nor/controllers/Makefile
new file mode 100644
index 000000000000..46e6fbe586e3
--- /dev/null
+++ b/drivers/mtd/spi-nor/controllers/Makefile
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_SPI_ASPEED_SMC)	+= aspeed-smc.o
+obj-$(CONFIG_SPI_CADENCE_QUADSPI)	+= cadence-quadspi.o
+obj-$(CONFIG_SPI_HISI_SFC)	+= hisi-sfc.o
+obj-$(CONFIG_SPI_NXP_SPIFI)	+= nxp-spifi.o
+obj-$(CONFIG_SPI_INTEL_SPI)	+= intel-spi.o
+obj-$(CONFIG_SPI_INTEL_SPI_PCI)	+= intel-spi-pci.o
+obj-$(CONFIG_SPI_INTEL_SPI_PLATFORM)	+= intel-spi-platform.o
diff --git a/drivers/mtd/spi-nor/aspeed-smc.c b/drivers/mtd/spi-nor/controllers/aspeed-smc.c
similarity index 100%
rename from drivers/mtd/spi-nor/aspeed-smc.c
rename to drivers/mtd/spi-nor/controllers/aspeed-smc.c
diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/controllers/cadence-quadspi.c
similarity index 100%
rename from drivers/mtd/spi-nor/cadence-quadspi.c
rename to drivers/mtd/spi-nor/controllers/cadence-quadspi.c
diff --git a/drivers/mtd/spi-nor/hisi-sfc.c b/drivers/mtd/spi-nor/controllers/hisi-sfc.c
similarity index 100%
rename from drivers/mtd/spi-nor/hisi-sfc.c
rename to drivers/mtd/spi-nor/controllers/hisi-sfc.c
diff --git a/drivers/mtd/spi-nor/intel-spi-pci.c b/drivers/mtd/spi-nor/controllers/intel-spi-pci.c
similarity index 100%
rename from drivers/mtd/spi-nor/intel-spi-pci.c
rename to drivers/mtd/spi-nor/controllers/intel-spi-pci.c
diff --git a/drivers/mtd/spi-nor/intel-spi-platform.c b/drivers/mtd/spi-nor/controllers/intel-spi-platform.c
similarity index 100%
rename from drivers/mtd/spi-nor/intel-spi-platform.c
rename to drivers/mtd/spi-nor/controllers/intel-spi-platform.c
diff --git a/drivers/mtd/spi-nor/intel-spi.c b/drivers/mtd/spi-nor/controllers/intel-spi.c
similarity index 100%
rename from drivers/mtd/spi-nor/intel-spi.c
rename to drivers/mtd/spi-nor/controllers/intel-spi.c
diff --git a/drivers/mtd/spi-nor/intel-spi.h b/drivers/mtd/spi-nor/controllers/intel-spi.h
similarity index 100%
rename from drivers/mtd/spi-nor/intel-spi.h
rename to drivers/mtd/spi-nor/controllers/intel-spi.h
diff --git a/drivers/mtd/spi-nor/nxp-spifi.c b/drivers/mtd/spi-nor/controllers/nxp-spifi.c
similarity index 100%
rename from drivers/mtd/spi-nor/nxp-spifi.c
rename to drivers/mtd/spi-nor/controllers/nxp-spifi.c
diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/core.c
similarity index 100%
rename from drivers/mtd/spi-nor/spi-nor.c
rename to drivers/mtd/spi-nor/core.c
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
