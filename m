Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4834214223B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 04:51:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qegyHbpk/XcQmanCq5DN3Krfj5yQ3Wiq/DiVLVSKtc4=; b=S66NZuBk66fvlr
	Z2l/uhDSeo9rfmqXjvoVWbFTSLua+vLNYkOv3TDuW3kRlIRQgPV8J6Zo4iTrSz2oInyfFncWlshOm
	i7D0319InkJ9Ijzvsd8BFuLIbEiQ8Zn6PQg1QOyiara0Red9HoeZEyOtJhVJKKbIBK+o2kgpiThGY
	nCwHc3PBQU7N/WCL+EZvtw16T2Z5nGEHnTXSpMxMESMhJD20sOH5mN1aSLCSQZWM50/544r25dJxn
	uktqXR7Ckrk1/OEnvdodJ+RQTXxx3lxYBXJ/Z7BLLUI/5V7m8enw20hFTS+LVgVtTcYq7gafsaDiP
	95BjOqHmjarO/lkf2k/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itO5x-0007dI-A7; Mon, 20 Jan 2020 03:51:21 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itO4Z-0005Cd-TG; Mon, 20 Jan 2020 03:49:57 +0000
Received: from droid15-sz.amlogic.com (10.28.8.25) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Mon, 20 Jan 2020
 11:50:12 +0800
From: Jian Hu <jian.hu@amlogic.com>
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
Subject: [PATCH v7 4/5] dt-bindings: clock: meson: add A1 peripheral clock
 controller bindings
Date: Mon, 20 Jan 2020 11:49:36 +0800
Message-ID: <20200120034937.128600-5-jian.hu@amlogic.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200120034937.128600-1-jian.hu@amlogic.com>
References: <20200120034937.128600-1-jian.hu@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [10.28.8.25]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_194956_159330_695132B1 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 linux-arm-kernel@lists.infradead.org, Qiufang Dai <qiufang.dai@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 Chandle Zou <chandle.zou@amlogic.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the documentation to support Amlogic A1 peripheral clock driver,
and add A1 peripheral clock controller bindings.

Signed-off-by: Jian Hu <jian.hu@amlogic.com>
---
 .../bindings/clock/amlogic,a1-clkc.yaml       | 65 ++++++++++++
 include/dt-bindings/clock/a1-clkc.h           | 98 +++++++++++++++++++
 2 files changed, 163 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
 create mode 100644 include/dt-bindings/clock/a1-clkc.h

diff --git a/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
new file mode 100644
index 000000000000..7729850046cf
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
@@ -0,0 +1,65 @@
+#SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/amlogic,a1-clkc.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson A/C serials Peripheral Clock Control Unit Device Tree Bindings
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+  - Jerome Brunet <jbrunet@baylibre.com>
+  - Jian Hu <jian.hu@jian.hu.com>
+
+properties:
+  compatible:
+    const: amlogic,a1-periphs-clkc
+
+  "#clock-cells":
+    const: 1
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: input fixed pll div2
+      - description: input fixed pll div3
+      - description: input fixed pll div5
+      - description: input fixed pll div7
+      - description: input hifi pll
+      - description: input oscillator (usually at 24MHz)
+
+  clock-names:
+    items:
+      - const: fclk_div2
+      - const: fclk_div3
+      - const: fclk_div5
+      - const: fclk_div7
+      - const: hifi_pll
+      - const: xtal
+
+required:
+  - compatible
+  - "#clock-cells"
+  - reg
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    clkc_periphs: periphs-clock-controller {
+        compatible = "amlogic,a1-periphs-clkc";
+        reg = <0 0x800 0 0x104>;
+        #clock-cells = <1>;
+        clocks = <&clkc_pll 6>,
+                <&clkc_pll 7>,
+                <&clkc_pll 8>,
+                <&clkc_pll 9>,
+                <&clkc_pll 10>,
+                <&xtal>;
+        clock-names = "fclk_div2", "fclk_div3", "fclk_div5",
+                      "fclk_div7", "hifi_pll", "xtal";
+    };
diff --git a/include/dt-bindings/clock/a1-clkc.h b/include/dt-bindings/clock/a1-clkc.h
new file mode 100644
index 000000000000..9bb36fca86dd
--- /dev/null
+++ b/include/dt-bindings/clock/a1-clkc.h
@@ -0,0 +1,98 @@
+/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
+/*
+ * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
+ */
+
+#ifndef __A1_CLKC_H
+#define __A1_CLKC_H
+
+#define CLKID_XTAL_FIXPLL			1
+#define CLKID_XTAL_USB_PHY			2
+#define CLKID_XTAL_USB_CTRL			3
+#define CLKID_XTAL_HIFIPLL			4
+#define CLKID_XTAL_SYSPLL			5
+#define CLKID_XTAL_DDS				6
+#define CLKID_SYS_CLK				7
+#define CLKID_CLKTREE				8
+#define CLKID_RESET_CTRL			9
+#define CLKID_ANALOG_CTRL			10
+#define CLKID_PWR_CTRL				11
+#define CLKID_PAD_CTRL				12
+#define CLKID_SYS_CTRL				13
+#define CLKID_TEMP_SENSOR			14
+#define CLKID_AM2AXI_DIV			15
+#define CLKID_SPICC_B				16
+#define CLKID_SPICC_A				17
+#define CLKID_CLK_MSR				18
+#define CLKID_AUDIO				19
+#define CLKID_JTAG_CTRL				20
+#define CLKID_SARADC				21
+#define CLKID_PWM_EF				22
+#define CLKID_PWM_CD				23
+#define CLKID_PWM_AB				24
+#define CLKID_CEC				25
+#define CLKID_I2C_S				26
+#define CLKID_IR_CTRL				27
+#define CLKID_I2C_M_D				28
+#define CLKID_I2C_M_C				29
+#define CLKID_I2C_M_B				30
+#define CLKID_I2C_M_A				31
+#define CLKID_ACODEC				32
+#define CLKID_OTP				33
+#define CLKID_SD_EMMC_A				34
+#define CLKID_USB_PHY				35
+#define CLKID_USB_CTRL				36
+#define CLKID_SYS_DSPB				37
+#define CLKID_SYS_DSPA				38
+#define CLKID_DMA				39
+#define CLKID_IRQ_CTRL				40
+#define CLKID_NIC				41
+#define CLKID_GIC				42
+#define CLKID_UART_C				43
+#define CLKID_UART_B				44
+#define CLKID_UART_A				45
+#define CLKID_SYS_PSRAM				46
+#define CLKID_RSA				47
+#define CLKID_CORESIGHT				48
+#define CLKID_AM2AXI_VAD			49
+#define CLKID_AUDIO_VAD				50
+#define CLKID_AXI_DMC				51
+#define CLKID_AXI_PSRAM				52
+#define CLKID_RAMB				53
+#define CLKID_RAMA				54
+#define CLKID_AXI_SPIFC				55
+#define CLKID_AXI_NIC				56
+#define CLKID_AXI_DMA				57
+#define CLKID_CPU_CTRL				58
+#define CLKID_ROM				59
+#define CLKID_PROC_I2C				60
+#define CLKID_DSPA_SEL				61
+#define CLKID_DSPB_SEL				62
+#define CLKID_DSPA_EN				63
+#define CLKID_DSPA_EN_NIC			64
+#define CLKID_DSPB_EN				65
+#define CLKID_DSPB_EN_NIC			66
+#define CLKID_RTC_CLK				67
+#define CLKID_CECA_32K				68
+#define CLKID_CECB_32K				69
+#define CLKID_24M				70
+#define CLKID_12M				71
+#define CLKID_FCLK_DIV2_DIVN			72
+#define CLKID_GEN				73
+#define CLKID_SARADC_SEL			74
+#define CLKID_SARADC_CLK			75
+#define CLKID_PWM_A				76
+#define CLKID_PWM_B				77
+#define CLKID_PWM_C				78
+#define CLKID_PWM_D				79
+#define CLKID_PWM_E				80
+#define CLKID_PWM_F				81
+#define CLKID_SPICC				82
+#define CLKID_TS				83
+#define CLKID_SPIFC				84
+#define CLKID_USB_BUS				85
+#define CLKID_SD_EMMC				86
+#define CLKID_PSRAM				87
+#define CLKID_DMC				88
+
+#endif /* __A1_CLKC_H */
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
