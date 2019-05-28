Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7472BF8E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 08:50:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wju5m8UJ9zBSYXflwWFf0sf/CD20EEKfRNa+0JCeZ/k=; b=g1lBiLeEy9UMSN
	XU2zpVH217qWwGaX89JY5ns1UO2cq5kCJmJazQHTU/PS73XG7LDgMH/KFA7XKAAl0EN5fQOY5Edte
	Q87vq4pUT7R14Rv1d6LXdPMKoPjL3kjHJvFdLgYwOIqTq1Fnm4Yypv41FVObdYyjTZNCQdWYffXYi
	37skCGNJnbR+2w0l7NNVHVotWXBANzILRobMLxsq0RAr905Dug7lRL59zzqbahojY0S8tdjUD+sFo
	S2pMDPLi/JVdIpPH5rs9S35HTDGYe7F+xff61RjItFFfw5akvXKQNI4+qAK6Y5gkd1MyHKRUgVCBJ
	KfAVvRlQR0a1zQ3YD+7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVVwO-0003by-Sp; Tue, 28 May 2019 06:50:32 +0000
Received: from mail-eopbgr30067.outbound.protection.outlook.com ([40.107.3.67]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVVw0-0002ni-Ou
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 06:50:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=69AXWwd7FGUA8w/3gOn+ZaO4OfmeCyauyTyV+1ZjaWk=;
 b=lI2ybSBGx5dQtl5M8m+/3XBUoM3Yyadb0R3/g4s0E1tDxzvN2uo/v3Z9gX63WoMIsdBP7J5YwqcxzEEMUQheAUaKwi7/fF7JwA5GHmNAGb/U5jLr+UX9t5vbn4V902t5mIXTX7lNHyVwei1wygefdN/G4ddQBKKVmp1XDenI+LM=
Received: from AM6PR04MB5781.eurprd04.prod.outlook.com (20.179.3.19) by
 AM6PR04MB5495.eurprd04.prod.outlook.com (20.178.93.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 28 May 2019 06:50:05 +0000
Received: from AM6PR04MB5781.eurprd04.prod.outlook.com
 ([fe80::6491:59e7:6b25:2993]) by AM6PR04MB5781.eurprd04.prod.outlook.com
 ([fe80::6491:59e7:6b25:2993%7]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 06:50:05 +0000
From: "Z.q. Hou" <zhiqiang.hou@nxp.com>
To: "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "bhelgaas@google.com" <bhelgaas@google.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "arnd@arndb.de" <arnd@arndb.de>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "l.subrahmanya@mobiveil.co.in"
 <l.subrahmanya@mobiveil.co.in>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "m.karthikeyan@mobiveil.co.in" <m.karthikeyan@mobiveil.co.in>, Leo Li
 <leoyang.li@nxp.com>, "lorenzo.pieralisi@arm.com"
 <lorenzo.pieralisi@arm.com>, "catalin.marinas@arm.com"
 <catalin.marinas@arm.com>, "will.deacon@arm.com" <will.deacon@arm.com>
Subject: [PATCHv6 1/6] PCI: mobiveil: Refactor Mobiveil PCIe Host Bridge IP
 driver
Thread-Topic: [PATCHv6 1/6] PCI: mobiveil: Refactor Mobiveil PCIe Host Bridge
 IP driver
Thread-Index: AQHVFSGUU+6v/wCRD066pQxla4GBKw==
Date: Tue, 28 May 2019 06:50:04 +0000
Message-ID: <20190528065129.8769-2-Zhiqiang.Hou@nxp.com>
References: <20190528065129.8769-1-Zhiqiang.Hou@nxp.com>
In-Reply-To: <20190528065129.8769-1-Zhiqiang.Hou@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR02CA0128.apcprd02.prod.outlook.com
 (2603:1096:202:16::12) To AM6PR04MB5781.eurprd04.prod.outlook.com
 (2603:10a6:20b:ad::19)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=zhiqiang.hou@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 53fe8f15-2044-4e4b-b66e-08d6e338b69f
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:AM6PR04MB5495; 
x-ms-traffictypediagnostic: AM6PR04MB5495:
x-microsoft-antispam-prvs: <AM6PR04MB549531A22A6DDB5A16AFDADF841E0@AM6PR04MB5495.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(376002)(366004)(136003)(346002)(199004)(189003)(2501003)(6486002)(86362001)(6116002)(6436002)(66066001)(53946003)(6512007)(2201001)(386003)(2906002)(53936002)(25786009)(3846002)(7416002)(4326008)(71200400001)(71190400001)(66476007)(54906003)(5024004)(11346002)(81156014)(73956011)(64756008)(66556008)(50226002)(8676002)(316002)(5660300002)(81166006)(8936002)(110136005)(305945005)(76176011)(102836004)(52116002)(14444005)(186003)(26005)(36756003)(68736007)(6506007)(7736002)(256004)(446003)(478600001)(30864003)(486006)(1076003)(99286004)(66946007)(66446008)(2616005)(476003)(14454004)(921003)(1121003)(559001)(579004)(569006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5495;
 H:AM6PR04MB5781.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: svn4eOVo2WQ38Eoohg/qdX3mhj66E1kwGnvxdkk37BdSX3pLbjsTCcBN0NH3nwKITpK9rSuSOWg4nDPhnKI9MSi476TajqNsPNMAbHZ2Tm2G0WX6lnZu2r36AeAdbEp49mQBqwhEeEzTyaMvhQbmJf2fRfFjPROM67nLKjv1eFpXF9Frv5UX3ow0K9Fen4w2h1EWnviA7ZEORbwzmuKivTB2/y31knLLpD1EPNs+4gpcYCLdNa58sbgH42yGEJ1/3YnezpNjNkBfw3fdOoX5mevEZZ6U1fKsDprwyy9wIGA+Xrdnj4+qopCsznVMYf19YkEnTgkMFFKm44yg9qEjcjZvSKIAuwx6H5bF13d9zMSoiZEcE3vUAWlKCG40a0s93FrOdvTXg/3ftjJXyErGaRwDZHpvl10cjcKciP7v7rI=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 53fe8f15-2044-4e4b-b66e-08d6e338b69f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 06:50:04.8453 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zhiqiang.hou@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5495
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_235009_451260_A9562D6E 
X-CRM114-Status: GOOD (  18.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "M.h. Lian" <minghuan.lian@nxp.com>, "Z.q. Hou" <zhiqiang.hou@nxp.com>,
 Xiaowei Bao <xiaowei.bao@nxp.com>, Mingkai Hu <mingkai.hu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

Refactor the Mobiveil PCIe Host Bridge IP driver to make
it easier to add support for both RC and EP mode driver.
This patch moved the Mobiveil driver to an new directory
'drivers/pci/controller/mobiveil' and refactor it according
to the RC and EP abstraction.

Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
---
V6:
 - Move the allocation of host birdge structure to main driver,
   and squash the allocation of private structure into the host
   bridge structure allocation.

 MAINTAINERS                                   |   2 +-
 drivers/pci/controller/Kconfig                |  11 +-
 drivers/pci/controller/Makefile               |   2 +-
 drivers/pci/controller/mobiveil/Kconfig       |  24 +
 drivers/pci/controller/mobiveil/Makefile      |   4 +
 .../pcie-mobiveil-host.c}                     | 569 +++---------------
 .../controller/mobiveil/pcie-mobiveil-plat.c  |  59 ++
 .../pci/controller/mobiveil/pcie-mobiveil.c   | 248 ++++++++
 .../pci/controller/mobiveil/pcie-mobiveil.h   | 212 +++++++
 9 files changed, 637 insertions(+), 494 deletions(-)
 create mode 100644 drivers/pci/controller/mobiveil/Kconfig
 create mode 100644 drivers/pci/controller/mobiveil/Makefile
 rename drivers/pci/controller/{pcie-mobiveil.c => mobiveil/pcie-mobiveil-host.c} (53%)
 create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil-plat.c
 create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil.c
 create mode 100644 drivers/pci/controller/mobiveil/pcie-mobiveil.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 992f1dd06318..c066128d69ec 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12063,7 +12063,7 @@ M:	Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
 L:	linux-pci@vger.kernel.org
 S:	Supported
 F:	Documentation/devicetree/bindings/pci/mobiveil-pcie.txt
-F:	drivers/pci/controller/pcie-mobiveil.c
+F:	drivers/pci/controller/mobiveil/pcie-mobiveil*
 
 PCI DRIVER FOR MVEBU (Marvell Armada 370 and Armada XP SOC support)
 M:	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
diff --git a/drivers/pci/controller/Kconfig b/drivers/pci/controller/Kconfig
index 011c57cae4b0..b4d1e211b6d1 100644
--- a/drivers/pci/controller/Kconfig
+++ b/drivers/pci/controller/Kconfig
@@ -241,16 +241,6 @@ config PCIE_MEDIATEK
 	  Say Y here if you want to enable PCIe controller support on
 	  MediaTek SoCs.
 
-config PCIE_MOBIVEIL
-	bool "Mobiveil AXI PCIe controller"
-	depends on ARCH_ZYNQMP || COMPILE_TEST
-	depends on OF
-	depends on PCI_MSI_IRQ_DOMAIN
-	help
-	  Say Y here if you want to enable support for the Mobiveil AXI PCIe
-	  Soft IP. It has up to 8 outbound and inbound windows
-	  for address translation and it is a PCIe Gen4 IP.
-
 config PCIE_TANGO_SMP8759
 	bool "Tango SMP8759 PCIe controller (DANGEROUS)"
 	depends on ARCH_TANGO && PCI_MSI && OF
@@ -282,4 +272,5 @@ config VMD
 	  module will be called vmd.
 
 source "drivers/pci/controller/dwc/Kconfig"
+source "drivers/pci/controller/mobiveil/Kconfig"
 endmenu
diff --git a/drivers/pci/controller/Makefile b/drivers/pci/controller/Makefile
index d56a507495c5..b79a615041a0 100644
--- a/drivers/pci/controller/Makefile
+++ b/drivers/pci/controller/Makefile
@@ -26,11 +26,11 @@ obj-$(CONFIG_PCIE_ROCKCHIP) += pcie-rockchip.o
 obj-$(CONFIG_PCIE_ROCKCHIP_EP) += pcie-rockchip-ep.o
 obj-$(CONFIG_PCIE_ROCKCHIP_HOST) += pcie-rockchip-host.o
 obj-$(CONFIG_PCIE_MEDIATEK) += pcie-mediatek.o
-obj-$(CONFIG_PCIE_MOBIVEIL) += pcie-mobiveil.o
 obj-$(CONFIG_PCIE_TANGO_SMP8759) += pcie-tango.o
 obj-$(CONFIG_VMD) += vmd.o
 # pcie-hisi.o quirks are needed even without CONFIG_PCIE_DW
 obj-y				+= dwc/
+obj-y				+= mobiveil/
 
 
 # The following drivers are for devices that use the generic ACPI
diff --git a/drivers/pci/controller/mobiveil/Kconfig b/drivers/pci/controller/mobiveil/Kconfig
new file mode 100644
index 000000000000..64343c07bfed
--- /dev/null
+++ b/drivers/pci/controller/mobiveil/Kconfig
@@ -0,0 +1,24 @@
+# SPDX-License-Identifier: GPL-2.0
+
+menu "Mobiveil PCIe Core Support"
+	depends on PCI
+
+config PCIE_MOBIVEIL
+	bool
+
+config PCIE_MOBIVEIL_HOST
+        bool
+	depends on PCI_MSI_IRQ_DOMAIN
+        select PCIE_MOBIVEIL
+
+config PCIE_MOBIVEIL_PLAT
+	bool "Mobiveil AXI PCIe controller"
+	depends on ARCH_ZYNQMP || COMPILE_TEST
+	depends on OF
+	select PCIE_MOBIVEIL_HOST
+	help
+	  Say Y here if you want to enable support for the Mobiveil AXI PCIe
+	  Soft IP. It has up to 8 outbound and inbound windows
+	  for address translation and it is a PCIe Gen4 IP.
+
+endmenu
diff --git a/drivers/pci/controller/mobiveil/Makefile b/drivers/pci/controller/mobiveil/Makefile
new file mode 100644
index 000000000000..9fb6d1c6504d
--- /dev/null
+++ b/drivers/pci/controller/mobiveil/Makefile
@@ -0,0 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0
+obj-$(CONFIG_PCIE_MOBIVEIL) += pcie-mobiveil.o
+obj-$(CONFIG_PCIE_MOBIVEIL_HOST) += pcie-mobiveil-host.o
+obj-$(CONFIG_PCIE_MOBIVEIL_PLAT) += pcie-mobiveil-plat.o
diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
similarity index 53%
rename from drivers/pci/controller/pcie-mobiveil.c
rename to drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
index 456adfee393c..c4b98a31d426 100644
--- a/drivers/pci/controller/pcie-mobiveil.c
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
@@ -3,10 +3,12 @@
  * PCIe host controller driver for Mobiveil PCIe Host controller
  *
  * Copyright (c) 2018 Mobiveil Inc.
+ * Copyright 2019 NXP
+ *
  * Author: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
+ * Refactor: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
  */
 
-#include <linux/delay.h>
 #include <linux/init.h>
 #include <linux/interrupt.h>
 #include <linux/irq.h>
@@ -23,299 +25,25 @@
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 
-#include "../pci.h"
-
-/* register offsets and bit positions */
-
-/*
- * translation tables are grouped into windows, each window registers are
- * grouped into blocks of 4 or 16 registers each
- */
-#define PAB_REG_BLOCK_SIZE		16
-#define PAB_EXT_REG_BLOCK_SIZE		4
-
-#define PAB_REG_ADDR(offset, win)	\
-	(offset + (win * PAB_REG_BLOCK_SIZE))
-#define PAB_EXT_REG_ADDR(offset, win)	\
-	(offset + (win * PAB_EXT_REG_BLOCK_SIZE))
-
-#define LTSSM_STATUS			0x0404
-#define  LTSSM_STATUS_L0_MASK		0x3f
-#define  LTSSM_STATUS_L0		0x2d
-
-#define PAB_CTRL			0x0808
-#define  AMBA_PIO_ENABLE_SHIFT		0
-#define  PEX_PIO_ENABLE_SHIFT		1
-#define  PAGE_SEL_SHIFT			13
-#define  PAGE_SEL_MASK			0x3f
-#define  PAGE_LO_MASK			0x3ff
-#define  PAGE_SEL_OFFSET_SHIFT		10
-
-#define PAB_AXI_PIO_CTRL		0x0840
-#define  APIO_EN_MASK			0xf
-
-#define PAB_PEX_PIO_CTRL		0x08c0
-#define  PIO_ENABLE_SHIFT		0
-
-#define PAB_INTP_AMBA_MISC_ENB		0x0b0c
-#define PAB_INTP_AMBA_MISC_STAT		0x0b1c
-#define  PAB_INTP_INTX_MASK		0x01e0
-#define  PAB_INTP_MSI_MASK		0x8
-
-#define PAB_AXI_AMAP_CTRL(win)		PAB_REG_ADDR(0x0ba0, win)
-#define  WIN_ENABLE_SHIFT		0
-#define  WIN_TYPE_SHIFT			1
-#define  WIN_TYPE_MASK			0x3
-#define  WIN_SIZE_SHIFT			10
-#define  WIN_SIZE_MASK			0x3fffff
-
-#define PAB_EXT_AXI_AMAP_SIZE(win)	PAB_EXT_REG_ADDR(0xbaf0, win)
-
-#define PAB_EXT_AXI_AMAP_AXI_WIN(win)	PAB_EXT_REG_ADDR(0x80a0, win)
-#define PAB_AXI_AMAP_AXI_WIN(win)	PAB_REG_ADDR(0x0ba4, win)
-#define  AXI_WINDOW_ALIGN_MASK		3
-
-#define PAB_AXI_AMAP_PEX_WIN_L(win)	PAB_REG_ADDR(0x0ba8, win)
-#define  PAB_BUS_SHIFT			24
-#define  PAB_DEVICE_SHIFT		19
-#define  PAB_FUNCTION_SHIFT		16
-
-#define PAB_AXI_AMAP_PEX_WIN_H(win)	PAB_REG_ADDR(0x0bac, win)
-#define PAB_INTP_AXI_PIO_CLASS		0x474
-
-#define PAB_PEX_AMAP_CTRL(win)		PAB_REG_ADDR(0x4ba0, win)
-#define  AMAP_CTRL_EN_SHIFT		0
-#define  AMAP_CTRL_TYPE_SHIFT		1
-#define  AMAP_CTRL_TYPE_MASK		3
-
-#define PAB_EXT_PEX_AMAP_SIZEN(win)	PAB_EXT_REG_ADDR(0xbef0, win)
-#define PAB_EXT_PEX_AMAP_AXI_WIN(win)	PAB_EXT_REG_ADDR(0xb4a0, win)
-#define PAB_PEX_AMAP_AXI_WIN(win)	PAB_REG_ADDR(0x4ba4, win)
-#define PAB_PEX_AMAP_PEX_WIN_L(win)	PAB_REG_ADDR(0x4ba8, win)
-#define PAB_PEX_AMAP_PEX_WIN_H(win)	PAB_REG_ADDR(0x4bac, win)
-
-/* starting offset of INTX bits in status register */
-#define PAB_INTX_START			5
-
-/* supported number of MSI interrupts */
-#define PCI_NUM_MSI			16
-
-/* MSI registers */
-#define MSI_BASE_LO_OFFSET		0x04
-#define MSI_BASE_HI_OFFSET		0x08
-#define MSI_SIZE_OFFSET			0x0c
-#define MSI_ENABLE_OFFSET		0x14
-#define MSI_STATUS_OFFSET		0x18
-#define MSI_DATA_OFFSET			0x20
-#define MSI_ADDR_L_OFFSET		0x24
-#define MSI_ADDR_H_OFFSET		0x28
-
-/* outbound and inbound window definitions */
-#define WIN_NUM_0			0
-#define WIN_NUM_1			1
-#define CFG_WINDOW_TYPE			0
-#define IO_WINDOW_TYPE			1
-#define MEM_WINDOW_TYPE			2
-#define IB_WIN_SIZE			((u64)256 * 1024 * 1024 * 1024)
-#define MAX_PIO_WINDOWS			8
-
-/* Parameters for the waiting for link up routine */
-#define LINK_WAIT_MAX_RETRIES		10
-#define LINK_WAIT_MIN			90000
-#define LINK_WAIT_MAX			100000
-
-#define PAGED_ADDR_BNDRY		0xc00
-#define OFFSET_TO_PAGE_ADDR(off)	\
-	((off & PAGE_LO_MASK) | PAGED_ADDR_BNDRY)
-#define OFFSET_TO_PAGE_IDX(off)		\
-	((off >> PAGE_SEL_OFFSET_SHIFT) & PAGE_SEL_MASK)
-
-struct mobiveil_msi {			/* MSI information */
-	struct mutex lock;		/* protect bitmap variable */
-	struct irq_domain *msi_domain;
-	struct irq_domain *dev_domain;
-	phys_addr_t msi_pages_phys;
-	int num_of_vectors;
-	DECLARE_BITMAP(msi_irq_in_use, PCI_NUM_MSI);
-};
-
-struct mobiveil_pcie {
-	struct platform_device *pdev;
-	struct list_head resources;
-	void __iomem *config_axi_slave_base;	/* endpoint config base */
-	void __iomem *csr_axi_slave_base;	/* root port config base */
-	void __iomem *apb_csr_base;	/* MSI register base */
-	phys_addr_t pcie_reg_base;	/* Physical PCIe Controller Base */
-	struct irq_domain *intx_domain;
-	raw_spinlock_t intx_mask_lock;
-	int irq;
-	int apio_wins;
-	int ppio_wins;
-	int ob_wins_configured;		/* configured outbound windows */
-	int ib_wins_configured;		/* configured inbound windows */
-	struct resource *ob_io_res;
-	char root_bus_nr;
-	struct mobiveil_msi msi;
-};
-
-/*
- * mobiveil_pcie_sel_page - routine to access paged register
- *
- * Registers whose address greater than PAGED_ADDR_BNDRY (0xc00) are paged,
- * for this scheme to work extracted higher 6 bits of the offset will be
- * written to pg_sel field of PAB_CTRL register and rest of the lower 10
- * bits enabled with PAGED_ADDR_BNDRY are used as offset of the register.
- */
-static void mobiveil_pcie_sel_page(struct mobiveil_pcie *pcie, u8 pg_idx)
-{
-	u32 val;
-
-	val = readl(pcie->csr_axi_slave_base + PAB_CTRL);
-	val &= ~(PAGE_SEL_MASK << PAGE_SEL_SHIFT);
-	val |= (pg_idx & PAGE_SEL_MASK) << PAGE_SEL_SHIFT;
-
-	writel(val, pcie->csr_axi_slave_base + PAB_CTRL);
-}
-
-static void *mobiveil_pcie_comp_addr(struct mobiveil_pcie *pcie, u32 off)
-{
-	if (off < PAGED_ADDR_BNDRY) {
-		/* For directly accessed registers, clear the pg_sel field */
-		mobiveil_pcie_sel_page(pcie, 0);
-		return pcie->csr_axi_slave_base + off;
-	}
-
-	mobiveil_pcie_sel_page(pcie, OFFSET_TO_PAGE_IDX(off));
-	return pcie->csr_axi_slave_base + OFFSET_TO_PAGE_ADDR(off);
-}
-
-static int mobiveil_pcie_read(void __iomem *addr, int size, u32 *val)
-{
-	if ((uintptr_t)addr & (size - 1)) {
-		*val = 0;
-		return PCIBIOS_BAD_REGISTER_NUMBER;
-	}
-
-	switch (size) {
-	case 4:
-		*val = readl(addr);
-		break;
-	case 2:
-		*val = readw(addr);
-		break;
-	case 1:
-		*val = readb(addr);
-		break;
-	default:
-		*val = 0;
-		return PCIBIOS_BAD_REGISTER_NUMBER;
-	}
-
-	return PCIBIOS_SUCCESSFUL;
-}
-
-static int mobiveil_pcie_write(void __iomem *addr, int size, u32 val)
-{
-	if ((uintptr_t)addr & (size - 1))
-		return PCIBIOS_BAD_REGISTER_NUMBER;
-
-	switch (size) {
-	case 4:
-		writel(val, addr);
-		break;
-	case 2:
-		writew(val, addr);
-		break;
-	case 1:
-		writeb(val, addr);
-		break;
-	default:
-		return PCIBIOS_BAD_REGISTER_NUMBER;
-	}
-
-	return PCIBIOS_SUCCESSFUL;
-}
-
-static u32 csr_read(struct mobiveil_pcie *pcie, u32 off, size_t size)
-{
-	void *addr;
-	u32 val;
-	int ret;
-
-	addr = mobiveil_pcie_comp_addr(pcie, off);
-
-	ret = mobiveil_pcie_read(addr, size, &val);
-	if (ret)
-		dev_err(&pcie->pdev->dev, "read CSR address failed\n");
-
-	return val;
-}
-
-static void csr_write(struct mobiveil_pcie *pcie, u32 val, u32 off, size_t size)
-{
-	void *addr;
-	int ret;
-
-	addr = mobiveil_pcie_comp_addr(pcie, off);
-
-	ret = mobiveil_pcie_write(addr, size, val);
-	if (ret)
-		dev_err(&pcie->pdev->dev, "write CSR address failed\n");
-}
-
-static u32 csr_readl(struct mobiveil_pcie *pcie, u32 off)
-{
-	return csr_read(pcie, off, 0x4);
-}
-
-static u32 csr_readw(struct mobiveil_pcie *pcie, u32 off)
-{
-	return csr_read(pcie, off, 0x2);
-}
-
-static u32 csr_readb(struct mobiveil_pcie *pcie, u32 off)
-{
-	return csr_read(pcie, off, 0x1);
-}
-
-static void csr_writel(struct mobiveil_pcie *pcie, u32 val, u32 off)
-{
-	csr_write(pcie, val, off, 0x4);
-}
-
-static void csr_writew(struct mobiveil_pcie *pcie, u32 val, u32 off)
-{
-	csr_write(pcie, val, off, 0x2);
-}
-
-static void csr_writeb(struct mobiveil_pcie *pcie, u32 val, u32 off)
-{
-	csr_write(pcie, val, off, 0x1);
-}
-
-static bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie)
-{
-	return (csr_readl(pcie, LTSSM_STATUS) &
-		LTSSM_STATUS_L0_MASK) == LTSSM_STATUS_L0;
-}
+#include "pcie-mobiveil.h"
 
 static bool mobiveil_pcie_valid_device(struct pci_bus *bus, unsigned int devfn)
 {
 	struct mobiveil_pcie *pcie = bus->sysdata;
 
 	/* If there is no link, then there is no device */
-	if (bus->number > pcie->root_bus_nr && !mobiveil_pcie_link_up(pcie))
+	if (bus->number > pcie->rp.root_bus_nr && !mobiveil_pcie_link_up(pcie))
 		return false;
 
 	/* Only one device down on each root port */
-	if ((bus->number == pcie->root_bus_nr) && (devfn > 0))
+	if ((bus->number == pcie->rp.root_bus_nr) && (devfn > 0))
 		return false;
 
 	/*
 	 * Do not read more than one device on the bus directly
 	 * attached to RC
 	 */
-	if ((bus->primary == pcie->root_bus_nr) && (PCI_SLOT(devfn) > 0))
+	if ((bus->primary == pcie->rp.root_bus_nr) && (PCI_SLOT(devfn) > 0))
 		return false;
 
 	return true;
@@ -335,7 +63,7 @@ static void __iomem *mobiveil_pcie_map_bus(struct pci_bus *bus,
 		return NULL;
 
 	/* RC config access */
-	if (bus->number == pcie->root_bus_nr)
+	if (bus->number == pcie->rp.root_bus_nr)
 		return pcie->csr_axi_slave_base + where;
 
 	/*
@@ -350,7 +78,7 @@ static void __iomem *mobiveil_pcie_map_bus(struct pci_bus *bus,
 
 	csr_writel(pcie, value, PAB_AXI_AMAP_PEX_WIN_L(WIN_NUM_0));
 
-	return pcie->config_axi_slave_base + where;
+	return pcie->rp.config_axi_slave_base + where;
 }
 
 static struct pci_ops mobiveil_pcie_ops = {
@@ -364,7 +92,7 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
 	struct irq_chip *chip = irq_desc_get_chip(desc);
 	struct mobiveil_pcie *pcie = irq_desc_get_handler_data(desc);
 	struct device *dev = &pcie->pdev->dev;
-	struct mobiveil_msi *msi = &pcie->msi;
+	struct mobiveil_msi *msi = &pcie->rp.msi;
 	u32 msi_data, msi_addr_lo, msi_addr_hi;
 	u32 intr_status, msi_status;
 	unsigned long shifted_status;
@@ -389,7 +117,7 @@ static void mobiveil_pcie_isr(struct irq_desc *desc)
 		shifted_status >>= PAB_INTX_START;
 		do {
 			for_each_set_bit(bit, &shifted_status, PCI_NUM_INTX) {
-				virq = irq_find_mapping(pcie->intx_domain,
+				virq = irq_find_mapping(pcie->rp.intx_domain,
 							bit + 1);
 				if (virq)
 					generic_handle_irq(virq);
@@ -452,10 +180,10 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
 	/* map config resource */
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
 					   "config_axi_slave");
-	pcie->config_axi_slave_base = devm_pci_remap_cfg_resource(dev, res);
-	if (IS_ERR(pcie->config_axi_slave_base))
-		return PTR_ERR(pcie->config_axi_slave_base);
-	pcie->ob_io_res = res;
+	pcie->rp.config_axi_slave_base = devm_pci_remap_cfg_resource(dev, res);
+	if (IS_ERR(pcie->rp.config_axi_slave_base))
+		return PTR_ERR(pcie->rp.config_axi_slave_base);
+	pcie->rp.ob_io_res = res;
 
 	/* map csr resource */
 	res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
@@ -465,12 +193,6 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
 		return PTR_ERR(pcie->csr_axi_slave_base);
 	pcie->pcie_reg_base = res->start;
 
-	/* map MSI config resource */
-	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "apb_csr");
-	pcie->apb_csr_base = devm_pci_remap_cfg_resource(dev, res);
-	if (IS_ERR(pcie->apb_csr_base))
-		return PTR_ERR(pcie->apb_csr_base);
-
 	/* read the number of windows requested */
 	if (of_property_read_u32(node, "apio-wins", &pcie->apio_wins))
 		pcie->apio_wins = MAX_PIO_WINDOWS;
@@ -478,137 +200,15 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
 	if (of_property_read_u32(node, "ppio-wins", &pcie->ppio_wins))
 		pcie->ppio_wins = MAX_PIO_WINDOWS;
 
-	pcie->irq = platform_get_irq(pdev, 0);
-	if (pcie->irq <= 0) {
-		dev_err(dev, "failed to map IRQ: %d\n", pcie->irq);
-		return -ENODEV;
-	}
-
 	return 0;
 }
 
-static void program_ib_windows(struct mobiveil_pcie *pcie, int win_num,
-			       u64 cpu_addr, u64 pci_addr, u32 type, u64 size)
-{
-	u32 value;
-	u64 size64 = ~(size - 1);
-
-	if (win_num >= pcie->ppio_wins) {
-		dev_err(&pcie->pdev->dev,
-			"ERROR: max inbound windows reached !\n");
-		return;
-	}
-
-	value = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
-	value &= ~(AMAP_CTRL_TYPE_MASK << AMAP_CTRL_TYPE_SHIFT |
-		 WIN_SIZE_MASK << WIN_SIZE_SHIFT);
-	value |= (type << AMAP_CTRL_TYPE_SHIFT) | (1 << AMAP_CTRL_EN_SHIFT) |
-		 (lower_32_bits(size64) & WIN_SIZE_MASK << WIN_SIZE_SHIFT);
-	csr_writel(pcie, value, PAB_PEX_AMAP_CTRL(win_num));
-
-	csr_writel(pcie, upper_32_bits(size64),
-		   PAB_EXT_PEX_AMAP_SIZEN(win_num));
-
-	csr_writel(pcie, lower_32_bits(cpu_addr),
-		   PAB_PEX_AMAP_AXI_WIN(win_num));
-	csr_writel(pcie, upper_32_bits(cpu_addr),
-		   PAB_EXT_PEX_AMAP_AXI_WIN(win_num));
-
-	csr_writel(pcie, lower_32_bits(pci_addr),
-		   PAB_PEX_AMAP_PEX_WIN_L(win_num));
-	csr_writel(pcie, upper_32_bits(pci_addr),
-		   PAB_PEX_AMAP_PEX_WIN_H(win_num));
-
-	pcie->ib_wins_configured++;
-}
-
-/*
- * routine to program the outbound windows
- */
-static void program_ob_windows(struct mobiveil_pcie *pcie, int win_num,
-			       u64 cpu_addr, u64 pci_addr, u32 type, u64 size)
-{
-
-	u32 value;
-	u64 size64 = ~(size - 1);
-
-	if (win_num >= pcie->apio_wins) {
-		dev_err(&pcie->pdev->dev,
-			"ERROR: max outbound windows reached !\n");
-		return;
-	}
-
-	/*
-	 * program Enable Bit to 1, Type Bit to (00) base 2, AXI Window Size Bit
-	 * to 4 KB in PAB_AXI_AMAP_CTRL register
-	 */
-	value = csr_readl(pcie, PAB_AXI_AMAP_CTRL(win_num));
-	value &= ~(WIN_TYPE_MASK << WIN_TYPE_SHIFT |
-		 WIN_SIZE_MASK << WIN_SIZE_SHIFT);
-	value |= 1 << WIN_ENABLE_SHIFT | type << WIN_TYPE_SHIFT |
-		 (lower_32_bits(size64) & WIN_SIZE_MASK << WIN_SIZE_SHIFT);
-	csr_writel(pcie, value, PAB_AXI_AMAP_CTRL(win_num));
-
-	csr_writel(pcie, upper_32_bits(size64), PAB_EXT_AXI_AMAP_SIZE(win_num));
-
-	/*
-	 * program AXI window base with appropriate value in
-	 * PAB_AXI_AMAP_AXI_WIN0 register
-	 */
-	csr_writel(pcie, lower_32_bits(cpu_addr) & (~AXI_WINDOW_ALIGN_MASK),
-		   PAB_AXI_AMAP_AXI_WIN(win_num));
-	csr_writel(pcie, upper_32_bits(cpu_addr),
-		   PAB_EXT_AXI_AMAP_AXI_WIN(win_num));
-
-	csr_writel(pcie, lower_32_bits(pci_addr),
-		   PAB_AXI_AMAP_PEX_WIN_L(win_num));
-	csr_writel(pcie, upper_32_bits(pci_addr),
-		   PAB_AXI_AMAP_PEX_WIN_H(win_num));
-
-	pcie->ob_wins_configured++;
-}
-
-static int mobiveil_bringup_link(struct mobiveil_pcie *pcie)
-{
-	int retries;
-
-	/* check if the link is up or not */
-	for (retries = 0; retries < LINK_WAIT_MAX_RETRIES; retries++) {
-		if (mobiveil_pcie_link_up(pcie))
-			return 0;
-
-		usleep_range(LINK_WAIT_MIN, LINK_WAIT_MAX);
-	}
-
-	dev_info(&pcie->pdev->dev, "link never came up\n");
-
-	return -ETIMEDOUT;
-}
-
-static void mobiveil_pcie_disable_ib_win(struct mobiveil_pcie *pcie, int idx)
-{
-	u32 val;
-
-	val = csr_readl(pcie, PAB_PEX_AMAP_CTRL(idx));
-	val &= ~(1 << AMAP_CTRL_EN_SHIFT);
-	csr_writel(pcie, val, PAB_PEX_AMAP_CTRL(idx));
-}
-
-static void mobiveil_pcie_disable_ob_win(struct mobiveil_pcie *pcie, int idx)
-{
-	u32 val;
-
-	val = csr_readl(pcie, PAB_AXI_AMAP_CTRL(idx));
-	val &= ~(1 << WIN_ENABLE_SHIFT);
-	csr_writel(pcie, val, PAB_AXI_AMAP_CTRL(idx));
-}
-
 static void mobiveil_pcie_enable_msi(struct mobiveil_pcie *pcie)
 {
 	phys_addr_t msg_addr = pcie->pcie_reg_base;
-	struct mobiveil_msi *msi = &pcie->msi;
+	struct mobiveil_msi *msi = &pcie->rp.msi;
 
-	pcie->msi.num_of_vectors = PCI_NUM_MSI;
+	msi->num_of_vectors = PCI_NUM_MSI;
 	msi->msi_pages_phys = (phys_addr_t)msg_addr;
 
 	writel_relaxed(lower_32_bits(msg_addr),
@@ -653,9 +253,6 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	pab_ctrl |= (1 << AMBA_PIO_ENABLE_SHIFT) | (1 << PEX_PIO_ENABLE_SHIFT);
 	csr_writel(pcie, pab_ctrl, PAB_CTRL);
 
-	csr_writel(pcie, (PAB_INTP_INTX_MASK | PAB_INTP_MSI_MASK),
-		   PAB_INTP_AMBA_MISC_ENB);
-
 	/*
 	 * program PIO Enable Bit to 1 and Config Window Enable Bit to 1 in
 	 * PAB_AXI_PIO_CTRL Register
@@ -677,20 +274,24 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	 */
 
 	/* config outbound translation window */
-	program_ob_windows(pcie, WIN_NUM_0, pcie->ob_io_res->start, 0,
-			   CFG_WINDOW_TYPE, resource_size(pcie->ob_io_res));
+	program_ob_windows(pcie, WIN_NUM_0, pcie->rp.ob_io_res->start, 0,
+			   CFG_WINDOW_TYPE, resource_size(pcie->rp.ob_io_res));
 
 	/* memory inbound translation window */
 	program_ib_windows(pcie, WIN_NUM_0, 0, 0, MEM_WINDOW_TYPE, IB_WIN_SIZE);
 
 	/* Get the I/O and memory ranges from DT */
 	resource_list_for_each_entry(win, &pcie->resources) {
-		if (resource_type(win->res) == IORESOURCE_MEM)
+		if (resource_type(win->res) == IORESOURCE_MEM) {
 			type = MEM_WINDOW_TYPE;
-		else if (resource_type(win->res) == IORESOURCE_IO)
+		} else if (resource_type(win->res) == IORESOURCE_IO) {
 			type = IO_WINDOW_TYPE;
-		else
+		} else if (resource_type(win->res) == IORESOURCE_BUS) {
+			pcie->rp.root_bus_nr = win->res->start;
+			continue;
+		} else {
 			continue;
+		}
 
 		/* configure outbound translation window */
 		program_ob_windows(pcie, pcie->ob_wins_configured,
@@ -705,9 +306,6 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
 	value |= (PCI_CLASS_BRIDGE_PCI << 16);
 	csr_writel(pcie, value, PAB_INTP_AXI_PIO_CLASS);
 
-	/* setup MSI hardware registers */
-	mobiveil_pcie_enable_msi(pcie);
-
 	return 0;
 }
 
@@ -720,11 +318,11 @@ static void mobiveil_mask_intx_irq(struct irq_data *data)
 
 	pcie = irq_desc_get_chip_data(desc);
 	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
-	raw_spin_lock_irqsave(&pcie->intx_mask_lock, flags);
+	raw_spin_lock_irqsave(&pcie->rp.intx_mask_lock, flags);
 	shifted_val = csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
 	shifted_val &= ~mask;
 	csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
-	raw_spin_unlock_irqrestore(&pcie->intx_mask_lock, flags);
+	raw_spin_unlock_irqrestore(&pcie->rp.intx_mask_lock, flags);
 }
 
 static void mobiveil_unmask_intx_irq(struct irq_data *data)
@@ -736,11 +334,11 @@ static void mobiveil_unmask_intx_irq(struct irq_data *data)
 
 	pcie = irq_desc_get_chip_data(desc);
 	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
-	raw_spin_lock_irqsave(&pcie->intx_mask_lock, flags);
+	raw_spin_lock_irqsave(&pcie->rp.intx_mask_lock, flags);
 	shifted_val = csr_readl(pcie, PAB_INTP_AMBA_MISC_ENB);
 	shifted_val |= mask;
 	csr_writel(pcie, shifted_val, PAB_INTP_AMBA_MISC_ENB);
-	raw_spin_unlock_irqrestore(&pcie->intx_mask_lock, flags);
+	raw_spin_unlock_irqrestore(&pcie->rp.intx_mask_lock, flags);
 }
 
 static struct irq_chip intx_irq_chip = {
@@ -808,7 +406,7 @@ static int mobiveil_irq_msi_domain_alloc(struct irq_domain *domain,
 					 unsigned int nr_irqs, void *args)
 {
 	struct mobiveil_pcie *pcie = domain->host_data;
-	struct mobiveil_msi *msi = &pcie->msi;
+	struct mobiveil_msi *msi = &pcie->rp.msi;
 	unsigned long bit;
 
 	WARN_ON(nr_irqs != 1);
@@ -835,7 +433,7 @@ static void mobiveil_irq_msi_domain_free(struct irq_domain *domain,
 {
 	struct irq_data *d = irq_domain_get_irq_data(domain, virq);
 	struct mobiveil_pcie *pcie = irq_data_get_irq_chip_data(d);
-	struct mobiveil_msi *msi = &pcie->msi;
+	struct mobiveil_msi *msi = &pcie->rp.msi;
 
 	mutex_lock(&msi->lock);
 
@@ -856,9 +454,9 @@ static int mobiveil_allocate_msi_domains(struct mobiveil_pcie *pcie)
 {
 	struct device *dev = &pcie->pdev->dev;
 	struct fwnode_handle *fwnode = of_node_to_fwnode(dev->of_node);
-	struct mobiveil_msi *msi = &pcie->msi;
+	struct mobiveil_msi *msi = &pcie->rp.msi;
 
-	mutex_init(&pcie->msi.lock);
+	mutex_init(&msi->lock);
 	msi->dev_domain = irq_domain_add_linear(NULL, msi->num_of_vectors,
 						&msi_domain_ops, pcie);
 	if (!msi->dev_domain) {
@@ -885,15 +483,15 @@ static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
 	int ret;
 
 	/* setup INTx */
-	pcie->intx_domain = irq_domain_add_linear(node, PCI_NUM_INTX,
-						  &intx_domain_ops, pcie);
+	pcie->rp.intx_domain = irq_domain_add_linear(node, PCI_NUM_INTX,
+						     &intx_domain_ops, pcie);
 
-	if (!pcie->intx_domain) {
+	if (!pcie->rp.intx_domain) {
 		dev_err(dev, "Failed to get a INTx IRQ domain\n");
 		return -ENOMEM;
 	}
 
-	raw_spin_lock_init(&pcie->intx_mask_lock);
+	raw_spin_lock_init(&pcie->rp.intx_mask_lock);
 
 	/* setup MSI */
 	ret = mobiveil_allocate_msi_domains(pcie);
@@ -903,24 +501,58 @@ static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
 	return 0;
 }
 
-static int mobiveil_pcie_probe(struct platform_device *pdev)
+static int mobiveil_pcie_interrupt_init(struct mobiveil_pcie *pcie)
+{
+	struct device *dev = &pcie->pdev->dev;
+	struct resource *res;
+	int ret;
+
+	if (pcie->rp.ops->interrupt_init)
+		return pcie->rp.ops->interrupt_init(pcie);
+
+	/* map MSI config resource */
+	res = platform_get_resource_byname(pcie->pdev, IORESOURCE_MEM,
+					   "apb_csr");
+	pcie->apb_csr_base = devm_pci_remap_cfg_resource(dev, res);
+	if (IS_ERR(pcie->apb_csr_base))
+		return PTR_ERR(pcie->apb_csr_base);
+
+	/* setup MSI hardware registers */
+	mobiveil_pcie_enable_msi(pcie);
+
+	pcie->rp.irq = platform_get_irq(pcie->pdev, 0);
+	if (pcie->rp.irq <= 0) {
+		dev_err(dev, "failed to map IRQ: %d\n", pcie->rp.irq);
+		return -ENODEV;
+	}
+
+	/* initialize the IRQ domains */
+	ret = mobiveil_pcie_init_irq_domain(pcie);
+	if (ret) {
+		dev_err(dev, "Failed creating IRQ Domain\n");
+		return ret;
+	}
+
+	irq_set_chained_handler_and_data(pcie->rp.irq,
+					 mobiveil_pcie_isr, pcie);
+
+	/* Enable interrupts */
+	csr_writel(pcie, (PAB_INTP_INTX_MASK | PAB_INTP_MSI_MASK),
+		   PAB_INTP_AMBA_MISC_ENB);
+
+	return 0;
+}
+
+int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
 {
-	struct mobiveil_pcie *pcie;
 	struct pci_bus *bus;
 	struct pci_bus *child;
-	struct pci_host_bridge *bridge;
-	struct device *dev = &pdev->dev;
+	struct pci_host_bridge *bridge = pcie->bridge;
+	struct device *dev = &pcie->pdev->dev;
 	resource_size_t iobase;
 	int ret;
 
-	/* allocate the PCIe port */
-	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
-	if (!bridge)
-		return -ENOMEM;
-
-	pcie = pci_host_bridge_priv(bridge);
-
-	pcie->pdev = pdev;
+	INIT_LIST_HEAD(&pcie->resources);
 
 	ret = mobiveil_pcie_parse_dt(pcie);
 	if (ret) {
@@ -928,8 +560,6 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	INIT_LIST_HEAD(&pcie->resources);
-
 	/* parse the host bridge base addresses from the device tree file */
 	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
 						    &pcie->resources, &iobase);
@@ -948,15 +578,12 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 		goto error;
 	}
 
-	/* initialize the IRQ domains */
-	ret = mobiveil_pcie_init_irq_domain(pcie);
+	ret = mobiveil_pcie_interrupt_init(pcie);
 	if (ret) {
-		dev_err(dev, "Failed creating IRQ Domain\n");
+		dev_err(dev, "Interrupt init failed\n");
 		goto error;
 	}
 
-	irq_set_chained_handler_and_data(pcie->irq, mobiveil_pcie_isr, pcie);
-
 	ret = devm_request_pci_bus_resources(dev, &pcie->resources);
 	if (ret)
 		goto error;
@@ -965,7 +592,7 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 	list_splice_init(&pcie->resources, &bridge->windows);
 	bridge->dev.parent = dev;
 	bridge->sysdata = pcie;
-	bridge->busnr = pcie->root_bus_nr;
+	bridge->busnr = pcie->rp.root_bus_nr;
 	bridge->ops = &mobiveil_pcie_ops;
 	bridge->map_irq = of_irq_parse_and_map_pci;
 	bridge->swizzle_irq = pci_common_swizzle;
@@ -991,25 +618,3 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
 	pci_free_resource_list(&pcie->resources);
 	return ret;
 }
-
-static const struct of_device_id mobiveil_pcie_of_match[] = {
-	{.compatible = "mbvl,gpex40-pcie",},
-	{},
-};
-
-MODULE_DEVICE_TABLE(of, mobiveil_pcie_of_match);
-
-static struct platform_driver mobiveil_pcie_driver = {
-	.probe = mobiveil_pcie_probe,
-	.driver = {
-		.name = "mobiveil-pcie",
-		.of_match_table = mobiveil_pcie_of_match,
-		.suppress_bind_attrs = true,
-	},
-};
-
-builtin_platform_driver(mobiveil_pcie_driver);
-
-MODULE_LICENSE("GPL v2");
-MODULE_DESCRIPTION("Mobiveil PCIe host controller driver");
-MODULE_AUTHOR("Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>");
diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil-plat.c b/drivers/pci/controller/mobiveil/pcie-mobiveil-plat.c
new file mode 100644
index 000000000000..9c62fc58530c
--- /dev/null
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil-plat.c
@@ -0,0 +1,59 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * PCIe host controller driver for Mobiveil PCIe Host controller
+ *
+ * Copyright (c) 2018 Mobiveil Inc.
+ * Copyright 2019 NXP
+ *
+ * Author: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
+ * Refactor: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
+ */
+
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of_pci.h>
+#include <linux/pci.h>
+#include <linux/platform_device.h>
+#include <linux/slab.h>
+
+#include "pcie-mobiveil.h"
+
+static int mobiveil_pcie_probe(struct platform_device *pdev)
+{
+	struct mobiveil_pcie *pcie;
+	struct pci_host_bridge *bridge;
+	struct device *dev = &pdev->dev;
+
+	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
+	if (!bridge)
+		return -ENOMEM;
+
+	pcie = pci_host_bridge_priv(bridge);
+
+	pcie->pdev = pdev;
+
+	return mobiveil_pcie_host_probe(pcie);
+}
+
+static const struct of_device_id mobiveil_pcie_of_match[] = {
+	{.compatible = "mbvl,gpex40-pcie",},
+	{},
+};
+
+MODULE_DEVICE_TABLE(of, mobiveil_pcie_of_match);
+
+static struct platform_driver mobiveil_pcie_driver = {
+	.probe = mobiveil_pcie_probe,
+	.driver = {
+		.name = "mobiveil-pcie",
+		.of_match_table = mobiveil_pcie_of_match,
+		.suppress_bind_attrs = true,
+	},
+};
+
+builtin_platform_driver(mobiveil_pcie_driver);
+
+MODULE_LICENSE("GPL v2");
+MODULE_DESCRIPTION("Mobiveil PCIe host controller driver");
+MODULE_AUTHOR("Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>");
diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.c b/drivers/pci/controller/mobiveil/pcie-mobiveil.c
new file mode 100644
index 000000000000..15d5d888eb93
--- /dev/null
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.c
@@ -0,0 +1,248 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * PCIe host controller driver for Mobiveil PCIe Host controller
+ *
+ * Copyright (c) 2018 Mobiveil Inc.
+ * Copyright 2019 NXP
+ *
+ * Author: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
+ * Refactor: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
+ */
+
+#include <linux/delay.h>
+#include <linux/init.h>
+#include <linux/kernel.h>
+#include <linux/pci.h>
+#include <linux/platform_device.h>
+
+#include "pcie-mobiveil.h"
+
+/*
+ * mobiveil_pcie_sel_page - routine to access paged register
+ *
+ * Registers whose address greater than PAGED_ADDR_BNDRY (0xc00) are paged,
+ * for this scheme to work extracted higher 6 bits of the offset will be
+ * written to pg_sel field of PAB_CTRL register and rest of the lower 10
+ * bits enabled with PAGED_ADDR_BNDRY are used as offset of the register.
+ */
+static void mobiveil_pcie_sel_page(struct mobiveil_pcie *pcie, u8 pg_idx)
+{
+	u32 val;
+
+	val = readl(pcie->csr_axi_slave_base + PAB_CTRL);
+	val &= ~(PAGE_SEL_MASK << PAGE_SEL_SHIFT);
+	val |= (pg_idx & PAGE_SEL_MASK) << PAGE_SEL_SHIFT;
+
+	writel(val, pcie->csr_axi_slave_base + PAB_CTRL);
+}
+
+static void *mobiveil_pcie_comp_addr(struct mobiveil_pcie *pcie, u32 off)
+{
+	if (off < PAGED_ADDR_BNDRY) {
+		/* For directly accessed registers, clear the pg_sel field */
+		mobiveil_pcie_sel_page(pcie, 0);
+		return pcie->csr_axi_slave_base + off;
+	}
+
+	mobiveil_pcie_sel_page(pcie, OFFSET_TO_PAGE_IDX(off));
+	return pcie->csr_axi_slave_base + OFFSET_TO_PAGE_ADDR(off);
+}
+
+static int mobiveil_pcie_read(void __iomem *addr, int size, u32 *val)
+{
+	if ((uintptr_t)addr & (size - 1)) {
+		*val = 0;
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+	}
+
+	switch (size) {
+	case 4:
+		*val = readl(addr);
+		break;
+	case 2:
+		*val = readw(addr);
+		break;
+	case 1:
+		*val = readb(addr);
+		break;
+	default:
+		*val = 0;
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+	}
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
+static int mobiveil_pcie_write(void __iomem *addr, int size, u32 val)
+{
+	if ((uintptr_t)addr & (size - 1))
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+
+	switch (size) {
+	case 4:
+		writel(val, addr);
+		break;
+	case 2:
+		writew(val, addr);
+		break;
+	case 1:
+		writeb(val, addr);
+		break;
+	default:
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+	}
+
+	return PCIBIOS_SUCCESSFUL;
+}
+
+u32 csr_read(struct mobiveil_pcie *pcie, u32 off, size_t size)
+{
+	void *addr;
+	u32 val;
+	int ret;
+
+	addr = mobiveil_pcie_comp_addr(pcie, off);
+
+	ret = mobiveil_pcie_read(addr, size, &val);
+	if (ret)
+		dev_err(&pcie->pdev->dev, "read CSR address failed\n");
+
+	return val;
+}
+
+void csr_write(struct mobiveil_pcie *pcie, u32 val, u32 off, size_t size)
+{
+	void *addr;
+	int ret;
+
+	addr = mobiveil_pcie_comp_addr(pcie, off);
+
+	ret = mobiveil_pcie_write(addr, size, val);
+	if (ret)
+		dev_err(&pcie->pdev->dev, "write CSR address failed\n");
+}
+
+bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie)
+{
+	if (pcie->ops->link_up)
+		return pcie->ops->link_up(pcie);
+
+	return (csr_readl(pcie, LTSSM_STATUS) &
+		LTSSM_STATUS_L0_MASK) == LTSSM_STATUS_L0;
+}
+
+void program_ib_windows(struct mobiveil_pcie *pcie, int win_num, u64 cpu_addr,
+			u64 pci_addr, u32 type, u64 size)
+{
+	u32 value;
+	u64 size64 = ~(size - 1);
+
+	if (win_num >= pcie->ppio_wins) {
+		dev_err(&pcie->pdev->dev,
+			"ERROR: max inbound windows reached !\n");
+		return;
+	}
+
+	value = csr_readl(pcie, PAB_PEX_AMAP_CTRL(win_num));
+	value &= ~(AMAP_CTRL_TYPE_MASK << AMAP_CTRL_TYPE_SHIFT |
+		 WIN_SIZE_MASK << WIN_SIZE_SHIFT);
+	value |= (type << AMAP_CTRL_TYPE_SHIFT) | (1 << AMAP_CTRL_EN_SHIFT) |
+		 (lower_32_bits(size64) & WIN_SIZE_MASK << WIN_SIZE_SHIFT);
+	csr_writel(pcie, value, PAB_PEX_AMAP_CTRL(win_num));
+
+	csr_writel(pcie, upper_32_bits(size64),
+		   PAB_EXT_PEX_AMAP_SIZEN(win_num));
+
+	csr_writel(pcie, lower_32_bits(cpu_addr),
+		   PAB_PEX_AMAP_AXI_WIN(win_num));
+	csr_writel(pcie, upper_32_bits(cpu_addr),
+		   PAB_EXT_PEX_AMAP_AXI_WIN(win_num));
+
+	csr_writel(pcie, lower_32_bits(pci_addr),
+		   PAB_PEX_AMAP_PEX_WIN_L(win_num));
+	csr_writel(pcie, upper_32_bits(pci_addr),
+		   PAB_PEX_AMAP_PEX_WIN_H(win_num));
+
+	pcie->ib_wins_configured++;
+}
+
+/*
+ * routine to program the outbound windows
+ */
+void program_ob_windows(struct mobiveil_pcie *pcie, int win_num, u64 cpu_addr,
+			u64 pci_addr, u32 type, u64 size)
+{
+
+	u32 value;
+	u64 size64 = ~(size - 1);
+
+	if (win_num >= pcie->apio_wins) {
+		dev_err(&pcie->pdev->dev,
+			"ERROR: max outbound windows reached !\n");
+		return;
+	}
+
+	/*
+	 * program Enable Bit to 1, Type Bit to (00) base 2, AXI Window Size Bit
+	 * to 4 KB in PAB_AXI_AMAP_CTRL register
+	 */
+	value = csr_readl(pcie, PAB_AXI_AMAP_CTRL(win_num));
+	value &= ~(WIN_TYPE_MASK << WIN_TYPE_SHIFT |
+		 WIN_SIZE_MASK << WIN_SIZE_SHIFT);
+	value |= 1 << WIN_ENABLE_SHIFT | type << WIN_TYPE_SHIFT |
+		 (lower_32_bits(size64) & WIN_SIZE_MASK << WIN_SIZE_SHIFT);
+	csr_writel(pcie, value, PAB_AXI_AMAP_CTRL(win_num));
+
+	csr_writel(pcie, upper_32_bits(size64), PAB_EXT_AXI_AMAP_SIZE(win_num));
+
+	/*
+	 * program AXI window base with appropriate value in
+	 * PAB_AXI_AMAP_AXI_WIN0 register
+	 */
+	csr_writel(pcie, lower_32_bits(cpu_addr) & (~AXI_WINDOW_ALIGN_MASK),
+		   PAB_AXI_AMAP_AXI_WIN(win_num));
+	csr_writel(pcie, upper_32_bits(cpu_addr),
+		   PAB_EXT_AXI_AMAP_AXI_WIN(win_num));
+
+	csr_writel(pcie, lower_32_bits(pci_addr),
+		   PAB_AXI_AMAP_PEX_WIN_L(win_num));
+	csr_writel(pcie, upper_32_bits(pci_addr),
+		   PAB_AXI_AMAP_PEX_WIN_H(win_num));
+
+	pcie->ob_wins_configured++;
+}
+
+int mobiveil_bringup_link(struct mobiveil_pcie *pcie)
+{
+	int retries;
+
+	/* check if the link is up or not */
+	for (retries = 0; retries < LINK_WAIT_MAX_RETRIES; retries++) {
+		if (mobiveil_pcie_link_up(pcie))
+			return 0;
+
+		usleep_range(LINK_WAIT_MIN, LINK_WAIT_MAX);
+	}
+
+	dev_info(&pcie->pdev->dev, "link never came up\n");
+
+	return -ETIMEDOUT;
+}
+
+void mobiveil_pcie_disable_ib_win(struct mobiveil_pcie *pcie, int idx)
+{
+	u32 val;
+
+	val = csr_readl(pcie, PAB_PEX_AMAP_CTRL(idx));
+	val &= ~(1 << AMAP_CTRL_EN_SHIFT);
+	csr_writel(pcie, val, PAB_PEX_AMAP_CTRL(idx));
+}
+
+void mobiveil_pcie_disable_ob_win(struct mobiveil_pcie *pcie, int idx)
+{
+	u32 val;
+
+	val = csr_readl(pcie, PAB_AXI_AMAP_CTRL(idx));
+	val &= ~(1 << WIN_ENABLE_SHIFT);
+	csr_writel(pcie, val, PAB_AXI_AMAP_CTRL(idx));
+}
diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
new file mode 100644
index 000000000000..dce7871761e1
--- /dev/null
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
@@ -0,0 +1,212 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * PCIe host controller driver for Mobiveil PCIe Host controller
+ *
+ * Copyright (c) 2018 Mobiveil Inc.
+ * Copyright 2019 NXP
+ *
+ * Author: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
+ * Refactor: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
+ */
+
+#ifndef _PCIE_MOBIVEIL_H
+#define _PCIE_MOBIVEIL_H
+
+#include <linux/pci.h>
+#include <linux/irq.h>
+#include <linux/msi.h>
+#include "../../pci.h"
+
+/* register offsets and bit positions */
+
+/*
+ * translation tables are grouped into windows, each window registers are
+ * grouped into blocks of 4 or 16 registers each
+ */
+#define PAB_REG_BLOCK_SIZE		16
+#define PAB_EXT_REG_BLOCK_SIZE		4
+
+#define PAB_REG_ADDR(offset, win)	\
+	(offset + (win * PAB_REG_BLOCK_SIZE))
+#define PAB_EXT_REG_ADDR(offset, win)	\
+	(offset + (win * PAB_EXT_REG_BLOCK_SIZE))
+
+#define LTSSM_STATUS			0x0404
+#define  LTSSM_STATUS_L0_MASK		0x3f
+#define  LTSSM_STATUS_L0		0x2d
+
+#define PAB_CTRL			0x0808
+#define  AMBA_PIO_ENABLE_SHIFT		0
+#define  PEX_PIO_ENABLE_SHIFT		1
+#define  PAGE_SEL_SHIFT			13
+#define  PAGE_SEL_MASK			0x3f
+#define  PAGE_LO_MASK			0x3ff
+#define  PAGE_SEL_OFFSET_SHIFT		10
+
+#define PAB_AXI_PIO_CTRL		0x0840
+#define  APIO_EN_MASK			0xf
+
+#define PAB_PEX_PIO_CTRL		0x08c0
+#define  PIO_ENABLE_SHIFT		0
+
+#define PAB_INTP_AMBA_MISC_ENB		0x0b0c
+#define PAB_INTP_AMBA_MISC_STAT		0x0b1c
+#define  PAB_INTP_INTX_MASK		0x01e0
+#define  PAB_INTP_MSI_MASK		0x8
+
+#define PAB_AXI_AMAP_CTRL(win)		PAB_REG_ADDR(0x0ba0, win)
+#define  WIN_ENABLE_SHIFT		0
+#define  WIN_TYPE_SHIFT			1
+#define  WIN_TYPE_MASK			0x3
+#define  WIN_SIZE_SHIFT			10
+#define  WIN_SIZE_MASK			0x3fffff
+
+#define PAB_EXT_AXI_AMAP_SIZE(win)	PAB_EXT_REG_ADDR(0xbaf0, win)
+
+#define PAB_EXT_AXI_AMAP_AXI_WIN(win)	PAB_EXT_REG_ADDR(0x80a0, win)
+#define PAB_AXI_AMAP_AXI_WIN(win)	PAB_REG_ADDR(0x0ba4, win)
+#define  AXI_WINDOW_ALIGN_MASK		3
+
+#define PAB_AXI_AMAP_PEX_WIN_L(win)	PAB_REG_ADDR(0x0ba8, win)
+#define  PAB_BUS_SHIFT			24
+#define  PAB_DEVICE_SHIFT		19
+#define  PAB_FUNCTION_SHIFT		16
+
+#define PAB_AXI_AMAP_PEX_WIN_H(win)	PAB_REG_ADDR(0x0bac, win)
+#define PAB_INTP_AXI_PIO_CLASS		0x474
+
+#define PAB_PEX_AMAP_CTRL(win)		PAB_REG_ADDR(0x4ba0, win)
+#define  AMAP_CTRL_EN_SHIFT		0
+#define  AMAP_CTRL_TYPE_SHIFT		1
+#define  AMAP_CTRL_TYPE_MASK		3
+
+#define PAB_EXT_PEX_AMAP_SIZEN(win)	PAB_EXT_REG_ADDR(0xbef0, win)
+#define PAB_EXT_PEX_AMAP_AXI_WIN(win)	PAB_EXT_REG_ADDR(0xb4a0, win)
+#define PAB_PEX_AMAP_AXI_WIN(win)	PAB_REG_ADDR(0x4ba4, win)
+#define PAB_PEX_AMAP_PEX_WIN_L(win)	PAB_REG_ADDR(0x4ba8, win)
+#define PAB_PEX_AMAP_PEX_WIN_H(win)	PAB_REG_ADDR(0x4bac, win)
+
+/* starting offset of INTX bits in status register */
+#define PAB_INTX_START			5
+
+/* supported number of MSI interrupts */
+#define PCI_NUM_MSI			16
+
+/* MSI registers */
+#define MSI_BASE_LO_OFFSET		0x04
+#define MSI_BASE_HI_OFFSET		0x08
+#define MSI_SIZE_OFFSET			0x0c
+#define MSI_ENABLE_OFFSET		0x14
+#define MSI_STATUS_OFFSET		0x18
+#define MSI_DATA_OFFSET			0x20
+#define MSI_ADDR_L_OFFSET		0x24
+#define MSI_ADDR_H_OFFSET		0x28
+
+/* outbound and inbound window definitions */
+#define WIN_NUM_0			0
+#define WIN_NUM_1			1
+#define CFG_WINDOW_TYPE			0
+#define IO_WINDOW_TYPE			1
+#define MEM_WINDOW_TYPE			2
+#define IB_WIN_SIZE			((u64)256 * 1024 * 1024 * 1024)
+#define MAX_PIO_WINDOWS			8
+
+/* Parameters for the waiting for link up routine */
+#define LINK_WAIT_MAX_RETRIES		10
+#define LINK_WAIT_MIN			90000
+#define LINK_WAIT_MAX			100000
+
+#define PAGED_ADDR_BNDRY		0xc00
+#define OFFSET_TO_PAGE_ADDR(off)	\
+	((off & PAGE_LO_MASK) | PAGED_ADDR_BNDRY)
+#define OFFSET_TO_PAGE_IDX(off)		\
+	((off >> PAGE_SEL_OFFSET_SHIFT) & PAGE_SEL_MASK)
+
+struct mobiveil_pcie;
+
+struct mobiveil_msi {			/* MSI information */
+	struct mutex lock;		/* protect bitmap variable */
+	struct irq_domain *msi_domain;
+	struct irq_domain *dev_domain;
+	phys_addr_t msi_pages_phys;
+	int num_of_vectors;
+	DECLARE_BITMAP(msi_irq_in_use, PCI_NUM_MSI);
+};
+
+struct mobiveil_rp_ops {
+	int (*interrupt_init)(struct mobiveil_pcie *pcie);
+};
+
+struct root_port {
+	u8 root_bus_nr;
+	void __iomem *config_axi_slave_base;	/* endpoint config base */
+	struct resource *ob_io_res;
+	struct mobiveil_rp_ops *ops;
+	int irq;
+	raw_spinlock_t intx_mask_lock;
+	struct irq_domain *intx_domain;
+	struct mobiveil_msi msi;
+};
+
+struct mobiveil_pab_ops {
+	int (*link_up)(struct mobiveil_pcie *pcie);
+};
+
+struct mobiveil_pcie {
+	struct platform_device *pdev;
+	struct list_head resources;
+	void __iomem *csr_axi_slave_base;	/* PAB registers base */
+	phys_addr_t pcie_reg_base;	/* Physical PCIe Controller Base */
+	void __iomem *apb_csr_base;	/* MSI register base */
+	u32 apio_wins;
+	u32 ppio_wins;
+	u32 ob_wins_configured;		/* configured outbound windows */
+	u32 ib_wins_configured;		/* configured inbound windows */
+	const struct mobiveil_pab_ops *ops;
+	struct root_port rp;
+	struct pci_host_bridge *bridge;
+};
+
+int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie);
+bool mobiveil_pcie_link_up(struct mobiveil_pcie *pcie);
+int mobiveil_bringup_link(struct mobiveil_pcie *pcie);
+void program_ob_windows(struct mobiveil_pcie *pcie, int win_num, u64 cpu_addr,
+			u64 pci_addr, u32 type, u64 size);
+void program_ib_windows(struct mobiveil_pcie *pcie, int win_num, u64 cpu_addr,
+			u64 pci_addr, u32 type, u64 size);
+void mobiveil_pcie_disable_ob_win(struct mobiveil_pcie *pcie, int idx);
+void mobiveil_pcie_disable_ib_win(struct mobiveil_pcie *pcie, int idx);
+u32 csr_read(struct mobiveil_pcie *pcie, u32 off, size_t size);
+void csr_write(struct mobiveil_pcie *pcie, u32 val, u32 off, size_t size);
+
+static inline u32 csr_readl(struct mobiveil_pcie *pcie, u32 off)
+{
+	return csr_read(pcie, off, 0x4);
+}
+
+static inline u32 csr_readw(struct mobiveil_pcie *pcie, u32 off)
+{
+	return csr_read(pcie, off, 0x2);
+}
+
+static inline u32 csr_readb(struct mobiveil_pcie *pcie, u32 off)
+{
+	return csr_read(pcie, off, 0x1);
+}
+
+static inline void csr_writel(struct mobiveil_pcie *pcie, u32 val, u32 off)
+{
+	csr_write(pcie, val, off, 0x4);
+}
+
+static inline void csr_writew(struct mobiveil_pcie *pcie, u32 val, u32 off)
+{
+	csr_write(pcie, val, off, 0x2);
+}
+
+static inline void csr_writeb(struct mobiveil_pcie *pcie, u32 val, u32 off)
+{
+	csr_write(pcie, val, off, 0x1);
+}
+
+#endif /* _PCIE_MOBIVEIL_H */
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
