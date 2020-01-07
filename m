Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59EBD132292
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 10:35:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=etLnKet7k/8aP/pDy5bzBCbQsYMLbs8X4iMKyWTyU60=; b=bFLWSc5XZiLfBDItr7Wue0KYbt
	vrQkrsV8FK6xB7LNUdsOccTdXxXgY77mpVsj30jyvKGDlTCCY5HnTBn96Y0tlQeL8Dv9jtILjUW3E
	zn664XE3/SnGRtFldAds5lIulOnKLFWyGytzpRIQhqVWXJySALCusIQj1r34OtdE++io8o/dEMvMi
	nlT6QbPT3+XPTFVUB3BKg2delY+xlKso6XU89895QAKd9Ql5f2/cQ87sSOitXWNhmegFrRIbWkIlD
	R7VWxRf/khMzPlEOUx5NSx2Y2N+dsinAkzUdW1EnESfrhbqANMHm5wu45h16V6U2WNdlp2dvZ/0Rv
	CeA9TDxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iolGn-0002wd-UV; Tue, 07 Jan 2020 09:35:25 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolFv-0002R0-F2
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 09:34:34 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 516DE1A0A58;
 Tue,  7 Jan 2020 10:34:28 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 26D461A034F;
 Tue,  7 Jan 2020 10:34:12 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id F3EDB402D7;
 Tue,  7 Jan 2020 16:56:59 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, catalin.marinas@arm.com,
 will@kernel.org, bjorn.andersson@linaro.org, olof@lixom.net,
 maxime@cerno.tech, leonard.crestez@nxp.com, dinguyen@kernel.org,
 marcin.juszkiewicz@linaro.org, ping.bai@nxp.com, abel.vesa@nxp.com,
 nsekhar@ti.com, t-kristo@ti.com, peng.fan@nxp.com, yuehaibing@huawei.com,
 aisheng.dong@nxp.com, sfr@canb.auug.org.au, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 3/5] dt-bindings: imx: Add clock binding doc for i.MX8MP
Date: Tue,  7 Jan 2020 16:53:15 +0800
Message-Id: <1578387197-5750-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578387197-5750-1-git-send-email-Anson.Huang@nxp.com>
References: <1578387197-5750-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_013431_784951_D1D18378 
X-CRM114-Status: GOOD (  11.01  )
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the clock binding doc for i.MX8MP.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- Remove unuseful examples;
---
 .../devicetree/bindings/clock/imx8mp-clock.yaml    |  68 +++++
 include/dt-bindings/clock/imx8mp-clock.h           | 300 +++++++++++++++++++++
 2 files changed, 368 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/imx8mp-clock.yaml
 create mode 100644 include/dt-bindings/clock/imx8mp-clock.h

diff --git a/Documentation/devicetree/bindings/clock/imx8mp-clock.yaml b/Documentation/devicetree/bindings/clock/imx8mp-clock.yaml
new file mode 100644
index 0000000..8027888
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/imx8mp-clock.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bindings/clock/imx8mp-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP i.MX8M Plus Clock Control Module Binding
+
+maintainers:
+  - Anson Huang <Anson.Huang@nxp.com>
+
+description:
+  NXP i.MX8M Plus clock control module is an integrated clock controller, which
+  generates and supplies to all modules.
+
+properties:
+  compatible:
+    const: fsl,imx8mp-ccm
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
+    description:
+      The clock consumer should specify the desired clock by having the clock
+      ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx8mp-clock.h
+      for the full list of i.MX8M Plus clock IDs.
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
+        compatible = "fsl,imx8mp-ccm";
+        reg = <0x30380000 0x10000>;
+        #clock-cells = <1>;
+        clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>,
+                 <&clk_ext2>, <&clk_ext3>, <&clk_ext4>;
+        clock-names = "osc_32k", "osc_24m", "clk_ext1",
+                      "clk_ext2", "clk_ext3", "clk_ext4";
+    };
+
+...
diff --git a/include/dt-bindings/clock/imx8mp-clock.h b/include/dt-bindings/clock/imx8mp-clock.h
new file mode 100644
index 0000000..2fab631
--- /dev/null
+++ b/include/dt-bindings/clock/imx8mp-clock.h
@@ -0,0 +1,300 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright 2019 NXP
+ */
+
+#ifndef __DT_BINDINGS_CLOCK_IMX8MP_H
+#define __DT_BINDINGS_CLOCK_IMX8MP_H
+
+#define IMX8MP_CLK_DUMMY			0
+#define IMX8MP_CLK_32K				1
+#define IMX8MP_CLK_24M				2
+#define IMX8MP_OSC_HDMI_CLK			3
+#define IMX8MP_CLK_EXT1				4
+#define IMX8MP_CLK_EXT2				5
+#define IMX8MP_CLK_EXT3				6
+#define IMX8MP_CLK_EXT4				7
+#define IMX8MP_AUDIO_PLL1_REF_SEL		8
+#define IMX8MP_AUDIO_PLL2_REF_SEL		9
+#define IMX8MP_VIDEO_PLL1_REF_SEL		10
+#define IMX8MP_DRAM_PLL_REF_SEL			11
+#define IMX8MP_GPU_PLL_REF_SEL			12
+#define IMX8MP_VPU_PLL_REF_SEL			13
+#define IMX8MP_ARM_PLL_REF_SEL			14
+#define IMX8MP_SYS_PLL1_REF_SEL			15
+#define IMX8MP_SYS_PLL2_REF_SEL			16
+#define IMX8MP_SYS_PLL3_REF_SEL			17
+#define IMX8MP_AUDIO_PLL1			18
+#define IMX8MP_AUDIO_PLL2			19
+#define IMX8MP_VIDEO_PLL1			20
+#define IMX8MP_DRAM_PLL				21
+#define IMX8MP_GPU_PLL				22
+#define IMX8MP_VPU_PLL				23
+#define IMX8MP_ARM_PLL				24
+#define IMX8MP_SYS_PLL1				25
+#define IMX8MP_SYS_PLL2				26
+#define IMX8MP_SYS_PLL3				27
+#define IMX8MP_AUDIO_PLL1_BYPASS		28
+#define IMX8MP_AUDIO_PLL2_BYPASS		29
+#define IMX8MP_VIDEO_PLL1_BYPASS		30
+#define IMX8MP_DRAM_PLL_BYPASS			31
+#define IMX8MP_GPU_PLL_BYPASS			32
+#define IMX8MP_VPU_PLL_BYPASS			33
+#define IMX8MP_ARM_PLL_BYPASS			34
+#define IMX8MP_SYS_PLL1_BYPASS			35
+#define IMX8MP_SYS_PLL2_BYPASS			36
+#define IMX8MP_SYS_PLL3_BYPASS			37
+#define IMX8MP_AUDIO_PLL1_OUT			38
+#define IMX8MP_AUDIO_PLL2_OUT			39
+#define IMX8MP_VIDEO_PLL1_OUT			40
+#define IMX8MP_DRAM_PLL_OUT			41
+#define IMX8MP_GPU_PLL_OUT			42
+#define IMX8MP_VPU_PLL_OUT			43
+#define IMX8MP_ARM_PLL_OUT			44
+#define IMX8MP_SYS_PLL1_OUT			45
+#define IMX8MP_SYS_PLL2_OUT			46
+#define IMX8MP_SYS_PLL3_OUT			47
+#define IMX8MP_SYS_PLL1_40M			48
+#define IMX8MP_SYS_PLL1_80M			49
+#define IMX8MP_SYS_PLL1_100M			50
+#define IMX8MP_SYS_PLL1_133M			51
+#define IMX8MP_SYS_PLL1_160M			52
+#define IMX8MP_SYS_PLL1_200M			53
+#define IMX8MP_SYS_PLL1_266M			54
+#define IMX8MP_SYS_PLL1_400M			55
+#define IMX8MP_SYS_PLL1_800M			56
+#define IMX8MP_SYS_PLL2_50M			57
+#define IMX8MP_SYS_PLL2_100M			58
+#define IMX8MP_SYS_PLL2_125M			59
+#define IMX8MP_SYS_PLL2_166M			60
+#define IMX8MP_SYS_PLL2_200M			61
+#define IMX8MP_SYS_PLL2_250M			62
+#define IMX8MP_SYS_PLL2_333M			63
+#define IMX8MP_SYS_PLL2_500M			64
+#define IMX8MP_SYS_PLL2_1000M			65
+#define IMX8MP_CLK_A53_SRC			66
+#define IMX8MP_CLK_M7_SRC			67
+#define IMX8MP_CLK_ML_SRC			68
+#define IMX8MP_CLK_GPU3D_CORE_SRC		69
+#define IMX8MP_CLK_GPU3D_SHADER_SRC		70
+#define IMX8MP_CLK_GPU2D_SRC			71
+#define IMX8MP_CLK_AUDIO_AXI_SRC		72
+#define IMX8MP_CLK_HSIO_AXI_SRC			73
+#define IMX8MP_CLK_MEDIA_ISP_SRC		74
+#define IMX8MP_CLK_A53_CG			75
+#define IMX8MP_CLK_M4_CG			76
+#define IMX8MP_CLK_ML_CG			77
+#define IMX8MP_CLK_GPU3D_CORE_CG		78
+#define IMX8MP_CLK_GPU3D_SHADER_CG		79
+#define IMX8MP_CLK_GPU2D_CG			80
+#define IMX8MP_CLK_AUDIO_AXI_CG			81
+#define IMX8MP_CLK_HSIO_AXI_CG			82
+#define IMX8MP_CLK_MEDIA_ISP_CG			83
+#define IMX8MP_CLK_A53_DIV			84
+#define IMX8MP_CLK_M7_DIV			85
+#define IMX8MP_CLK_ML_DIV			86
+#define IMX8MP_CLK_GPU3D_CORE_DIV		87
+#define IMX8MP_CLK_GPU3D_SHADER_DIV		88
+#define IMX8MP_CLK_GPU2D_DIV			89
+#define IMX8MP_CLK_AUDIO_AXI_DIV		90
+#define IMX8MP_CLK_HSIO_AXI_DIV			91
+#define IMX8MP_CLK_MEDIA_ISP_DIV		92
+#define IMX8MP_CLK_MAIN_AXI			93
+#define IMX8MP_CLK_ENET_AXI			94
+#define IMX8MP_CLK_NAND_USDHC_BUS		95
+#define IMX8MP_CLK_VPU_BUS			96
+#define IMX8MP_CLK_MEDIA_AXI			97
+#define IMX8MP_CLK_MEDIA_APB			98
+#define IMX8MP_CLK_HDMI_APB			99
+#define IMX8MP_CLK_HDMI_AXI			100
+#define IMX8MP_CLK_GPU_AXI			101
+#define IMX8MP_CLK_GPU_AHB			102
+#define IMX8MP_CLK_NOC				103
+#define IMX8MP_CLK_NOC_IO			104
+#define IMX8MP_CLK_ML_AXI			105
+#define IMX8MP_CLK_ML_AHB			106
+#define IMX8MP_CLK_AHB				107
+#define IMX8MP_CLK_AUDIO_AHB			108
+#define IMX8MP_CLK_MIPI_DSI_ESC_RX		109
+#define IMX8MP_CLK_IPG_ROOT			110
+#define IMX8MP_CLK_IPG_AUDIO_ROOT		111
+#define IMX8MP_CLK_DRAM_ALT			112
+#define IMX8MP_CLK_DRAM_APB			113
+#define IMX8MP_CLK_VPU_G1			114
+#define IMX8MP_CLK_VPU_G2			115
+#define IMX8MP_CLK_CAN1				116
+#define IMX8MP_CLK_CAN2				117
+#define IMX8MP_CLK_MEMREPAIR			118
+#define IMX8MP_CLK_PCIE_PHY			119
+#define IMX8MP_CLK_PCIE_AUX			120
+#define IMX8MP_CLK_I2C5				121
+#define IMX8MP_CLK_I2C6				122
+#define IMX8MP_CLK_SAI1				123
+#define IMX8MP_CLK_SAI2				124
+#define IMX8MP_CLK_SAI3				125
+#define IMX8MP_CLK_SAI4				126
+#define IMX8MP_CLK_SAI5				127
+#define IMX8MP_CLK_SAI6				128
+#define IMX8MP_CLK_ENET_QOS			129
+#define IMX8MP_CLK_ENET_QOS_TIMER		130
+#define IMX8MP_CLK_ENET_REF			131
+#define IMX8MP_CLK_ENET_TIMER			132
+#define IMX8MP_CLK_ENET_PHY_REF			133
+#define IMX8MP_CLK_NAND				134
+#define IMX8MP_CLK_QSPI				135
+#define IMX8MP_CLK_USDHC1			136
+#define IMX8MP_CLK_USDHC2			137
+#define IMX8MP_CLK_I2C1				138
+#define IMX8MP_CLK_I2C2				139
+#define IMX8MP_CLK_I2C3				140
+#define IMX8MP_CLK_I2C4				141
+#define IMX8MP_CLK_UART1			142
+#define IMX8MP_CLK_UART2			143
+#define IMX8MP_CLK_UART3			144
+#define IMX8MP_CLK_UART4			145
+#define IMX8MP_CLK_USB_CORE_REF			146
+#define IMX8MP_CLK_USB_PHY_REF			147
+#define IMX8MP_CLK_GIC				148
+#define IMX8MP_CLK_ECSPI1			149
+#define IMX8MP_CLK_ECSPI2			150
+#define IMX8MP_CLK_PWM1				151
+#define IMX8MP_CLK_PWM2				152
+#define IMX8MP_CLK_PWM3				153
+#define IMX8MP_CLK_PWM4				154
+#define IMX8MP_CLK_GPT1				155
+#define IMX8MP_CLK_GPT2				156
+#define IMX8MP_CLK_GPT3				157
+#define IMX8MP_CLK_GPT4				158
+#define IMX8MP_CLK_GPT5				159
+#define IMX8MP_CLK_GPT6				160
+#define IMX8MP_CLK_TRACE			161
+#define IMX8MP_CLK_WDOG				162
+#define IMX8MP_CLK_WRCLK			163
+#define IMX8MP_CLK_IPP_DO_CLKO1			164
+#define IMX8MP_CLK_IPP_DO_CLKO2			165
+#define IMX8MP_CLK_HDMI_FDCC_TST		166
+#define IMX8MP_CLK_HDMI_27M			167
+#define IMX8MP_CLK_HDMI_REF_266M		168
+#define IMX8MP_CLK_USDHC3			169
+#define IMX8MP_CLK_MEDIA_CAM1_PIX		170
+#define IMX8MP_CLK_MEDIA_MIPI_PHY1_REF		171
+#define IMX8MP_CLK_MEDIA_DISP1_PIX		172
+#define IMX8MP_CLK_MEDIA_CAM2_PIX		173
+#define IMX8MP_CLK_MEDIA_MIPI_PHY2_REF		174
+#define IMX8MP_CLK_MEDIA_MIPI_CSI2_ESC		175
+#define IMX8MP_CLK_PCIE2_CTRL			176
+#define IMX8MP_CLK_PCIE2_PHY			177
+#define IMX8MP_CLK_MEDIA_MIPI_TEST_BYTE		178
+#define IMX8MP_CLK_ECSPI3			179
+#define IMX8MP_CLK_PDM				180
+#define IMX8MP_CLK_VPU_VC8000E			181
+#define IMX8MP_CLK_SAI7				182
+#define IMX8MP_CLK_GPC_ROOT			183
+#define IMX8MP_CLK_ANAMIX_ROOT			184
+#define IMX8MP_CLK_CPU_ROOT			185
+#define IMX8MP_CLK_CSU_ROOT			186
+#define IMX8MP_CLK_DEBUG_ROOT			187
+#define IMX8MP_CLK_DRAM1_ROOT			188
+#define IMX8MP_CLK_ECSPI1_ROOT			189
+#define IMX8MP_CLK_ECSPI2_ROOT			190
+#define IMX8MP_CLK_ECSPI3_ROOT			191
+#define IMX8MP_CLK_ENET1_ROOT			192
+#define IMX8MP_CLK_GPIO1_ROOT			193
+#define IMX8MP_CLK_GPIO2_ROOT			194
+#define IMX8MP_CLK_GPIO3_ROOT			195
+#define IMX8MP_CLK_GPIO4_ROOT			196
+#define IMX8MP_CLK_GPIO5_ROOT			197
+#define IMX8MP_CLK_GPT1_ROOT			198
+#define IMX8MP_CLK_GPT2_ROOT			199
+#define IMX8MP_CLK_GPT3_ROOT			200
+#define IMX8MP_CLK_GPT4_ROOT			201
+#define IMX8MP_CLK_GPT5_ROOT			202
+#define IMX8MP_CLK_GPT6_ROOT			203
+#define IMX8MP_CLK_HS_ROOT			204
+#define IMX8MP_CLK_I2C1_ROOT			205
+#define IMX8MP_CLK_I2C2_ROOT			206
+#define IMX8MP_CLK_I2C3_ROOT			207
+#define IMX8MP_CLK_I2C4_ROOT			208
+#define IMX8MP_CLK_IOMUX_ROOT			209
+#define IMX8MP_CLK_IPMUX1_ROOT			210
+#define IMX8MP_CLK_IPMUX2_ROOT			211
+#define IMX8MP_CLK_IPMUX3_ROOT			212
+#define IMX8MP_CLK_MU_ROOT			213
+#define IMX8MP_CLK_OCOTP_ROOT			214
+#define IMX8MP_CLK_OCRAM_ROOT			215
+#define IMX8MP_CLK_OCRAM_S_ROOT			216
+#define IMX8MP_CLK_PCIE_ROOT			217
+#define IMX8MP_CLK_PERFMON1_ROOT		218
+#define IMX8MP_CLK_PERFMON2_ROOT		219
+#define IMX8MP_CLK_PWM1_ROOT			220
+#define IMX8MP_CLK_PWM2_ROOT			221
+#define IMX8MP_CLK_PWM3_ROOT			222
+#define IMX8MP_CLK_PWM4_ROOT			223
+#define IMX8MP_CLK_QOS_ROOT			224
+#define IMX8MP_CLK_QOS_ENET_ROOT		225
+#define IMX8MP_CLK_QSPI_ROOT			226
+#define IMX8MP_CLK_NAND_ROOT			227
+#define IMX8MP_CLK_NAND_USDHC_BUS_RAWNAND_CLK	228
+#define IMX8MP_CLK_RDC_ROOT			229
+#define IMX8MP_CLK_ROM_ROOT			230
+#define IMX8MP_CLK_I2C5_ROOT			231
+#define IMX8MP_CLK_I2C6_ROOT			232
+#define IMX8MP_CLK_CAN1_ROOT			233
+#define IMX8MP_CLK_CAN2_ROOT			234
+#define IMX8MP_CLK_SCTR_ROOT			235
+#define IMX8MP_CLK_SDMA1_ROOT			236
+#define IMX8MP_CLK_ENET_QOS_ROOT		237
+#define IMX8MP_CLK_SEC_DEBUG_ROOT		238
+#define IMX8MP_CLK_SEMA1_ROOT			239
+#define IMX8MP_CLK_SEMA2_ROOT			240
+#define IMX8MP_CLK_IRQ_STEER_ROOT		241
+#define IMX8MP_CLK_SIM_ENET_ROOT		242
+#define IMX8MP_CLK_SIM_M_ROOT			243
+#define IMX8MP_CLK_SIM_MAIN_ROOT		244
+#define IMX8MP_CLK_SIM_S_ROOT			245
+#define IMX8MP_CLK_SIM_WAKEUP_ROOT		246
+#define IMX8MP_CLK_GPU2D_ROOT			247
+#define IMX8MP_CLK_GPU3D_ROOT			248
+#define IMX8MP_CLK_SNVS_ROOT			249
+#define IMX8MP_CLK_TRACE_ROOT			250
+#define IMX8MP_CLK_UART1_ROOT			251
+#define IMX8MP_CLK_UART2_ROOT			252
+#define IMX8MP_CLK_UART3_ROOT			253
+#define IMX8MP_CLK_UART4_ROOT			254
+#define IMX8MP_CLK_USB_ROOT			255
+#define IMX8MP_CLK_USB_PHY_ROOT			256
+#define IMX8MP_CLK_USDHC1_ROOT			257
+#define IMX8MP_CLK_USDHC2_ROOT			258
+#define IMX8MP_CLK_WDOG1_ROOT			259
+#define IMX8MP_CLK_WDOG2_ROOT			260
+#define IMX8MP_CLK_WDOG3_ROOT			261
+#define IMX8MP_CLK_VPU_G1_ROOT			262
+#define IMX8MP_CLK_GPU_ROOT			263
+#define IMX8MP_CLK_NOC_WRAPPER_ROOT		264
+#define IMX8MP_CLK_VPU_VC8KE_ROOT		265
+#define IMX8MP_CLK_VPU_G2_ROOT			266
+#define IMX8MP_CLK_NPU_ROOT			267
+#define IMX8MP_CLK_HSIO_ROOT			268
+#define IMX8MP_CLK_MEDIA_APB_ROOT		269
+#define IMX8MP_CLK_MEDIA_AXI_ROOT		270
+#define IMX8MP_CLK_MEDIA_CAM1_PIX_ROOT		271
+#define IMX8MP_CLK_MEDIA_CAM2_PIX_ROOT		272
+#define IMX8MP_CLK_MEDIA_DISP1_PIX_ROOT		273
+#define IMX8MP_CLK_MEDIA_DISP2_PIX_ROOT		274
+#define IMX8MP_CLK_MEDIA_MIPI_PHY1_REF_ROOT	275
+#define IMX8MP_CLK_MEDIA_ISP_ROOT		276
+#define IMX8MP_CLK_USDHC3_ROOT			277
+#define IMX8MP_CLK_HDMI_ROOT			278
+#define IMX8MP_CLK_XTAL_ROOT			279
+#define IMX8MP_CLK_PLL_ROOT			280
+#define IMX8MP_CLK_TSENSOR_ROOT			281
+#define IMX8MP_CLK_VPU_ROOT			282
+#define IMX8MP_CLK_MRPR_ROOT			283
+#define IMX8MP_CLK_AUDIO_ROOT			284
+#define IMX8MP_CLK_DRAM_ALT_ROOT		285
+#define IMX8MP_CLK_DRAM_CORE			286
+#define IMX8MP_CLK_ARM				287
+
+#define IMX8MP_CLK_END				288
+
+#endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
