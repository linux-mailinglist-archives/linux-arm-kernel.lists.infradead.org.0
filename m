Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7672A52333
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 07:54:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aPsvS99QHcWSyJCnrnT0COteNVqSV27zxALKaB6rKYg=; b=cr41fMwstcbbii
	dbi/Cj3Yyplrq4BJhTUnRQP4JMsm6ccnUaEKvVWc/AC6Q8csRPkIU25tv+I21KjUmvcpXUWDyQFH3
	2qPrS7rN5PVAPyMfZvsvuqZCjGnB098vibv2FAYR3NiC78eioG72b6GqvDTOg9XFwC0+queoBpXvG
	MKnCzl7VDt/e3LdJzJASmFWIaUXjv4laCmzh2Hp9X1abdKkJlZT3FqttvYRCqXlPo4TnVfrKLVlB7
	MSEv7cS4xMjZdJjbpBlkpEWQKzHeXgQzmDQDaVgMdkGqkPPVnLgN+pjdmJx1Lhfz2SYhjEmx9Jcqz
	ucgHpvdyAcTFomwFV6mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfePi-0002eT-Gv; Tue, 25 Jun 2019 05:54:42 +0000
Received: from mail-eopbgr10059.outbound.protection.outlook.com ([40.107.1.59]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfePQ-0002dq-Mk
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 05:54:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wI//m7sqsgko/mrHgIWva7lkvMYYuvtFdoiCfg/yvgk=;
 b=WNPakzaro9Z5oXCrDL72XRkic3hHjfHhXClJO2IjTRHmVQ3u7hzFamou9lgDNd6f0FQXX/tJKimaYWJZi6nqZDmltFOiGyEFlVH4ao5nEcXi0G6o8OzlXntoeP6NuTbJTtCqzi37cloqQ0EgPxJ+pGGbL7Jx+ViXN9evMbcg54A=
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com (20.177.33.203) by
 AM6PR04MB6101.eurprd04.prod.outlook.com (20.179.5.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2008.13; Tue, 25 Jun 2019 05:54:18 +0000
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::cd8e:f990:731d:a5b2]) by AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::cd8e:f990:731d:a5b2%7]) with mapi id 15.20.2008.017; Tue, 25 Jun 2019
 05:54:18 +0000
From: Fancy Fang <chen.fang@nxp.com>
To: "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: [PATCH] reset: Add driver for dispmix reset
Thread-Topic: [PATCH] reset: Add driver for dispmix reset
Thread-Index: AQHVKxptCiL92aUsgkqeLp394Rbp9A==
Date: Tue, 25 Jun 2019 05:54:18 +0000
Message-ID: <20190625055557.7507-1-chen.fang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: TY2PR06CA0027.apcprd06.prod.outlook.com
 (2603:1096:404:2e::15) To AM6PR04MB4936.eurprd04.prod.outlook.com
 (2603:10a6:20b:7::11)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chen.fang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 431c31ef-767b-4c1f-4d4d-08d6f9318fba
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB6101; 
x-ms-traffictypediagnostic: AM6PR04MB6101:
x-microsoft-antispam-prvs: <AM6PR04MB6101E38280277ABE0BE6120DF3E30@AM6PR04MB6101.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0079056367
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(396003)(366004)(346002)(376002)(189003)(199004)(66066001)(6116002)(3846002)(110136005)(54906003)(186003)(1076003)(36756003)(6506007)(316002)(386003)(102836004)(2201001)(256004)(66946007)(52116002)(66556008)(66476007)(66446008)(2501003)(5660300002)(26005)(73956011)(14444005)(50226002)(99286004)(68736007)(478600001)(30864003)(86362001)(14454004)(486006)(476003)(2616005)(6486002)(64756008)(6436002)(71190400001)(71200400001)(25786009)(6512007)(2906002)(4326008)(7736002)(53936002)(8936002)(8676002)(53946003)(305945005)(81166006)(81156014)(2004002)(579004)(559001)(309714004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6101;
 H:AM6PR04MB4936.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: m8OdCpRQbVA/bWHfKxMEP/ta9BoG0CBoWFcFVZsFJUdtPu+dessJnBPeVT1Y+kyDNy64rrGVg2fmz9d86pSbFSRosyMWG95G9rdUPZN/eBMSzCpmAmGZYGKKx+ZxrYdz9yiCJ7QOeTAW9ZmFD2UjDyddXIi8jrSiMS28zuL0TNcWQaEcCh8S3VU72+VB3t6mdvnWk9bUPMCKDQuoHG95naPDPKAKDGbqlsPFwnxuXlw6o2GxCilAQAnQbBY1Urk3MbhcTuCbHVZVQLBucvQp7rloPfj6qxbQrzZMLOIF6A4cyRetmxeOZYNCHkXGE+AHWwwJsnpwVfnRPbwfhdLZf1bz6mRlULqs//bk/kDcr3EUwx0gCFr95A3N+86pmISOA9UOE9Je16qBFz0IgO9TxkErODjD20oh/Ea4cq/oa74=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 431c31ef-767b-4c1f-4d4d-08d6f9318fba
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2019 05:54:18.5955 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: chen.fang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6101
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_225425_023915_3DF37811 
X-CRM114-Status: GOOD (  16.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.59 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an reset driver to implement a reset controller
device DISPMIX on IMX8MM and IMX8MN platforms. Dispmix
reset is used to reset or enable related buses and clks
for the submodules in DISPMIX.

All the dispmix resets are divided into three subgroups:
sft_rstn, clk_en and mipi_rst, and each of them contains
several reset lines to control several different modules
on and off in DISPMIX which doesn't require the standard
reset flow, but only line assert and deassert operations.

Signed-off-by: Fancy Fang <chen.fang@nxp.com>
---
 .../bindings/reset/nxp,dispmix-clk-en.txt     |  58 +++
 .../bindings/reset/nxp,dispmix-mipi-rst.txt   |  57 +++
 .../bindings/reset/nxp,dispmix-sft-rstn.txt   |  58 +++
 drivers/reset/Kconfig                         |   9 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/reset-dispmix.c                 | 399 ++++++++++++++++++
 include/dt-bindings/reset/imx8mm-dispmix.h    |  49 +++
 include/dt-bindings/reset/imx8mn-dispmix.h    |  47 +++
 8 files changed, 678 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/reset/nxp,dispmix-clk-en.txt
 create mode 100644 Documentation/devicetree/bindings/reset/nxp,dispmix-mipi-rst.txt
 create mode 100644 Documentation/devicetree/bindings/reset/nxp,dispmix-sft-rstn.txt
 create mode 100644 drivers/reset/reset-dispmix.c
 create mode 100644 include/dt-bindings/reset/imx8mm-dispmix.h
 create mode 100644 include/dt-bindings/reset/imx8mn-dispmix.h

diff --git a/Documentation/devicetree/bindings/reset/nxp,dispmix-clk-en.txt b/Documentation/devicetree/bindings/reset/nxp,dispmix-clk-en.txt
new file mode 100644
index 000000000000..4375039eb072
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/nxp,dispmix-clk-en.txt
@@ -0,0 +1,58 @@
+NXP Display Mix clk-en Reset Controller
+=======================================
+
+This binding describes a reset controller device that is used to enable
+or disable the internal clocks for all the submodules(such as, LCDIF,
+MIPI DSI, MIPI CSI, ISI and etc) included by the Display Mix subsystem
+on IMX8MM and IMX8MN platforms. Like sft-rstn, only assert and deassert
+functions are required for submodule internal clocks enable or disable,
+that means the clk-en can be treated as a real reset controller.
+
+Please also refer to reset.txt in this directory for common reset
+controller binding usage.
+
+Required properties:
+- compatible: Should be "fsl,imx8mm-dispmix-clk-en" or
+			"fsl,imx8mn-dispmix-clk-en".
+- reg: should be register base and length as documented in the datasheet.
+- clocks: phandle and clock specifier to disp apb clock for register access.
+- clock-names: should be "disp-apb".
+- power-domains: phandle to dispmix power domain.
+- reset-cells: 1, see below.
+
+example:
+
+	dispmix_clk_en: dispmix-clk-en@32e28004 {
+		compatible = "fsl,imx8mn-dispmix-clk-en";
+		reg = <0x0 0x32e28004 0x0 0x4>;
+		clocks = <&clk IMX8MN_CLK_DISP_APB_ROOT>;
+		clock-names = "disp-apb";
+		power-domains = <&dispmix_pd>;
+		#reset-cells = <1>;
+	};
+
+Specifying clk-en control of devices
+====================================
+
+Device nodes in Display Mix should specify the reset channel required in
+their "resets" property, containing a phandle to the clk-en device node
+and an index to specify which channel to use, as described in
+Documentation/devicetree/bindings/reset/reset.txt.
+
+example:
+
+	lcdif_resets: lcdif-resets {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		#reset-cells = <0>;
+
+		lcdif-clk-enable {
+			compatible = "lcdif,clk-enable";
+			resets = <&dispmix_clk_en IMX8MN_LCDIF_APB_CLK_EN>,
+				 <&dispmix_clk_en IMX8MN_LCDIF_PIXEL_CLK_EN>;
+		};
+	};
+
+Macro definitions for the supported reset channels can be found in:
+include/dt-bindings/reset/imx8mm-dispmix.h and
+include/dt-bindings/reset/imx8mn-dispmix.h.
diff --git a/Documentation/devicetree/bindings/reset/nxp,dispmix-mipi-rst.txt b/Documentation/devicetree/bindings/reset/nxp,dispmix-mipi-rst.txt
new file mode 100644
index 000000000000..c47bfd4842ed
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/nxp,dispmix-mipi-rst.txt
@@ -0,0 +1,57 @@
+NXP Display Mix mipi-rst Reset Controller
+=========================================
+
+This binding describes a reset controller device that is used to reset
+or de-reset the MIPI DPHY master direction(for MIPI DSI) and slave
+direction(for MIPI CSI) included by the Display Mix subsystem on IMX8MM
+and IMX8MN platforms. Like sft-rstn, only assert and deassert functions
+are required for PHY reset or de-reset.
+
+Please also refer to reset.txt in this directory for common reset
+controller binding usage.
+
+Required properties:
+- compatible: Should be "fsl,imx8mm-dispmix-mipi-rst" or
+			"fsl,imx8mn-dispmix-mipi-rst".
+- reg: should be register base and length as documented in the datasheet.
+- clocks: phandle and clock specifier to disp apb clock for register access.
+- clock-names: should be "disp-apb".
+- power-domains: phandle to dispmix power domain.
+- reset-cells: 1, see below.
+
+example:
+
+	dispmix_mipi_rst: dispmix-mipi-rst@32e28008 {
+		compatible = "fsl,imx8mn-dispmix-mipi-rst";
+		reg = <0x0 0x32e28008 0x0 0x4>;
+		clocks = <&clk IMX8MN_CLK_DISP_APB_ROOT>;
+		clock-names = "disp-apb";
+		active_low;
+		power-domains = <&dispmix_pd>;
+		#reset-cells = <1>;
+	};
+
+Specifying mipi-rst control of devices
+======================================
+
+Device nodes in Display Mix should specify the reset channel required in
+their "resets" property, containing a phandle to the mipi-rst device node
+and an index to specify which channel to use, as described in
+Documentation/devicetree/bindings/reset/reset.txt.
+
+example:
+
+	mipi_dsi_resets: mipi-dsi-resets {
+		#address-cells = <1>;
+		#size-cells = <0>;
+		#reset-cells = <0>;
+
+		dsi-mipi-reset {
+			compatible = "dsi,mipi-reset";
+			resets = <&dispmix_mipi_rst IMX8MN_MIPI_M_RESET>;
+                };
+	};
+
+Macro definitions for the supported reset channels can be found in:
+include/dt-bindings/reset/imx8mm-dispmix.h and
+include/dt-bindings/reset/imx8mn-dispmix.h.
diff --git a/Documentation/devicetree/bindings/reset/nxp,dispmix-sft-rstn.txt b/Documentation/devicetree/bindings/reset/nxp,dispmix-sft-rstn.txt
new file mode 100644
index 000000000000..7867018a409b
--- /dev/null
+++ b/Documentation/devicetree/bindings/reset/nxp,dispmix-sft-rstn.txt
@@ -0,0 +1,58 @@
+NXP Display Mix sft-rstn Reset Controller
+=========================================
+
+This binding describes a reset controller device that is used to reset
+or de-reset all the submodules(such as, LCDIF, MIPI DSI, MIPI CSI, ISI
+and etc) included by the Display Mix subsystem on IMX8MM and IMX8MN
+platforms. Only assert and deassert functions are required for submodule
+reset or de-reset.
+
+Please also refer to reset.txt in this directory for common reset
+controller binding usage.
+
+Required properties:
+- compatible: Should be "fsl,imx8mm-dispmix-sft-rstn" or
+			"fsl,imx8mn-dispmix-sft-rstn".
+- reg: should be register base and length as documented in the datasheet.
+- clocks: phandle and clock specifier to disp apb clock for register access.
+- clock-names: should be "disp-apb".
+- power-domains: phandle to dispmix power domain.
+- reset-cells: 1, see below.
+
+example:
+
+	dispmix_sft_rstn: dispmix-sft-rstn@32e28000 {
+		compatible = "fsl,imx8mm-dispmix-sft-rstn";
+		reg = <0x0 0x32e28000 0x0 0x4>;
+		clocks = <&clk IMX8MM_CLK_DISP_APB_ROOT>;
+		clock-names = "disp-apb";
+		active_low;
+		power-domains = <&dispmix_pd>;
+		#reset-cells = <1>;
+	};
+
+Specifying sft-rstn control of devices
+======================================
+
+Device nodes in Display Mix should specify the reset channel required in
+their "resets" property, containing a phandle to the sft-rstn device node
+and an index to specify which channel to use, as described in
+Documentation/devicetree/bindings/reset/reset.txt.
+
+example:
+
+        lcdif_resets: lcdif-resets {
+                #address-cells = <1>;
+                #size-cells = <0>;
+                #reset-cells = <0>;
+
+                lcdif-soft-resetn {
+                        compatible = "lcdif,soft-resetn";
+                        resets = <&dispmix_sft_rstn IMX8MN_LCDIF_APB_CLK_RESET>,
+                                 <&dispmix_sft_rstn IMX8MN_LCDIF_PIXEL_CLK_RESET>;
+                };
+        };
+
+Macro definitions for the supported reset channels can be found in:
+include/dt-bindings/reset/imx8mm-dispmix.h and
+include/dt-bindings/reset/imx8mn-dispmix.h.
diff --git a/drivers/reset/Kconfig b/drivers/reset/Kconfig
index 21efb7d39d62..1c5c510f1e18 100644
--- a/drivers/reset/Kconfig
+++ b/drivers/reset/Kconfig
@@ -49,6 +49,15 @@ config RESET_BRCMSTB
 	  This enables the reset controller driver for Broadcom STB SoCs using
 	  a SUN_TOP_CTRL_SW_INIT style controller.
 
+config RESET_DISPMIX
+	tristate "IMX Display Mix reset support"
+	default y
+	select REGMAP_MMIO
+	depends on ARCH_FSL_IMX8MM || ARCH_FSL_IMX8MN
+	help
+	  This driver provides support for Display Mix reset that is controlled
+	  by dispmix GPR registers.
+
 config RESET_HSDK
 	bool "Synopsys HSDK Reset Driver"
 	depends on HAS_IOMEM
diff --git a/drivers/reset/Makefile b/drivers/reset/Makefile
index 61456b8f659c..529159bf247f 100644
--- a/drivers/reset/Makefile
+++ b/drivers/reset/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_RESET_ATH79) += reset-ath79.o
 obj-$(CONFIG_RESET_AXS10X) += reset-axs10x.o
 obj-$(CONFIG_RESET_BERLIN) += reset-berlin.o
 obj-$(CONFIG_RESET_BRCMSTB) += reset-brcmstb.o
+obj-$(CONFIG_RESET_DISPMIX) += reset-dispmix.o
 obj-$(CONFIG_RESET_HSDK) += reset-hsdk.o
 obj-$(CONFIG_RESET_IMX7) += reset-imx7.o
 obj-$(CONFIG_RESET_LANTIQ) += reset-lantiq.o
diff --git a/drivers/reset/reset-dispmix.c b/drivers/reset/reset-dispmix.c
new file mode 100644
index 000000000000..fedb3a3e6b42
--- /dev/null
+++ b/drivers/reset/reset-dispmix.c
@@ -0,0 +1,399 @@
+/*
+ * IMX Display Mix GPR reset driver
+ *
+ * Copyright 2019 NXP
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#include <linux/clk.h>
+#include <linux/clk-provider.h>
+#include <linux/module.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/regmap.h>
+#include <linux/reset-controller.h>
+#include <dt-bindings/reset/imx8mm-dispmix.h>
+#include <dt-bindings/reset/imx8mn-dispmix.h>
+
+#define DRIVER_NAME		"dispmix_reset_drv"
+
+/* DISPMIX GPR registers */
+#define DISPLAY_MIX_SFT_RSTN_CSR		0x00
+#define DISPLAY_MIX_CLK_EN_CSR			0x00
+#define GPR_MIPI_RESET_DIV			0x00
+
+struct dispmix_reset_controller {
+	struct reset_controller_dev rcdev;
+	struct device *dev;
+	struct regmap *rstcon;
+	struct clk *ipg_clk;
+	bool active_low;
+};
+
+struct dispmix_reset_entry {
+	uint32_t reg_off;
+	uint32_t bit_off;
+};
+
+struct dispmix_reset_pdata {
+	const struct dispmix_reset_entry *resets;
+	uint32_t nr_resets;
+	const struct regmap_config *config;
+};
+
+#define RESET_ENTRY(id, reg, bit)			\
+	[id] = { .reg_off = (reg), .bit_off = (bit) }
+
+static const struct dispmix_reset_entry imx8mm_sft_rstn[] = {
+	/* dispmix reset entry */
+	RESET_ENTRY(IMX8MM_CSI_BRIDGE_CHIP_RESET,
+		    DISPLAY_MIX_SFT_RSTN_CSR, 0),
+	RESET_ENTRY(IMX8MM_CSI_BRIDGE_IPG_HARD_ASYNC_RESET,
+		    DISPLAY_MIX_SFT_RSTN_CSR, 1),
+	RESET_ENTRY(IMX8MM_CSI_BRIDGE_CSI_HRESET,
+		    DISPLAY_MIX_SFT_RSTN_CSR, 2),
+	RESET_ENTRY(IMX8MM_CAMERA_PIXEL_RESET,
+		    DISPLAY_MIX_SFT_RSTN_CSR, 3),
+	RESET_ENTRY(IMX8MM_MIPI_CSI_I_PRESET,
+		    DISPLAY_MIX_SFT_RSTN_CSR, 4),
+	RESET_ENTRY(IMX8MM_MIPI_DSI_I_PRESET,
+		    DISPLAY_MIX_SFT_RSTN_CSR, 5),
+	RESET_ENTRY(IMX8MM_BUS_RSTN_BLK_SYNC,
+		    DISPLAY_MIX_SFT_RSTN_CSR, 6),
+};
+
+static const struct dispmix_reset_entry imx8mm_clk_en[] = {
+	/* dispmix clock enable entry */
+	RESET_ENTRY(IMX8MM_CSI_BRIDGE_CSI_HCLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  0),
+	RESET_ENTRY(IMX8MM_CSI_BRIDGE_SPU_CLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  1),
+	RESET_ENTRY(IMX8MM_CSI_BRIDGE_MEM_WRAPPER_CLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  2),
+	RESET_ENTRY(IMX8MM_CSI_BRIDGE_IPG_CLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  3),
+	RESET_ENTRY(IMX8MM_CSI_BRIDGE_IPG_CLK_S_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  4),
+	RESET_ENTRY(IMX8MM_CSI_BRIDGE_IPG_CLK_S_RAW_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  5),
+	RESET_ENTRY(IMX8MM_LCDIF_APB_CLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  6),
+	RESET_ENTRY(IMX8MM_LCDIF_PIXEL_CLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  7),
+	RESET_ENTRY(IMX8MM_MIPI_DSI_PCLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  8),
+	RESET_ENTRY(IMX8MM_MIPI_DSI_CLKREF_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  9),
+	RESET_ENTRY(IMX8MM_MIPI_CSI_ACLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR, 10),
+	RESET_ENTRY(IMX8MM_MIPI_CSI_PCLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR, 11),
+	RESET_ENTRY(IMX8MM_BUS_BLK_CLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR, 12),
+};
+
+static const struct dispmix_reset_entry imx8mm_mipi_rst[] = {
+	/* mipi lanes reset entry */
+	RESET_ENTRY(IMX8MM_MIPI_S_RESET,
+		    GPR_MIPI_RESET_DIV, 16),
+	RESET_ENTRY(IMX8MM_MIPI_M_RESET,
+		    GPR_MIPI_RESET_DIV, 17),
+};
+
+static const struct dispmix_reset_entry imx8mn_sft_rstn[] = {
+	/* dispmix reset entry */
+	RESET_ENTRY(IMX8MN_MIPI_DSI_PCLK_RESET,
+		    DISPLAY_MIX_SFT_RSTN_CSR, 0),
+	RESET_ENTRY(IMX8MN_MIPI_DSI_CLKREF_RESET,
+		    DISPLAY_MIX_SFT_RSTN_CSR, 1),
+	RESET_ENTRY(IMX8MN_MIPI_CSI_PCLK_RESET,
+		    DISPLAY_MIX_SFT_RSTN_CSR, 2),
+	RESET_ENTRY(IMX8MN_MIPI_CSI_ACLK_RESET,
+		    DISPLAY_MIX_SFT_RSTN_CSR, 3),
+	RESET_ENTRY(IMX8MN_LCDIF_PIXEL_CLK_RESET,
+		    DISPLAY_MIX_SFT_RSTN_CSR, 4),
+	RESET_ENTRY(IMX8MN_LCDIF_APB_CLK_RESET,
+		    DISPLAY_MIX_SFT_RSTN_CSR, 5),
+	RESET_ENTRY(IMX8MN_ISI_PROC_CLK_RESET,
+		    DISPLAY_MIX_SFT_RSTN_CSR, 6),
+	RESET_ENTRY(IMX8MN_ISI_APB_CLK_RESET,
+		    DISPLAY_MIX_SFT_RSTN_CSR, 7),
+	RESET_ENTRY(IMX8MN_BUS_BLK_CLK_RESET,
+		    DISPLAY_MIX_SFT_RSTN_CSR, 8),
+};
+
+static const struct dispmix_reset_entry imx8mn_clk_en[] = {
+	/* dispmix clock enable entry */
+	RESET_ENTRY(IMX8MN_MIPI_DSI_PCLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  0),
+	RESET_ENTRY(IMX8MN_MIPI_DSI_CLKREF_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  1),
+	RESET_ENTRY(IMX8MN_MIPI_CSI_PCLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  2),
+	RESET_ENTRY(IMX8MN_MIPI_CSI_ACLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  3),
+	RESET_ENTRY(IMX8MN_LCDIF_PIXEL_CLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  4),
+	RESET_ENTRY(IMX8MN_LCDIF_APB_CLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  5),
+	RESET_ENTRY(IMX8MN_ISI_PROC_CLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  6),
+	RESET_ENTRY(IMX8MN_ISI_APB_CLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  7),
+	RESET_ENTRY(IMX8MN_BUS_BLK_CLK_EN,
+		    DISPLAY_MIX_CLK_EN_CSR,  8),
+};
+
+static const struct dispmix_reset_entry imx8mn_mipi_rst[] = {
+	/* mipi lanes reset entry */
+	RESET_ENTRY(IMX8MN_MIPI_S_RESET,
+		    GPR_MIPI_RESET_DIV, 16),
+	RESET_ENTRY(IMX8MN_MIPI_M_RESET,
+		    GPR_MIPI_RESET_DIV, 17),
+};
+
+static const struct regmap_config sft_rstn_config = {
+	.name = "sft_rstn",
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.max_register = 0x00,
+};
+
+static const struct regmap_config clk_en_config = {
+	.name = "clk_en",
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.max_register = 0x00,
+};
+
+static const struct regmap_config mipi_rst_config = {
+	.name = "mipi_rst",
+	.reg_bits = 32,
+	.val_bits = 32,
+	.reg_stride = 4,
+	.max_register = 0x00,
+};
+
+static const struct dispmix_reset_pdata imx8mm_sft_rstn_pdata = {
+	.resets    = imx8mm_sft_rstn,
+	.nr_resets = IMX8MM_DISPMIX_SFT_RSTN_NUM,
+	.config    = &sft_rstn_config,
+};
+
+static const struct dispmix_reset_pdata imx8mm_clk_en_pdata = {
+	.resets    = imx8mm_clk_en,
+	.nr_resets = IMX8MM_DISPMIX_CLK_EN_NUM,
+	.config    = &clk_en_config,
+};
+
+static const struct dispmix_reset_pdata imx8mm_mipi_rst_pdata = {
+	.resets    = imx8mm_mipi_rst,
+	.nr_resets = IMX8MM_MIPI_RESET_NUM,
+	.config    = &mipi_rst_config,
+};
+
+static const struct dispmix_reset_pdata imx8mn_sft_rstn_pdata = {
+	.resets    = imx8mn_sft_rstn,
+	.nr_resets = IMX8MN_DISPMIX_SFT_RSTN_NUM,
+	.config    = &sft_rstn_config,
+};
+
+static const struct dispmix_reset_pdata imx8mn_clk_en_pdata = {
+	.resets    = imx8mn_clk_en,
+	.nr_resets = IMX8MN_DISPMIX_CLK_EN_NUM,
+	.config    = &clk_en_config,
+};
+
+static const struct dispmix_reset_pdata imx8mn_mipi_rst_pdata = {
+	.resets    = imx8mn_mipi_rst,
+	.nr_resets = IMX8MN_MIPI_RESET_NUM,
+	.config    = &mipi_rst_config,
+};
+
+static const struct of_device_id dispmix_reset_dt_ids[] = {
+	{
+		.compatible = "fsl,imx8mm-dispmix-sft-rstn",
+		.data = &imx8mm_sft_rstn_pdata,
+	},
+	{
+		.compatible = "fsl,imx8mm-dispmix-clk-en",
+		.data = &imx8mm_clk_en_pdata,
+	},
+	{
+		.compatible = "fsl,imx8mm-dispmix-mipi-rst",
+		.data = &imx8mm_mipi_rst_pdata,
+	},
+	{
+		.compatible = "fsl,imx8mn-dispmix-sft-rstn",
+		.data = &imx8mn_sft_rstn_pdata,
+	},
+	{
+		.compatible = "fsl,imx8mn-dispmix-clk-en",
+		.data = &imx8mn_clk_en_pdata,
+	},
+	{
+		.compatible = "fsl,imx8mn-dispmix-mipi-rst",
+		.data = &imx8mn_mipi_rst_pdata,
+	},
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, dispmix_reset_dt_ids);
+
+static int dispmix_reset_assert(struct reset_controller_dev *rcdev,
+				unsigned long id)
+{
+	struct dispmix_reset_controller *drcdev;
+	const struct of_device_id *of_id;
+	const struct dispmix_reset_pdata *pdata;
+	const struct dispmix_reset_entry *rstent;
+	struct regmap *rstcon;
+
+	if (id >= rcdev->nr_resets) {
+		pr_info("dispmix reset: %lu is not a valid line\n", id);
+		return -EINVAL;
+	}
+
+	drcdev = container_of(rcdev, struct dispmix_reset_controller, rcdev);
+	of_id  = of_match_device(dispmix_reset_dt_ids, drcdev->dev);
+	pdata = of_id->data;
+
+	rstcon = drcdev->rstcon;
+	rstent = &pdata->resets[id];
+
+	pm_runtime_get_sync(drcdev->dev);
+	regmap_update_bits(rstcon, rstent->reg_off,
+			   1 << rstent->bit_off,
+			   !drcdev->active_low << rstent->bit_off);
+	pm_runtime_put(drcdev->dev);
+
+	return 0;
+}
+
+static int dispmix_reset_deassert(struct reset_controller_dev *rcdev,
+				  unsigned long id)
+{
+	struct dispmix_reset_controller *drcdev;
+	const struct of_device_id *of_id;
+	const struct dispmix_reset_pdata *pdata;
+	const struct dispmix_reset_entry *rstent;
+	struct regmap *rstcon;
+
+	if (id >= rcdev->nr_resets) {
+		pr_info("dispmix reset: %lu is not a valid line\n", id);
+		return -EINVAL;
+	}
+
+	drcdev = container_of(rcdev, struct dispmix_reset_controller, rcdev);
+	of_id  = of_match_device(dispmix_reset_dt_ids, drcdev->dev);
+	pdata = of_id->data;
+
+	rstcon = drcdev->rstcon;
+	rstent = &pdata->resets[id];
+
+	pm_runtime_get_sync(drcdev->dev);
+	regmap_update_bits(rstcon, rstent->reg_off,
+			   1 << rstent->bit_off,
+			   !!drcdev->active_low << rstent->bit_off);
+	pm_runtime_put(drcdev->dev);
+
+	return 0;
+}
+
+static const struct reset_control_ops dispmix_reset_ops = {
+	.assert   = dispmix_reset_assert,
+	.deassert = dispmix_reset_deassert,
+};
+
+static int dispmix_reset_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *np = dev->of_node;
+	const struct of_device_id *of_id;
+	struct dispmix_reset_controller *drcdev;
+	const struct dispmix_reset_pdata *pdata;
+	struct resource *res;
+	void __iomem *regs;
+	struct regmap *regmap;
+	struct clk *apb_clk;
+
+	drcdev = devm_kzalloc(dev, sizeof(*drcdev), GFP_KERNEL);
+	if (!drcdev)
+		return -ENOMEM;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res)
+		return -ENODEV;
+
+	regs = devm_ioremap_resource(dev, res);
+	if (IS_ERR(regs))
+		return PTR_ERR(regs);
+
+	apb_clk = devm_clk_get(dev, "disp-apb");
+	if (IS_ERR(apb_clk)) {
+		dev_err(dev, "Unable to get disp apb clock\n");
+		return PTR_ERR(apb_clk);
+	}
+
+	drcdev->active_low = of_property_read_bool(np, "active_low");
+
+	of_id = of_match_device(dispmix_reset_dt_ids, dev);
+	pdata = of_id->data;
+
+	/* init mmio regmap */
+	regmap = devm_regmap_init_mmio_clk(dev, __clk_get_name(apb_clk),
+					   regs, pdata->config);
+	if (IS_ERR(regmap)) {
+		dev_err(dev, "Failed to init mmio regmap: %ld\n",
+			PTR_ERR(regmap));
+		return PTR_ERR(regmap);
+	}
+	drcdev->rstcon = regmap;
+
+	platform_set_drvdata(pdev, drcdev);
+	pm_runtime_enable(dev);
+
+	/* register reset controller */
+	drcdev->dev = dev;
+	drcdev->rcdev.of_node = dev->of_node;
+	drcdev->rcdev.owner = THIS_MODULE;
+	drcdev->rcdev.nr_resets = pdata->nr_resets;
+	drcdev->rcdev.ops = &dispmix_reset_ops;
+
+	return devm_reset_controller_register(dev, &drcdev->rcdev);
+}
+
+static int dispmix_reset_remove(struct platform_device *pdev)
+{
+	pm_runtime_disable(&pdev->dev);
+	platform_set_drvdata(pdev, NULL);
+
+	return 0;
+}
+
+static struct platform_driver dispmix_reset_driver = {
+	.probe  = dispmix_reset_probe,
+	.remove = dispmix_reset_remove,
+	.driver = {
+		.name  = DRIVER_NAME,
+		.owner = THIS_MODULE,
+		.of_match_table = of_match_ptr(dispmix_reset_dt_ids),
+	},
+};
+
+builtin_platform_driver(dispmix_reset_driver);
+
+MODULE_DESCRIPTION("IMX Display Mix reset driver");
+MODULE_AUTHOR("Fancy Fang <chen.fang@nxp.com>");
+MODULE_LICENSE("GPL");
diff --git a/include/dt-bindings/reset/imx8mm-dispmix.h b/include/dt-bindings/reset/imx8mm-dispmix.h
new file mode 100644
index 000000000000..3af137b1bfe2
--- /dev/null
+++ b/include/dt-bindings/reset/imx8mm-dispmix.h
@@ -0,0 +1,49 @@
+/*
+ * Copyright 2019 NXP
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __IMX8MM_DISPMIX_H__
+#define __IMX8MM_DISPMIX_H__
+
+/* DISPMIX soft reset */
+#define IMX8MM_CSI_BRIDGE_CHIP_RESET			0
+#define IMX8MM_CSI_BRIDGE_IPG_HARD_ASYNC_RESET		1
+#define IMX8MM_CSI_BRIDGE_CSI_HRESET			2
+#define IMX8MM_CAMERA_PIXEL_RESET			3
+#define IMX8MM_MIPI_CSI_I_PRESET			4
+#define IMX8MM_MIPI_DSI_I_PRESET			5
+#define IMX8MM_BUS_RSTN_BLK_SYNC			6
+#define IMX8MM_DISPMIX_SFT_RSTN_NUM			7
+
+/* DISPMIX clock soft enable */
+#define IMX8MM_CSI_BRIDGE_CSI_HCLK_EN			0
+#define IMX8MM_CSI_BRIDGE_SPU_CLK_EN			1
+#define IMX8MM_CSI_BRIDGE_MEM_WRAPPER_CLK_EN		2
+#define IMX8MM_CSI_BRIDGE_IPG_CLK_EN			3
+#define IMX8MM_CSI_BRIDGE_IPG_CLK_S_EN			4
+#define IMX8MM_CSI_BRIDGE_IPG_CLK_S_RAW_EN		5
+#define IMX8MM_LCDIF_APB_CLK_EN				6
+#define IMX8MM_LCDIF_PIXEL_CLK_EN			7
+#define IMX8MM_MIPI_DSI_PCLK_EN				8
+#define IMX8MM_MIPI_DSI_CLKREF_EN			9
+#define IMX8MM_MIPI_CSI_ACLK_EN				10
+#define IMX8MM_MIPI_CSI_PCLK_EN				11
+#define IMX8MM_BUS_BLK_CLK_EN				12
+#define IMX8MM_DISPMIX_CLK_EN_NUM			13
+
+/* MIPI reset */
+#define IMX8MM_MIPI_S_RESET				0
+#define IMX8MM_MIPI_M_RESET				1
+#define IMX8MM_MIPI_RESET_NUM				2
+
+#endif
diff --git a/include/dt-bindings/reset/imx8mn-dispmix.h b/include/dt-bindings/reset/imx8mn-dispmix.h
new file mode 100644
index 000000000000..8703ebe7d4b2
--- /dev/null
+++ b/include/dt-bindings/reset/imx8mn-dispmix.h
@@ -0,0 +1,47 @@
+/*
+ * Copyright 2019 NXP
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ */
+
+#ifndef __IMX8MN_DISPMIX_H__
+#define __IMX8MN_DISPMIX_H__
+
+/* DISPMIX soft reset */
+#define IMX8MN_MIPI_DSI_PCLK_RESET			0
+#define IMX8MN_MIPI_DSI_CLKREF_RESET			1
+#define IMX8MN_MIPI_CSI_PCLK_RESET			2
+#define IMX8MN_MIPI_CSI_ACLK_RESET			3
+#define IMX8MN_LCDIF_PIXEL_CLK_RESET			4
+#define IMX8MN_LCDIF_APB_CLK_RESET			5
+#define IMX8MN_ISI_PROC_CLK_RESET			6
+#define IMX8MN_ISI_APB_CLK_RESET			7
+#define IMX8MN_BUS_BLK_CLK_RESET			8
+#define IMX8MN_DISPMIX_SFT_RSTN_NUM			9
+
+/* DISPMIX clock soft enable */
+#define IMX8MN_MIPI_DSI_PCLK_EN				0
+#define IMX8MN_MIPI_DSI_CLKREF_EN			1
+#define IMX8MN_MIPI_CSI_PCLK_EN				2
+#define IMX8MN_MIPI_CSI_ACLK_EN				3
+#define IMX8MN_LCDIF_PIXEL_CLK_EN			4
+#define IMX8MN_LCDIF_APB_CLK_EN				5
+#define IMX8MN_ISI_PROC_CLK_EN				6
+#define IMX8MN_ISI_APB_CLK_EN				7
+#define IMX8MN_BUS_BLK_CLK_EN				8
+#define IMX8MN_DISPMIX_CLK_EN_NUM			9
+
+/* MIPI reset */
+#define IMX8MN_MIPI_S_RESET				0
+#define IMX8MN_MIPI_M_RESET				1
+#define IMX8MN_MIPI_RESET_NUM				2
+
+#endif
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
