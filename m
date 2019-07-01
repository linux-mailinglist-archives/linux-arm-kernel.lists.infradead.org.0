Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C14457A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 10:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=PRK8cPYnefT/0C/6zZg+ZfzQ7NL55PTpJvxaLiFdQ0A=; b=oCl
	bnxzdpMFXbOjpX8qD9SzEy2z3SmJPpxaIhvpAdHbuBCl3r2d8yYu8oL9RiQOL2ZD2PkfzPMRSav2j
	JMVRTUUUAzNRMktTPkuaLBjSY1lXVSWHbCjTK6rAKaISEwZLk3Kuy4mc0Tpo874jUithx74IQhlef
	SOInFEAsLIU7EJp2hi17LqtT7AuPGRPEbWKdxU72sr0qSMYjLh/LfFbJO6ybX/kJ5WKS8RV5thNBf
	lc3YxUMB/XzTXlJ7nZ+Sxk3nZ4kDA/vm5zMRx8zhE4FDtcyfFbaH/oSg2M+5q9WmPE8GMOS+BqcSG
	TYVQBYWnEGXj22JkmE0gmclfO0qwawQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbhhM-00006p-QI; Fri, 14 Jun 2019 08:36:36 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbhh5-000062-5i
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 08:36:21 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9EA8E200E46;
 Fri, 14 Jun 2019 10:36:17 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 551B4200077;
 Fri, 14 Jun 2019 10:36:05 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8657A402A0;
 Fri, 14 Jun 2019 16:35:51 +0800 (SGT)
From: Anson.Huang@nxp.com
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, catalin.marinas@arm.com,
 will.deacon@arm.com, maxime.ripard@bootlin.com, horms+renesas@verge.net.au,
 olof@lixom.net, jagan@amarulasolutions.com, bjorn.andersson@linaro.org,
 leonard.crestez@nxp.com, dinguyen@kernel.org, enric.balletbo@collabora.com,
 aisheng.dong@nxp.com, ping.bai@nxp.com, abel.vesa@nxp.com,
 l.stach@pengutronix.de, peng.fan@nxp.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V5 1/5] dt-bindings: imx: Add clock binding doc for i.MX8MN
Date: Fri, 14 Jun 2019 16:37:43 +0800
Message-Id: <20190614083747.28762-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_013619_495667_5A20032B 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

Add the clock binding doc for i.MX8MN.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
Changes since V4:
	- remove unnecessary reference statement for common clock binding;
	- move the description about clock cell to clock-cells node.
---
 .../devicetree/bindings/clock/imx8mn-clock.yaml    | 112 +++++++++++
 include/dt-bindings/clock/imx8mn-clock.h           | 215 +++++++++++++++++++++
 2 files changed, 327 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/imx8mn-clock.yaml
 create mode 100644 include/dt-bindings/clock/imx8mn-clock.h

diff --git a/Documentation/devicetree/bindings/clock/imx8mn-clock.yaml b/Documentation/devicetree/bindings/clock/imx8mn-clock.yaml
new file mode 100644
index 0000000..454c5b4
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx8mn-clock.yaml
@@ -0,0 +1,112 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bindings/clock/imx8mn-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8M Nano Clock Control Module Binding
+
+maintainers:
+  - Anson Huang <Anson.Huang@nxp.com>
+
+description: |
+  NXP i.MX8M Nano clock control module is an integrated clock controller, which
+  generates and supplies to all modules.
+
+properties:
+  compatible:
+    const: fsl,imx8mn-ccm
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: 32k osc
+      - description: 24m osc
+      - description: ext1 clock input
+      - description: ext2 clock input
+      - description: ext3 clock input
+      - description: ext4 clock input
+
+  clock-names:
+    items:
+      - const: osc_32k
+      - const: osc_24m
+      - const: clk_ext1
+      - const: clk_ext2
+      - const: clk_ext3
+      - const: clk_ext4
+
+  '#clock-cells':
+    const: 1
+    description: |
+      The clock consumer should specify the desired clock by having the clock
+      ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx8mn-clock.h
+      for the full list of i.MX8M Nano clock IDs.
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - '#clock-cells'
+
+examples:
+  # Clock Control Module node:
+  - |
+    clk: clock-controller@30380000 {
+        compatible = "fsl,imx8mn-ccm";
+        reg = <0x0 0x30380000 0x0 0x10000>;
+        #clock-cells = <1>;
+        clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>,
+                 <&clk_ext2>, <&clk_ext3>, <&clk_ext4>;
+        clock-names = "osc_32k", "osc_24m", "clk_ext1",
+                      "clk_ext2", "clk_ext3", "clk_ext4";
+    };
+
+  # Required external clocks for Clock Control Module node:
+  - |
+    osc_32k: clock-osc-32k {
+        compatible = "fixed-clock";
+        #clock-cells = <0>;
+        clock-frequency = <32768>;
+	clock-output-names = "osc_32k";
+    };
+
+    osc_24m: clock-osc-24m {
+        compatible = "fixed-clock";
+        #clock-cells = <0>;
+        clock-frequency = <24000000>;
+        clock-output-names = "osc_24m";
+    };
+
+    clk_ext1: clock-ext1 {
+        compatible = "fixed-clock";
+        #clock-cells = <0>;
+        clock-frequency = <133000000>;
+        clock-output-names = "clk_ext1";
+    };
+
+    clk_ext2: clock-ext2 {
+        compatible = "fixed-clock";
+        #clock-cells = <0>;
+        clock-frequency = <133000000>;
+        clock-output-names = "clk_ext2";
+    };
+
+    clk_ext3: clock-ext3 {
+        compatible = "fixed-clock";
+        #clock-cells = <0>;
+        clock-frequency = <133000000>;
+        clock-output-names = "clk_ext3";
+    };
+
+    clk_ext4: clock-ext4 {
+        compatible = "fixed-clock";
+        #clock-cells = <0>;
+        clock-frequency= <133000000>;
+        clock-output-names = "clk_ext4";
+    };
+
+...
diff --git a/include/dt-bindings/clock/imx8mn-clock.h b/include/dt-bindings/clock/imx8mn-clock.h
new file mode 100644
index 0000000..5255b1c
--- /dev/null
+++ b/include/dt-bindings/clock/imx8mn-clock.h
@@ -0,0 +1,215 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright 2018-2019 NXP
+ */
+
+#ifndef __DT_BINDINGS_CLOCK_IMX8MN_H
+#define __DT_BINDINGS_CLOCK_IMX8MN_H
+
+#define IMX8MN_CLK_DUMMY			0
+#define IMX8MN_CLK_32K				1
+#define IMX8MN_CLK_24M				2
+#define IMX8MN_OSC_HDMI_CLK			3
+#define IMX8MN_CLK_EXT1				4
+#define IMX8MN_CLK_EXT2				5
+#define IMX8MN_CLK_EXT3				6
+#define IMX8MN_CLK_EXT4				7
+#define IMX8MN_AUDIO_PLL1_REF_SEL		8
+#define IMX8MN_AUDIO_PLL2_REF_SEL		9
+#define IMX8MN_VIDEO_PLL1_REF_SEL		10
+#define IMX8MN_DRAM_PLL_REF_SEL			11
+#define IMX8MN_GPU_PLL_REF_SEL			12
+#define IMX8MN_VPU_PLL_REF_SEL			13
+#define IMX8MN_ARM_PLL_REF_SEL			14
+#define IMX8MN_SYS_PLL1_REF_SEL			15
+#define IMX8MN_SYS_PLL2_REF_SEL			16
+#define IMX8MN_SYS_PLL3_REF_SEL			17
+#define IMX8MN_AUDIO_PLL1			18
+#define IMX8MN_AUDIO_PLL2			19
+#define IMX8MN_VIDEO_PLL1			20
+#define IMX8MN_DRAM_PLL				21
+#define IMX8MN_GPU_PLL				22
+#define IMX8MN_VPU_PLL				23
+#define IMX8MN_ARM_PLL				24
+#define IMX8MN_SYS_PLL1				25
+#define IMX8MN_SYS_PLL2				26
+#define IMX8MN_SYS_PLL3				27
+#define IMX8MN_AUDIO_PLL1_BYPASS		28
+#define IMX8MN_AUDIO_PLL2_BYPASS		29
+#define IMX8MN_VIDEO_PLL1_BYPASS		30
+#define IMX8MN_DRAM_PLL_BYPASS			31
+#define IMX8MN_GPU_PLL_BYPASS			32
+#define IMX8MN_VPU_PLL_BYPASS			33
+#define IMX8MN_ARM_PLL_BYPASS			34
+#define IMX8MN_SYS_PLL1_BYPASS			35
+#define IMX8MN_SYS_PLL2_BYPASS			36
+#define IMX8MN_SYS_PLL3_BYPASS			37
+#define IMX8MN_AUDIO_PLL1_OUT			38
+#define IMX8MN_AUDIO_PLL2_OUT			39
+#define IMX8MN_VIDEO_PLL1_OUT			40
+#define IMX8MN_DRAM_PLL_OUT			41
+#define IMX8MN_GPU_PLL_OUT			42
+#define IMX8MN_VPU_PLL_OUT			43
+#define IMX8MN_ARM_PLL_OUT			44
+#define IMX8MN_SYS_PLL1_OUT			45
+#define IMX8MN_SYS_PLL2_OUT			46
+#define IMX8MN_SYS_PLL3_OUT			47
+#define IMX8MN_SYS_PLL1_40M			48
+#define IMX8MN_SYS_PLL1_80M			49
+#define IMX8MN_SYS_PLL1_100M			50
+#define IMX8MN_SYS_PLL1_133M			51
+#define IMX8MN_SYS_PLL1_160M			52
+#define IMX8MN_SYS_PLL1_200M			53
+#define IMX8MN_SYS_PLL1_266M			54
+#define IMX8MN_SYS_PLL1_400M			55
+#define IMX8MN_SYS_PLL1_800M			56
+#define IMX8MN_SYS_PLL2_50M			57
+#define IMX8MN_SYS_PLL2_100M			58
+#define IMX8MN_SYS_PLL2_125M			59
+#define IMX8MN_SYS_PLL2_166M			60
+#define IMX8MN_SYS_PLL2_200M			61
+#define IMX8MN_SYS_PLL2_250M			62
+#define IMX8MN_SYS_PLL2_333M			63
+#define IMX8MN_SYS_PLL2_500M			64
+#define IMX8MN_SYS_PLL2_1000M			65
+
+/* CORE CLOCK ROOT */
+#define IMX8MN_CLK_A53_SRC			66
+#define IMX8MN_CLK_GPU_CORE_SRC			67
+#define IMX8MN_CLK_GPU_SHADER_SRC		68
+#define IMX8MN_CLK_A53_CG			69
+#define IMX8MN_CLK_GPU_CORE_CG			70
+#define IMX8MN_CLK_GPU_SHADER_CG		71
+#define IMX8MN_CLK_A53_DIV			72
+#define IMX8MN_CLK_GPU_CORE_DIV			73
+#define IMX8MN_CLK_GPU_SHADER_DIV		74
+
+/* BUS CLOCK ROOT */
+#define IMX8MN_CLK_MAIN_AXI			75
+#define IMX8MN_CLK_ENET_AXI			76
+#define IMX8MN_CLK_NAND_USDHC_BUS		77
+#define IMX8MN_CLK_DISP_AXI			78
+#define IMX8MN_CLK_DISP_APB			79
+#define IMX8MN_CLK_USB_BUS			80
+#define IMX8MN_CLK_GPU_AXI			81
+#define IMX8MN_CLK_GPU_AHB			82
+#define IMX8MN_CLK_NOC				83
+#define IMX8MN_CLK_AHB				84
+#define IMX8MN_CLK_AUDIO_AHB			85
+
+/* IPG CLOCK ROOT */
+#define IMX8MN_CLK_IPG_ROOT			86
+#define IMX8MN_CLK_IPG_AUDIO_ROOT		87
+
+/* IP */
+#define IMX8MN_CLK_DRAM_CORE			88
+#define IMX8MN_CLK_DRAM_ALT			89
+#define IMX8MN_CLK_DRAM_APB			90
+#define IMX8MN_CLK_DRAM_ALT_ROOT		91
+#define IMX8MN_CLK_DISP_PIXEL			92
+#define IMX8MN_CLK_SAI2				93
+#define IMX8MN_CLK_SAI3				94
+#define IMX8MN_CLK_SAI5				95
+#define IMX8MN_CLK_SAI6				96
+#define IMX8MN_CLK_SPDIF1			97
+#define IMX8MN_CLK_ENET_REF			98
+#define IMX8MN_CLK_ENET_TIMER			99
+#define IMX8MN_CLK_ENET_PHY_REF			100
+#define IMX8MN_CLK_NAND				101
+#define IMX8MN_CLK_QSPI				102
+#define IMX8MN_CLK_USDHC1			103
+#define IMX8MN_CLK_USDHC2			104
+#define IMX8MN_CLK_I2C1				105
+#define IMX8MN_CLK_I2C2				106
+#define IMX8MN_CLK_I2C3				107
+#define IMX8MN_CLK_I2C4				118
+#define IMX8MN_CLK_UART1			119
+#define IMX8MN_CLK_UART2			110
+#define IMX8MN_CLK_UART3			111
+#define IMX8MN_CLK_UART4			112
+#define IMX8MN_CLK_USB_CORE_REF			113
+#define IMX8MN_CLK_USB_PHY_REF			114
+#define IMX8MN_CLK_ECSPI1			115
+#define IMX8MN_CLK_ECSPI2			116
+#define IMX8MN_CLK_PWM1				117
+#define IMX8MN_CLK_PWM2				118
+#define IMX8MN_CLK_PWM3				119
+#define IMX8MN_CLK_PWM4				120
+#define IMX8MN_CLK_WDOG				121
+#define IMX8MN_CLK_WRCLK			122
+#define IMX8MN_CLK_CLKO1			123
+#define IMX8MN_CLK_CLKO2			124
+#define IMX8MN_CLK_DSI_CORE			125
+#define IMX8MN_CLK_DSI_PHY_REF			126
+#define IMX8MN_CLK_DSI_DBI			127
+#define IMX8MN_CLK_USDHC3			128
+#define IMX8MN_CLK_CAMERA_PIXEL			129
+#define IMX8MN_CLK_CSI1_PHY_REF			130
+#define IMX8MN_CLK_CSI2_PHY_REF			131
+#define IMX8MN_CLK_CSI2_ESC			132
+#define IMX8MN_CLK_ECSPI3			133
+#define IMX8MN_CLK_PDM				134
+#define IMX8MN_CLK_SAI7				135
+
+#define IMX8MN_CLK_ECSPI1_ROOT			136
+#define IMX8MN_CLK_ECSPI2_ROOT			137
+#define IMX8MN_CLK_ECSPI3_ROOT			138
+#define IMX8MN_CLK_ENET1_ROOT			139
+#define IMX8MN_CLK_GPIO1_ROOT			140
+#define IMX8MN_CLK_GPIO2_ROOT			141
+#define IMX8MN_CLK_GPIO3_ROOT			142
+#define IMX8MN_CLK_GPIO4_ROOT			143
+#define IMX8MN_CLK_GPIO5_ROOT			144
+#define IMX8MN_CLK_I2C1_ROOT			145
+#define IMX8MN_CLK_I2C2_ROOT			146
+#define IMX8MN_CLK_I2C3_ROOT			147
+#define IMX8MN_CLK_I2C4_ROOT			148
+#define IMX8MN_CLK_MU_ROOT			149
+#define IMX8MN_CLK_OCOTP_ROOT			150
+#define IMX8MN_CLK_PWM1_ROOT			151
+#define IMX8MN_CLK_PWM2_ROOT			152
+#define IMX8MN_CLK_PWM3_ROOT			153
+#define IMX8MN_CLK_PWM4_ROOT			154
+#define IMX8MN_CLK_QSPI_ROOT			155
+#define IMX8MN_CLK_NAND_ROOT			156
+#define IMX8MN_CLK_SAI2_ROOT			157
+#define IMX8MN_CLK_SAI2_IPG			158
+#define IMX8MN_CLK_SAI3_ROOT			159
+#define IMX8MN_CLK_SAI3_IPG			160
+#define IMX8MN_CLK_SAI5_ROOT			161
+#define IMX8MN_CLK_SAI5_IPG			162
+#define IMX8MN_CLK_SAI6_ROOT			163
+#define IMX8MN_CLK_SAI6_IPG			164
+#define IMX8MN_CLK_SAI7_ROOT			165
+#define IMX8MN_CLK_SAI7_IPG			166
+#define IMX8MN_CLK_SDMA1_ROOT			167
+#define IMX8MN_CLK_SDMA2_ROOT			168
+#define IMX8MN_CLK_UART1_ROOT			169
+#define IMX8MN_CLK_UART2_ROOT			170
+#define IMX8MN_CLK_UART3_ROOT			171
+#define IMX8MN_CLK_UART4_ROOT			172
+#define IMX8MN_CLK_USB1_CTRL_ROOT		173
+#define IMX8MN_CLK_USDHC1_ROOT			174
+#define IMX8MN_CLK_USDHC2_ROOT			175
+#define IMX8MN_CLK_WDOG1_ROOT			176
+#define IMX8MN_CLK_WDOG2_ROOT			177
+#define IMX8MN_CLK_WDOG3_ROOT			178
+#define IMX8MN_CLK_GPU_BUS_ROOT			179
+#define IMX8MN_CLK_ASRC_ROOT			180
+#define IMX8MN_CLK_GPU3D_ROOT			181
+#define IMX8MN_CLK_PDM_ROOT			182
+#define IMX8MN_CLK_PDM_IPG			183
+#define IMX8MN_CLK_DISP_AXI_ROOT		184
+#define IMX8MN_CLK_DISP_APB_ROOT		185
+#define IMX8MN_CLK_DISP_PIXEL_ROOT		186
+#define IMX8MN_CLK_CAMERA_PIXEL_ROOT		187
+#define IMX8MN_CLK_USDHC3_ROOT			188
+#define IMX8MN_CLK_SDMA3_ROOT			189
+#define IMX8MN_CLK_TMU_ROOT			190
+#define IMX8MN_CLK_ARM				191
+#define IMX8MN_CLK_NAND_USDHC_BUS_RAWNAND_CLK	192
+#define IMX8MN_CLK_GPU_CORE_ROOT		193
+
+#define IMX8MN_CLK_END				194
+
+#endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
