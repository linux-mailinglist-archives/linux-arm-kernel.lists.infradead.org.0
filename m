Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E24BDD5C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 13:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yD7NxuULZlDiZb1A6f0AF9kedDSeYvk5OSBynQAnJvg=; b=iNzkWxvEjy5Qt/
	/+Dw6mZfd3cche2uJLx5PrGN0izz3zN5M9XnpaFIdREy7oSommz0Nk7YPm8bu8SvBpkXenaKS6kmz
	sIiqtzOpFMXiZiV1ySjdyjCXCbDyOj9QvDvzCEq0gb0YI5fiww4ax4YY0hjVnH2fR76HOkeAi3BK2
	06kiJzHlScf1zgWg8l5HSwTfSZT3hMPrfvKP++kjBxSUC2zzbef7WOTbrmXqHMgjFOhUuvRlmtSGg
	ac78tjvuWoQpgxINZ0wexP8SJCp/sRRTl4LzFg8s4gODKaKhkQaqOYRYBTUwdEf97XaBQnym5kWxN
	+TV6RmvZ/9IUaqC4X+zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD5jv-00010R-7f; Wed, 25 Sep 2019 11:45:47 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD5j9-0007up-AX; Wed, 25 Sep 2019 11:45:03 +0000
Received: from droid15-sz.amlogic.com (10.28.8.25) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Wed, 25 Sep 2019
 19:44:49 +0800
From: Jian Hu <jian.hu@amlogic.com>
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
Subject: [PATCH 1/2] dt-bindings: clock: meson: add A1 clock controller
 bindings
Date: Wed, 25 Sep 2019 19:44:47 +0800
Message-ID: <1569411888-98116-2-git-send-email-jian.hu@amlogic.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1569411888-98116-1-git-send-email-jian.hu@amlogic.com>
References: <1569411888-98116-1-git-send-email-jian.hu@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [10.28.8.25]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_044459_362469_B6AA5BDD 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Qiufang Dai <qiufang.dai@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the documentation to support Amlogic A1 clock driver,
and add A1 clock controller bindings.

Signed-off-by: Jian Hu <jian.hu@amlogic.com>
Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
---
 .../devicetree/bindings/clock/amlogic,a1-clkc.yaml |  65 +++++++++++++
 include/dt-bindings/clock/a1-clkc.h                | 102 +++++++++++++++++++++
 2 files changed, 167 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
 create mode 100644 include/dt-bindings/clock/a1-clkc.h

diff --git a/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
new file mode 100644
index 0000000..f012eb2
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
@@ -0,0 +1,65 @@
+/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
+/*
+ * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
+ */
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/clock/amlogic,a1-clkc.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Amlogic Meson A1 Clock Control Unit Device Tree Bindings
+
+maintainers:
+  - Neil Armstrong <narmstrong@baylibre.com>
+  - Jerome Brunet <jbrunet@baylibre.com>
+  - Jian Hu <jian.hu@jian.hu.com>
+
+properties:
+  compatible:
+    - enum:
+        - amlogic,a1-clkc
+
+  reg:
+    minItems: 1
+    maxItems: 3
+    items:
+      - description: peripheral registers
+      - description: cpu registers
+      - description: pll registers
+
+  reg-names:
+    items:
+      - const: peripheral
+      - const: pll
+      - const: cpu
+
+  clocks:
+    maxItems: 1
+    items:
+      - description: Input Oscillator (usually at 24MHz)
+
+  clock-names:
+    maxItems: 1
+    items:
+      - const: xtal
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - "#clock-cells"
+
+examples:
+  - |
+    clkc: clock-controller {
+        compatible = "amlogic,a1-clkc";
+        reg = <0x0 0xfe000800 0x0 0x100>,
+              <0x0 0xfe007c00 0x0 0x21c>,
+              <0x0 0xfd000080 0x0 0x20>;
+        reg-names = "peripheral", "pll", "cpu";
+        clocks = <&xtal;
+        clock-names = "xtal";
+        #clock-cells = <1>;
+    };
diff --git a/include/dt-bindings/clock/a1-clkc.h b/include/dt-bindings/clock/a1-clkc.h
new file mode 100644
index 0000000..69fbf37
--- /dev/null
+++ b/include/dt-bindings/clock/a1-clkc.h
@@ -0,0 +1,102 @@
+/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
+/*
+ * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
+ */
+
+#ifndef __A1_CLKC_H
+#define __A1_CLKC_H
+
+#define CLKID_FIXED_PLL				1
+#define CLKID_FCLK_DIV2				2
+#define CLKID_FCLK_DIV3				3
+#define CLKID_FCLK_DIV5				4
+#define CLKID_FCLK_DIV7				5
+#define CLKID_FCLK_DIV2_DIV			6
+#define CLKID_FCLK_DIV3_DIV			7
+#define CLKID_FCLK_DIV5_DIV			8
+#define CLKID_FCLK_DIV7_DIV			9
+#define CLKID_SYS_CLK				16
+#define CLKID_HIFI_PLL				17
+#define CLKID_CLKTREE				25
+#define CLKID_RESET_CTRL			26
+#define CLKID_ANALOG_CTRL			27
+#define CLKID_PWR_CTRL				28
+#define CLKID_PAD_CTRL				29
+#define CLKID_SYS_CTRL				30
+#define CLKID_TEMP_SENSOR			31
+#define CLKID_AM2AXI_DIV			32
+#define CLKID_SPICC_B				33
+#define CLKID_SPICC_A				34
+#define CLKID_CLK_MSR				35
+#define CLKID_AUDIO				36
+#define CLKID_JTAG_CTRL				37
+#define CLKID_SARADC				38
+#define CLKID_PWM_EF				39
+#define CLKID_PWM_CD				40
+#define CLKID_PWM_AB				41
+#define CLKID_CEC				42
+#define CLKID_I2C_S				43
+#define CLKID_IR_CTRL				44
+#define CLKID_I2C_M_D				45
+#define CLKID_I2C_M_C				46
+#define CLKID_I2C_M_B				47
+#define CLKID_I2C_M_A				48
+#define CLKID_ACODEC				49
+#define CLKID_OTP				50
+#define CLKID_SD_EMMC_A				51
+#define CLKID_USB_PHY				52
+#define CLKID_USB_CTRL				53
+#define CLKID_SYS_DSPB				54
+#define CLKID_SYS_DSPA				55
+#define CLKID_DMA				56
+#define CLKID_IRQ_CTRL				57
+#define CLKID_NIC				58
+#define CLKID_GIC				59
+#define CLKID_UART_C				60
+#define CLKID_UART_B				61
+#define CLKID_UART_A				62
+#define CLKID_SYS_PSRAM				63
+#define CLKID_RSA				64
+#define CLKID_CORESIGHT				65
+#define CLKID_AM2AXI_VAD			66
+#define CLKID_AUDIO_VAD				67
+#define CLKID_AXI_DMC				68
+#define CLKID_AXI_PSRAM				69
+#define CLKID_RAMB				70
+#define CLKID_RAMA				71
+#define CLKID_AXI_SPIFC				72
+#define CLKID_AXI_NIC				73
+#define CLKID_AXI_DMA				74
+#define CLKID_CPU_CTRL				75
+#define CLKID_ROM				76
+#define CLKID_PROC_I2C				77
+#define CLKID_DSPA_SEL				84
+#define CLKID_DSPB_SEL				91
+#define CLKID_DSPA_EN_DSPA			92
+#define CLKID_DSPA_EN_NIC			93
+#define CLKID_DSPB_EN_DSPB			94
+#define CLKID_DSPB_EN_NIC			95
+#define CLKID_RTC_CLK				100
+#define CLKID_CECA_32K				105
+#define CLKID_CECB_32K				110
+#define CLKID_24M				111
+#define CLKID_12M				112
+#define CLKID_FCLK_DIV2_DIVN			114
+#define CLKID_GEN				118
+#define CLKID_SARADC_SEL			119
+#define CLKID_SARADC_CLK			121
+#define CLKID_PWM_A				124
+#define CLKID_PWM_B				127
+#define CLKID_PWM_C				130
+#define CLKID_PWM_D				133
+#define CLKID_PWM_E				136
+#define CLKID_PWM_F				139
+#define CLKID_SPICC				143
+#define CLKID_TS				145
+#define CLKID_SPIFC				149
+#define CLKID_USB_BUS				152
+#define CLKID_SD_EMMC				156
+#define CLKID_PSRAM				160
+#define CLKID_DMC				164
+
+#endif /* __A1_CLKC_H */
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
