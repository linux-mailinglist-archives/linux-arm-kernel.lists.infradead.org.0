Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8021B95D6F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 13:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IjTcJjrr/cu598jRa6nlU2rdvvLhhQYJLN5uPC5zT6Y=; b=uYUnc0xBI/u1P5YYoAdT74DNPs
	R1NAN+yCD7LsK1uUVb3O2Mbyp2n0Sf6aCzx9z9fNU7kglqojB5G1KjIDrYR/vjEkX9LdaQ58j88qb
	VApl0gv2oZFfCvdzQWIKdcyVOpvK+oJhQ5UcaybFs+BZWjqAE2eCLRKuuplSv9ft8xQpYOk+TyH6t
	HVaiSe6Sf6aTJWRbjK3ZHtT7lfXn1TAEP3fAJQzp9aTzep2bhT1ORHHvkeTkEoJ6ijn0a2tQVdu7a
	PePSQ4XJMRJgy0ZQ9i8d9oUIbJ9A4oGD3Gm+hSbjaJ/yEx0lgt0cQHZZJhn/6PBgxqBYRjr8atpSW
	Y4ZvWjDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i02OJ-00030w-BC; Tue, 20 Aug 2019 11:33:31 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i02Mv-00023y-E5
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 11:32:07 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3FC7B1A0117;
 Tue, 20 Aug 2019 13:32:04 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E71C41A0275;
 Tue, 20 Aug 2019 13:31:58 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 74C8A40318;
 Tue, 20 Aug 2019 19:31:52 +0800 (SGT)
From: Dong Aisheng <aisheng.dong@nxp.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH V4 02/11] dt-bindings: clock: imx-lpcg: add support to parse
 clocks from device tree
Date: Tue, 20 Aug 2019 07:13:16 -0400
Message-Id: <1566299605-15641-3-git-send-email-aisheng.dong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
References: <1566299605-15641-1-git-send-email-aisheng.dong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_043205_754135_B6546F6B 
X-CRM114-Status: GOOD (  14.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, devicetree@vger.kernel.org,
 sboyd@kernel.org, mturquette@baylibre.com, Rob Herring <robh+dt@kernel.org>,
 linux-imx@nxp.com, kernel@pengutronix.de, fabio.estevam@nxp.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MX8QM and MX8QXP LPCG Clocks are mostly the same except they may reside
in different subsystems across CPUs and also vary a bit on the availability.

Same as SCU clock, we want to move the clock definition into device tree
which can fully decouple the dependency of Clock ID definition from device
tree and make us be able to write a fully generic lpcg clock driver.

And we can also use the existence of clock nodes in device tree to address
the device and clock availability differences across different SoCs.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <kernel@pengutronix.de>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
---
ChangeLog:
v3->v4:
 * change bit-offset property to clock-indices
 * use constant macro to define clock indinces
 * drop hw-autogate property which is still not used by drivers
v2->v3:
 * no changes
v1->v2:
 * Update example
 * Add power domain property
---
 .../devicetree/bindings/clock/imx8qxp-lpcg.txt     | 36 ++++++++++++++++++----
 include/dt-bindings/clock/imx8-lpcg.h              | 14 +++++++++
 2 files changed, 44 insertions(+), 6 deletions(-)
 create mode 100644 include/dt-bindings/clock/imx8-lpcg.h

diff --git a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
index 965cfa4..cad8fc4 100644
--- a/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
+++ b/Documentation/devicetree/bindings/clock/imx8qxp-lpcg.txt
@@ -11,6 +11,21 @@ enabled by these control bits, it might still not be running based
 on the base resource.
 
 Required properties:
+- compatible:		Should be one of:
+			  "fsl,imx8qxp-lpcg"
+			  "fsl,imx8qm-lpcg" followed by "fsl,imx8qxp-lpcg".
+- reg:			Address and length of the register set.
+- #clock-cells:		Should be 1. One LPCG supports multiple clocks.
+- clocks:		Input parent clocks phandle array for each clock.
+- clock-indices:	An integer array indicating the bit offset for each clock.
+			Refer to <include/dt-bindings/clock/imx8-lpcg.h> for the
+			supported LPCG clock indices.
+- clock-output-names:	Shall be the corresponding names of the outputs.
+			NOTE this property must be specified in the same order
+			as the clock-indices property.
+- power-domains:	Should contain the power domain used by this clock.
+
+Legacy binding (DEPRECATED):
 - compatible:	Should be one of:
 		  "fsl,imx8qxp-lpcg-adma",
 		  "fsl,imx8qxp-lpcg-conn",
@@ -33,10 +48,19 @@ Examples:
 
 #include <dt-bindings/clock/imx8qxp-clock.h>
 
-conn_lpcg: clock-controller@5b200000 {
-	compatible = "fsl,imx8qxp-lpcg-conn";
-	reg = <0x5b200000 0xb0000>;
+sdhc0_lpcg: clock-controller@5b200000 {
+	compatible = "fsl,imx8qxp-lpcg";
+	reg = <0x5b200000 0x10000>;
 	#clock-cells = <1>;
+	clocks = <&sdhc0_clk IMX_SC_PM_CLK_PER>,
+		 <&conn_ipg_clk>, <&conn_axi_clk>;
+	clock-indices = <IMX_LPCG_CLK_0>,
+			<IMX_LPCG_CLK_4>,
+			<IMX_LPCG_CLK_5>;
+	clock-output-names = "sdhc0_lpcg_per_clk",
+			     "sdhc0_lpcg_ipg_clk",
+			     "sdhc0_lpcg_ahb_clk";
+	power-domains = <&pd IMX_SC_R_SDHC_0>;
 };
 
 usdhc1: mmc@5b010000 {
@@ -44,8 +68,8 @@ usdhc1: mmc@5b010000 {
 	interrupt-parent = <&gic>;
 	interrupts = <GIC_SPI 232 IRQ_TYPE_LEVEL_HIGH>;
 	reg = <0x5b010000 0x10000>;
-	clocks = <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_IPG_CLK>,
-		 <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_PER_CLK>,
-		 <&conn_lpcg IMX8QXP_CONN_LPCG_SDHC0_HCLK>;
+	clocks = <&sdhc0_lpcg IMX_LPCG_CLK_4>,
+		 <&sdhc0_lpcg IMX_LPCG_CLK_0>,
+		 <&sdhc0_lpcg IMX_LPCG_CLK_5>;
 	clock-names = "ipg", "per", "ahb";
 };
diff --git a/include/dt-bindings/clock/imx8-lpcg.h b/include/dt-bindings/clock/imx8-lpcg.h
new file mode 100644
index 0000000..df90aad
--- /dev/null
+++ b/include/dt-bindings/clock/imx8-lpcg.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright 2019 NXP
+ *   Dong Aisheng <aisheng.dong@nxp.com>
+ */
+
+#define IMX_LPCG_CLK_0	0
+#define IMX_LPCG_CLK_1	4
+#define IMX_LPCG_CLK_2	8
+#define IMX_LPCG_CLK_3	12
+#define IMX_LPCG_CLK_4	16
+#define IMX_LPCG_CLK_5	20
+#define IMX_LPCG_CLK_6	24
+#define IMX_LPCG_CLK_7	28
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
