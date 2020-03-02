Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7294C176212
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:11:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DkPiHc6Tu9y5DwKWDBw3PX9N/edWesVtlgx1d0Tp+zg=; b=am+W4Hab/Mx1WH
	xSqZihFPqXmj26dvzTHdzwnE3cndht8rxNc/fbcp0Ezh+k0nG9EjVrwBlz+E1v0RNRfhC1n1plsO0
	gqmIapuPV3yngr8C4DwjjqeD6ea7D+tO8O7j6UMGaPjUSO/zHe9hTQjQpudaXk1IDjHZK9ZPPT+lB
	M/vkVaW9dUD3alrCTSieHGFM0XBm77SddT16MVYtc7Vb88UsAlS+kO/FRfzPWGJqHLU3r7qhy/jGe
	Hi0bAbaQNIxiLI4w7Baj3iO89FmggmvYMQGlvJSqvicNxug0oGZdpkY7C6sxnITqp0DjP2Kdrcw0a
	EnnxQ4WEi3bcAA3oE0uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pX4-0006OW-Du; Mon, 02 Mar 2020 18:11:10 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pTs-0002mS-P9; Mon, 02 Mar 2020 18:07:55 +0000
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
IronPort-SDR: uhxCy27+Ur3i9ItUaTrI/LQaQp2hVJNRwWTHljDJhgyK/fr2+sQO7C/anq9iOQ1zO9Qv5zy9HJ
 bmZuNqMEF30vF1mD7FD9thYIz3G9IZyv/0CFTfpM5qy8dD04CwyyT4sbamWEneV2HJbhGexteE
 ObH1nlprDJf6GcriK0S/pjR0e+WgvndI/gNrXk6E6TIfKe/QuIc6IzHz+7usRVIZc/y2Mt2Mso
 Opqdxt4pkJoeaLWbgG9tZ9hAyPsTYjqPdASvskxm2d3mpb1yHlTVf0V1Mk3N91xSZLiAK1Qr4f
 rwU=
X-IronPort-AV: E=Sophos;i="5.70,507,1574146800"; d="scan'208";a="67338180"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 02 Mar 2020 11:07:49 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Mar 2020 11:07:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Mon, 2 Mar 2020 11:08:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uyeozx439EqpHYRGNCxgo3mqE+BMShQGYRBK6V3TUTBZoJ7kKThocEwj2IWXZ0gwtM9lhBk+ypJilZc8+P9tl4rEnvvsc2lGjXCqrT58raCaQ85sJtMJvFZkGZo/MbMipkMzF7sQF8jBTePYEdo9KXliu2+14PR8IhcFxtCFz+V1ApT2gxp8t4wdOHRKeMKyfQjNSMqiJtXyhdNecbmviE5VsicmHwwmGQQI10mqzc7P01k6mxftNBuLEXjzm7UWuuI2ZEyw9VOU52gXR62W1j1NmC7Pu8eQu2HKJZrPFgBzWXfcshPZNO4YAvYa7OXKaJglFbsV0vW/kwdVuQ8y7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OPxrkCkQqNqU+b6FFgkNl9EYaqH0JCZOmu++pJgNvEg=;
 b=nP482CSyhvu59jrbc4BOsmWiUPPqDEK3lEtzrCwlm4sKyVVxIBGcfabPRveI02zKpPunFs8Hn/cDewO7tLDbBoaTprE71rcz2t91t+SW5GZRj8e6OOfJiD/oLfi04LShIyJlhu+2B57ziwQ4+xbZAdJnjebMJUftR5kirKoZw2lqXSuQvVLaH+qujVw8/CbbOYVtEAnxhVf5kA/Z2nek91vxoinnGJ8OV6UygyUcAAwOKlV805HFSnuiJgwubujlmUJDdVsLY8JoXVuy/e2je5Zl9y3HxYMtxzHErRP0ldusDGb4bob4sPkDHBJy1jXwmLi0zW5trMN8jBZVmai6VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OPxrkCkQqNqU+b6FFgkNl9EYaqH0JCZOmu++pJgNvEg=;
 b=pnTkZw2LPCMYavsvelh8mN7wfcyw1FaPca6/R4mcYltogAiAFx73OEJqK06+wjI0ub1Vlm/aw8ovraxex9xNa3M8Z5HwPnEw1yJBkBaMtW+02Aj1DUHtiwt94OraNUnseEYZs1zwiuJgbRhg4me6QTDYMYFxNjMSWn8mo5aZRyo=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (2603:10b6:208:193::29)
 by MN2PR11MB4142.namprd11.prod.outlook.com (2603:10b6:208:135::29)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14; Mon, 2 Mar
 2020 18:07:46 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::3c8f:7a55:cbd:adfb%5]) with mapi id 15.20.2772.019; Mon, 2 Mar 2020
 18:07:46 +0000
From: <Tudor.Ambarus@microchip.com>
To: <bbrezillon@kernel.org>, <vigneshr@ti.com>, <linux-mtd@lists.infradead.org>
Subject: [PATCH 02/23] mtd: spi-nor: Prepare core / manufacturer code split
Thread-Topic: [PATCH 02/23] mtd: spi-nor: Prepare core / manufacturer code
 split
Thread-Index: AQHV8L15nmnasgoh8EaqP5eIJ1zhFQ==
Date: Mon, 2 Mar 2020 18:07:45 +0000
Message-ID: <20200302180730.1886678-3-tudor.ambarus@microchip.com>
References: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
In-Reply-To: <20200302180730.1886678-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fd8f7729-a5e2-46b4-c54d-08d7bed49cae
x-ms-traffictypediagnostic: MN2PR11MB4142:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4142F599D5197D258DCF9832F0E70@MN2PR11MB4142.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 033054F29A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(39860400002)(136003)(396003)(376002)(189003)(199004)(36756003)(26005)(66446008)(107886003)(6486002)(186003)(2616005)(4326008)(478600001)(6512007)(91956017)(64756008)(66946007)(2906002)(71200400001)(76116006)(8936002)(316002)(30864003)(86362001)(54906003)(6506007)(66556008)(5660300002)(66476007)(7406005)(1076003)(7416002)(81156014)(81166006)(110136005)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4142;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gGGNcJiFiEaJME6HBC1zqZyw4UjhiMxiI2KRyOC/JZhdiV3dAKnOSr7+3at57xrF8n6hQJKv5A1l6i0R7u0GAZimLGd3qMvPw/rPVpLvr+RgWrzEs2YTauOGwp1AbnW4ajqt+B8zBuzOi6vZEL+oh0ArRvylnP5b7EqCObGL0zhxLsO/g/MRGhlYY6/agkqslzlGAOn4nzA+rfzLDr7TeHxmKX5Csi2ZGvWAsjB5Einh5TjyfwA/iwsUSOeZhtDUlya9FBMEAkKaU44+FjNB6soLufjEtav3KzGBkpL9EM0c1+r7luqGRfmDq9TAa1297tqpKsdaTLGYdJGj24umeO301ww/LvRuvEm8eVT5rh/EbizfH+5dQdRdDEbBtrGpKBjyu/tULn9xiRdTqgnQIEBidxyOsPJuts92DDhM2CjewWCbJmMrrVKfhUvxotqU
x-ms-exchange-antispam-messagedata: /JaGTzZKH+W755wTw/FVm36Xauo+5NXX4HzeCk79UIz3hU3HhTPl3ar9my33QUpO0t/nEpLGqlW3/6gdnlXy+2tBr0Aolo/Dd0yxPs6W0b3Nvn7wdANCHLDdPhwzFZtlPyBJ/yewwbXXGoqPUSCP6Q==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: fd8f7729-a5e2-46b4-c54d-08d7bed49cae
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2020 18:07:45.3916 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1iO0e1XQ+CvS1E+ksDIl0zkowoV7v3SXtJhUnkJbWP6hGde/4cLITcJK9AwwjBU6f4Bd0AVJEHJV7NhYrwWulB10YTO7WHWuz8Y36sr6H+0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4142
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_100752_937763_AAD98762 
X-CRM114-Status: GOOD (  14.84  )
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

Move all SPI NOR controller drivers to a controllers/ sub-directory
so that we only have SPI NOR related source files under
drivers/mtd/spi-nor/.

Rename spi-nor.c into core.c, we are about to split this file in multiple
source files (one per manufacturer, plus one for the SFDP parsing logic).

Signed-off-by: Boris Brezillon <bbrezillon@kernel.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
---
 drivers/mtd/spi-nor/Kconfig                   | 83 +------------------
 drivers/mtd/spi-nor/Makefile                  | 10 +--
 drivers/mtd/spi-nor/controllers/Kconfig       | 83 +++++++++++++++++++
 drivers/mtd/spi-nor/controllers/Makefile      |  9 ++
 .../spi-nor/{ => controllers}/aspeed-smc.c    |  0
 .../{ => controllers}/cadence-quadspi.c       |  0
 .../mtd/spi-nor/{ => controllers}/hisi-sfc.c  |  0
 .../spi-nor/{ => controllers}/intel-spi-pci.c |  0
 .../{ => controllers}/intel-spi-platform.c    |  0
 .../mtd/spi-nor/{ => controllers}/intel-spi.c |  0
 .../mtd/spi-nor/{ => controllers}/intel-spi.h |  0
 .../spi-nor/{ => controllers}/mtk-quadspi.c   |  0
 .../mtd/spi-nor/{ => controllers}/nxp-spifi.c |  0
 drivers/mtd/spi-nor/{spi-nor.c => core.c}     |  0
 14 files changed, 95 insertions(+), 90 deletions(-)
 create mode 100644 drivers/mtd/spi-nor/controllers/Kconfig
 create mode 100644 drivers/mtd/spi-nor/controllers/Makefile
 rename drivers/mtd/spi-nor/{ => controllers}/aspeed-smc.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/cadence-quadspi.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/hisi-sfc.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/intel-spi-pci.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/intel-spi-platform.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/intel-spi.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/intel-spi.h (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/mtk-quadspi.c (100%)
 rename drivers/mtd/spi-nor/{ => controllers}/nxp-spifi.c (100%)
 rename drivers/mtd/spi-nor/{spi-nor.c => core.c} (100%)

diff --git a/drivers/mtd/spi-nor/Kconfig b/drivers/mtd/spi-nor/Kconfig
index c1eda67d1ad2..6e816eafb312 100644
--- a/drivers/mtd/spi-nor/Kconfig
+++ b/drivers/mtd/spi-nor/Kconfig
@@ -24,87 +24,6 @@ config MTD_SPI_NOR_USE_4K_SECTORS
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
-config SPI_MTK_QUADSPI
-	tristate "MediaTek Quad SPI controller"
-	depends on HAS_IOMEM
-	help
-	  This enables support for the Quad SPI controller in master mode.
-	  This controller does not support generic SPI. It only supports
-	  SPI NOR.
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
index 9c5ed03cdc19..d6fc70ab4a32 100644
--- a/drivers/mtd/spi-nor/Makefile
+++ b/drivers/mtd/spi-nor/Makefile
@@ -1,10 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
+
+spi-nor-objs			:= core.o
 obj-$(CONFIG_MTD_SPI_NOR)	+= spi-nor.o
-obj-$(CONFIG_SPI_ASPEED_SMC)	+= aspeed-smc.o
-obj-$(CONFIG_SPI_CADENCE_QUADSPI)	+= cadence-quadspi.o
-obj-$(CONFIG_SPI_HISI_SFC)	+= hisi-sfc.o
-obj-$(CONFIG_SPI_MTK_QUADSPI)    += mtk-quadspi.o
-obj-$(CONFIG_SPI_NXP_SPIFI)	+= nxp-spifi.o
-obj-$(CONFIG_SPI_INTEL_SPI)	+= intel-spi.o
-obj-$(CONFIG_SPI_INTEL_SPI_PCI)	+= intel-spi-pci.o
-obj-$(CONFIG_SPI_INTEL_SPI_PLATFORM)	+= intel-spi-platform.o
diff --git a/drivers/mtd/spi-nor/controllers/Kconfig b/drivers/mtd/spi-nor/controllers/Kconfig
new file mode 100644
index 000000000000..a02feb201a5b
--- /dev/null
+++ b/drivers/mtd/spi-nor/controllers/Kconfig
@@ -0,0 +1,83 @@
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
+config SPI_MTK_QUADSPI
+	tristate "MediaTek Quad SPI controller"
+	depends on HAS_IOMEM
+	help
+	  This enables support for the Quad SPI controller in master mode.
+	  This controller does not support generic SPI. It only supports
+	  SPI NOR.
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
index 000000000000..c9a39992d63d
--- /dev/null
+++ b/drivers/mtd/spi-nor/controllers/Makefile
@@ -0,0 +1,9 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_SPI_ASPEED_SMC)	+= aspeed-smc.o
+obj-$(CONFIG_SPI_CADENCE_QUADSPI)	+= cadence-quadspi.o
+obj-$(CONFIG_SPI_HISI_SFC)	+= hisi-sfc.o
+obj-$(CONFIG_SPI_MTK_QUADSPI)    += mtk-quadspi.o
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
diff --git a/drivers/mtd/spi-nor/mtk-quadspi.c b/drivers/mtd/spi-nor/controllers/mtk-quadspi.c
similarity index 100%
rename from drivers/mtd/spi-nor/mtk-quadspi.c
rename to drivers/mtd/spi-nor/controllers/mtk-quadspi.c
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
