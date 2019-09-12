Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 173C8B156E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 22:31:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZIh3Fw7846Idyv+0xyAIKCvTB0aqdpedatr7Hs1M0sM=; b=jxc1C6zDuE0N1L
	UKTtmM8m2UnW7xpmdwUcLXYGFbLlfGNuklqmo2x9p2IGni18mybvTuuMAokxhqLIKT444zafIoFO4
	N4paLC7DCZrP2B284JiGjyPAgD8NzTmo9tF4cUZEelb1yfAQQomIIXlfv6ZQfUYh3BLyKzmHuaRAy
	cmTT1etyIAAMaS5Oidamq8tH2F6jWGTQURN8euz0fq/46d3BV7Dz7nGf3hFFaodjlmL9gS/a2iNdx
	61pHWAS2H7uElxMwX0HudDuwR6W0GhXp5c4eJDvURC8ukW37a6E7yOvwHJ3Z8MmGT2UYumKBXiYdt
	+W3bgH4Ui9ABzag7O3Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8VkB-0001B8-FG; Thu, 12 Sep 2019 20:31:07 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Vix-00085e-H5
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 20:29:55 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 46Tr3b1zZTz1rGSC;
 Thu, 12 Sep 2019 22:29:47 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 46Tr3b0p73z1qqkQ;
 Thu, 12 Sep 2019 22:29:47 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id WAU5F5tcWKng; Thu, 12 Sep 2019 22:29:45 +0200 (CEST)
X-Auth-Info: uv1X75pkZge8ym3BMBJ5woezQGDjzCikqsw8qX7sFzc=
Received: from xpert.denx.de (unknown [62.91.23.180])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu, 12 Sep 2019 22:29:45 +0200 (CEST)
From: Parthiban Nallathambi <pn@denx.de>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com
Subject: [PATCH] ARM: dts: imx6: Extend support for Phytec phycore i.MX6ULL SoM
Date: Thu, 12 Sep 2019 22:29:28 +0200
Message-Id: <20190912202928.946200-1-pn@denx.de>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_132952_034239_074823AD 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Parthiban Nallathambi <pn@denx.de>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Extend Phycore i.MX6UL SoM for i.MX6ULL with on board eMMC. Phycore
i.MX6ULL is deployed with same carrier board Segin as the pins are
compatible with UL version.

Signed-off-by: Parthiban Nallathambi <pn@denx.de>
---
 arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi   | 26 +++++++++++++++++--
 .../dts/imx6ul-phytec-phyboard-segin-full.dts |  5 ++++
 arch/arm/boot/dts/imx6ull-phytec-pcl063.dtsi  | 24 +++++++++++++++++
 3 files changed, 53 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boot/dts/imx6ull-phytec-pcl063.dtsi

diff --git a/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi b/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi
index fc2997449b49..822a178ce438 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-pcl063.dtsi
@@ -7,7 +7,6 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/pwm/pwm.h>
-#include "imx6ul.dtsi"
 
 / {
 	model = "Phytec phyCORE i.MX6 UltraLite";
@@ -65,7 +64,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
 	nand-on-flash-bbt;
-	status = "okay";
+	status = "disabled";
 };
 
 &i2c1 {
@@ -90,6 +89,15 @@
 	status = "okay";
 };
 
+&usdhc2 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_usdhc2>;
+	bus-width = <8>;
+	no-1-8-v;
+	non-removable;
+	status = "disabled";
+};
+
 &iomuxc {
 	pinctrl_enet1: enet1grp {
 		fsl,pins = <
@@ -145,4 +153,18 @@
 		>;
 	};
 
+	pinctrl_usdhc2: usdhc2grp {
+		fsl,pins = <
+			MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x170f9
+			MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x100f9
+			MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x170f9
+			MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x170f9
+			MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x170f9
+			MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x170f9
+			MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x170f9
+			MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x170f9
+			MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x170f9
+			MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x170f9
+		>;
+	};
 };
diff --git a/arch/arm/boot/dts/imx6ul-phytec-phyboard-segin-full.dts b/arch/arm/boot/dts/imx6ul-phytec-phyboard-segin-full.dts
index b6a1407a9d44..76f2447f2657 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-phyboard-segin-full.dts
+++ b/arch/arm/boot/dts/imx6ul-phytec-phyboard-segin-full.dts
@@ -5,6 +5,7 @@
  */
 
 /dts-v1/;
+#include "imx6ul.dtsi"
 #include "imx6ul-phytec-pcl063.dtsi"
 #include "imx6ul-phytec-phyboard-segin.dtsi"
 #include "imx6ul-phytec-peb-eval-01.dtsi"
@@ -37,6 +38,10 @@
 	status = "okay";
 };
 
+&gpmi {
+	status = "okay";
+};
+
 &i2c_rtc {
 	status = "okay";
 };
diff --git a/arch/arm/boot/dts/imx6ull-phytec-pcl063.dtsi b/arch/arm/boot/dts/imx6ull-phytec-pcl063.dtsi
new file mode 100644
index 000000000000..3f749d9f09a5
--- /dev/null
+++ b/arch/arm/boot/dts/imx6ull-phytec-pcl063.dtsi
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (C) 2018 PHYTEC Messtechnik GmbH
+ * Author: Stefan Riedmueller <s.riedmueller@phytec.de>
+ */
+
+#include "imx6ul-phytec-pcl063.dtsi"
+
+/ {
+	model = "PHYTEC phyCORE-i.MX 6ULL";
+	compatible = "phytec,imx6ull-pcl063", "fsl,imx6ull";
+};
+
+&iomuxc {
+	/delete-node/ gpioledssomgrp;
+};
+
+&iomuxc_snvs {
+	pinctrl_gpioleds_som: gpioledssomgrp {
+		fsl,pins = <
+			MX6ULL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x0b0b0
+		>;
+	};
+};
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
