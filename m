Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D20EF6C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 09:00:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WlxrlMuLc52nuEfIQrZPN+8CuJ8suNZR2Hg+Jr89Arg=; b=Dog03isVJZPdG9
	GcUvibMcvfQOjMaXH745PDe03hKw9oUtojXT816BrGDyRFLDLPMn0fd4WXkl6SMJvmYQtIY+Nnu3F
	yDp0HxyGNl1gOm1mIba71nd8eMj9e7ia9mugb3ihP3+bLHLTomak0GybLvXd5AkZ6+AP99zbfMHE6
	QUJQQcttQtzTgGzUZaQ1q46qfwH9Zu/ymhQOUXzCEjeQ/XlC1uPqc5ouBHuYklINyz6FOT4oNENbg
	DqrIbTG2Qv5A9nwWceSPAsaWXG8KXa02ywwn0UFpQWw7Q7a6MR8eKfcIA1cF9aom29fBZY5v9ZwPd
	enjdI6gQ0FgGtEaP4q0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRtlc-00038W-Ig; Tue, 05 Nov 2019 08:00:44 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iRtlU-00037k-Mx; Tue, 05 Nov 2019 08:00:38 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xA580QQg008052,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xA580QQg008052
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 5 Nov 2019 16:00:26 +0800
Received: from RTITMBSVM04.realtek.com.tw ([fe80::e404:880:2ef1:1aa1]) by
 RTITCASV01.realtek.com.tw ([::1]) with mapi id 14.03.0468.000; Tue, 5 Nov
 2019 16:00:25 +0800
From: James Tai <james.tai@realtek.com>
To: "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>
Subject: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
Thread-Topic: [PATCH] arm64: dts: realtek: Add Realtek rtd1619 and mjolnir
Thread-Index: AdWTrwRiu8TDC5guRneVMItRk6mPLw==
Date: Tue, 5 Nov 2019 08:00:25 +0000
Message-ID: <43B123F21A8CFE44A9641C099E4196FFCF91BEFA@RTITMBSVM04.realtek.com.tw>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_000037_009949_53ABD9E8 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 "'linux-kernel@vger.kernel.org'" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 =?iso-8859-1?Q?Andreas_F=E4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds a generic devicetree board file and a dtsi for
Realtek rtd1619 SoC.

Signed-off-by: james tai <james.tai@realtek.com>
---
 arch/arm64/boot/dts/realtek/Makefile          |  3 +
 .../boot/dts/realtek/rtd1619-mjolnir.dts      | 31 +++++++
 arch/arm64/boot/dts/realtek/rtd1619.dtsi      | 91 +++++++++++++++++++
 arch/arm64/boot/dts/realtek/rtd16xx.dtsi      | 66 ++++++++++++++
 4 files changed, 191 insertions(+)
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1619-mjolnir.dts
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1619.dtsi
 create mode 100644 arch/arm64/boot/dts/realtek/rtd16xx.dtsi

diff --git a/arch/arm64/boot/dts/realtek/Makefile b/arch/arm64/boot/dts/realtek/Makefile
index 555638ada721..a58353a1d99a 100644
--- a/arch/arm64/boot/dts/realtek/Makefile
+++ b/arch/arm64/boot/dts/realtek/Makefile
@@ -7,3 +7,6 @@ dtb-$(CONFIG_ARCH_REALTEK) += rtd1295-probox2-ava.dtb
 dtb-$(CONFIG_ARCH_REALTEK) += rtd1295-zidoo-x9s.dtb
 
 dtb-$(CONFIG_ARCH_REALTEK) += rtd1296-ds418.dtb
+
+dtb-$(CONFIG_ARCH_REALTEK) += rtd1619-mjolnir.dtb
+
diff --git a/arch/arm64/boot/dts/realtek/rtd1619-mjolnir.dts b/arch/arm64/boot/dts/realtek/rtd1619-mjolnir.dts
new file mode 100644
index 000000000000..def5964c7715
--- /dev/null
+++ b/arch/arm64/boot/dts/realtek/rtd1619-mjolnir.dts
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
+/*
+ * Copyright (c) 2019 Realtek Semiconductor Corp.
+ */
+
+/dts-v1/;
+
+#include "rtd1619.dtsi"
+
+/ {
+	compatible = "realtek,rtd1619";
+	model= "Realtek Mjolnir EVB";
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x0 0x0 0x0 0x80000000>;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+
+	aliases {
+		serial0 = &uart0;
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
+
diff --git a/arch/arm64/boot/dts/realtek/rtd1619.dtsi b/arch/arm64/boot/dts/realtek/rtd1619.dtsi
new file mode 100644
index 000000000000..ac5c737b04db
--- /dev/null
+++ b/arch/arm64/boot/dts/realtek/rtd1619.dtsi
@@ -0,0 +1,91 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
+/*
+ * Realtek RTD1619 SoC
+ *
+ * Copyright (c) 2019 Realtek Semiconductor Corp.
+ */
+
+#include "rtd16xx.dtsi"
+
+/ {
+	compatible = "realtek,rtd1619";
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x000>;
+			next-level-cache = <&l2>;
+		};
+
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x100>;
+			enable-method = "psci";
+			next-level-cache = <&l3>;
+		};
+
+		cpu2: cpu@2 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x200>;
+			enable-method = "psci";
+			next-level-cache = <&l3>;
+		};
+
+		cpu3: cpu@3 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x300>;
+			enable-method = "psci";
+			next-level-cache = <&l3>;
+		};
+
+		cpu4: cpu@4 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x400>;
+			enable-method = "psci";
+			next-level-cache = <&l3>;
+		};
+
+		cpu5: cpu@5 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x500>;
+			enable-method = "psci";
+			next-level-cache = <&l3>;
+		};
+
+		l2: l2-cache {
+			compatible = "cache";
+			next-level-cache = <&l3>;
+
+		};
+
+		l3: l3-cache {
+			compatible = "cache";
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13
+			(GIC_CPU_MASK_RAW(0xf) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 14
+			(GIC_CPU_MASK_RAW(0xf) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 11
+			(GIC_CPU_MASK_RAW(0xf) | IRQ_TYPE_LEVEL_LOW)>,
+			     <GIC_PPI 10
+			(GIC_CPU_MASK_RAW(0xf) | IRQ_TYPE_LEVEL_LOW)>;
+	};
+};
+
+&arm_pmu {
+	interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>,
+		<&cpu3>, <&cpu4>, <&cpu5>;
+};
diff --git a/arch/arm64/boot/dts/realtek/rtd16xx.dtsi b/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
new file mode 100644
index 000000000000..ef56c6ed6663
--- /dev/null
+++ b/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
@@ -0,0 +1,66 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
+/*
+ * Realtek RTD1619 SoC
+ *
+ * Copyright (c) 2019 Realtek Semiconductor Corp.
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+/{
+	compatible = "realtek,rtd1619";
+	interrupt-parent = <&gic>;
+	#address-cells = <0x2>;
+	#size-cells = <0x2>;
+
+	arm_pmu: pmu {
+		compatible = "arm,armv8-pmuv3";
+		interrupts = <GIC_PPI 7
+			(GIC_CPU_MASK_SIMPLE(4) | IRQ_TYPE_LEVEL_LOW)>;
+	};
+
+	osc27M: osc {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <27000000>;
+		clock-output-names = "osc27M";
+	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+	};
+
+	soc {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		uart0: serial0@98007800 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x0 0x98007800 0x0 0x400>,
+				<0x0 0x98007000 0x0 0x100>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			interrupts = <0 68 4>;
+			clock-frequency = <27000000>;
+			status = "disabled";
+		};
+
+		gic: interrupt-controller@ff100000 {
+			compatible = "arm,gic-v3";
+			#interrupt-cells = <3>;
+			#address-cells = <2>;
+			#size-cells = <2>;
+			ranges;
+			interrupt-controller;
+			redistributor-stride = <0x0 0x20000>;
+			#redistributor-regions = <1>;
+			reg = <0x0 0xff100000 0x0 0x10000>,
+				<0x0 0xff140000 0x0 0x200000>;
+			interrupts = <GIC_PPI 9 4>;
+		};
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
