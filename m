Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD4E151CA0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 15:53:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MNIZ6hJyuhxiEe3NRovo0k8d9WIBMCBq/56xnDWl9NY=; b=dLrjOz0gTefqMG
	yRqEvyjBCS/sVtpuhYJoucINyDmnwTjUDcN1ZsW6Mnk1xXlcu8jG/WLnmn4P9/+oT8IDEpkrc9HK9
	wHgm8p6SkXYsoYniUJEnYo24OgeRHpmW1/zDeqkQGvzjgGQ3yhHpCi3cVZrIE+l82s+icqyMfaKoa
	WeZoFqQktGwRr7kHCLVUyG2UV00+VfHMXjmEZcKSkAfe/UrPfnbx3Sp5uuAosrYYFoPPINeLjzaOs
	g0fUPr5Y5bZX9g49pYoNbqolnzFPyfOeFcSOpG0JbLjiudPIJ5Zw0Tv1BrJhJNDzisSJQCyjx8Jdy
	XtLJClojK0XaHBM9G1qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyzZZ-0007tt-1F; Tue, 04 Feb 2020 14:53:05 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iyzYw-0007Qj-Ce; Tue, 04 Feb 2020 14:52:30 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID 014EqDGC008037,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTEXMB06.realtek.com.tw[172.21.6.99])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id 014EqDGC008037
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 4 Feb 2020 22:52:13 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXMB06.realtek.com.tw (172.21.6.99) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 4 Feb 2020 22:52:13 +0800
Received: from RTEXMB05.realtek.com.tw (172.21.6.98) by
 RTEXMB03.realtek.com.tw (172.21.6.96) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Tue, 4 Feb 2020 22:52:12 +0800
Received: from james-BS01.localdomain (172.21.190.33) by
 RTEXMB01.realtek.com.tw (172.21.6.98) with Microsoft SMTP Server id
 15.1.1779.2 via Frontend Transport; Tue, 4 Feb 2020 22:52:12 +0800
From: James Tai <james.tai@realtek.com>
To: <linux-realtek-soc@lists.infradead.org>
Subject: [PATCH v3 2/2] arm64: dts: realtek: Add RTD1319 SoC and Realtek
 PymParticle EVB
Date: Tue, 4 Feb 2020 22:52:07 +0800
Message-ID: <20200204145207.28622-3-james.tai@realtek.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200204145207.28622-1-james.tai@realtek.com>
References: <20200204145207.28622-1-james.tai@realtek.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_065226_684890_4869F673 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add Device Trees for Realtek RTD1319 SoC family, RTD1319 SoC and
Realtek PymParticle EVB.

Signed-off-by: James Tai <james.tai@realtek.com>
---
 v2 -> v3:
 * Add virtual maintenance interrupt for architecture timer
 * Correct the GIC redistributor address range

 v1 -> v2:
 * Reserve the boot ROM address
 * Reserve boot loader address
 * Reserve audio/video FW address
 * Reserve RPC and ring buffer address
 * Reserve TEE address
 * Support 1 GiB RAM by default
 * Reduce rbus range to 2 MiB
 * Apply the syscon for ISO,MISC,CRT,SB2,SCPU_WRAPPER
 * Adjust compatible strings order in document

 arch/arm64/boot/dts/realtek/Makefile          |   2 +
 .../boot/dts/realtek/rtd1319-pymparticle.dts  |  43 ++++
 arch/arm64/boot/dts/realtek/rtd1319.dtsi      |  12 +
 arch/arm64/boot/dts/realtek/rtd13xx.dtsi      | 213 ++++++++++++++++++
 4 files changed, 270 insertions(+)
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1319-pymparticle.dts
 create mode 100644 arch/arm64/boot/dts/realtek/rtd1319.dtsi
 create mode 100644 arch/arm64/boot/dts/realtek/rtd13xx.dtsi

diff --git a/arch/arm64/boot/dts/realtek/Makefile b/arch/arm64/boot/dts/realtek/Makefile
index ef8d8fcbaa05..c0ae96f324eb 100644
--- a/arch/arm64/boot/dts/realtek/Makefile
+++ b/arch/arm64/boot/dts/realtek/Makefile
@@ -9,6 +9,8 @@ dtb-$(CONFIG_ARCH_REALTEK) += rtd1295-zidoo-x9s.dtb
 
 dtb-$(CONFIG_ARCH_REALTEK) += rtd1296-ds418.dtb
 
+dtb-$(CONFIG_ARCH_REALTEK) += rtd1319-pymparticle.dtb
+
 dtb-$(CONFIG_ARCH_REALTEK) += rtd1395-bpi-m4.dtb
 dtb-$(CONFIG_ARCH_REALTEK) += rtd1395-lionskin.dtb
 
diff --git a/arch/arm64/boot/dts/realtek/rtd1319-pymparticle.dts b/arch/arm64/boot/dts/realtek/rtd1319-pymparticle.dts
new file mode 100644
index 000000000000..2a36d220fef6
--- /dev/null
+++ b/arch/arm64/boot/dts/realtek/rtd1319-pymparticle.dts
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
+/*
+ * Copyright (c) 2019 Realtek Semiconductor Corp.
+ */
+
+/dts-v1/;
+
+#include "rtd1319.dtsi"
+
+/ {
+	compatible = "realtek,pymparticle", "realtek,rtd1319";
+	model = "Realtek PymParticle EVB";
+
+	memory@2e000 {
+		device_type = "memory";
+		reg = <0x2e000 0x3ffd2000>; /* boot ROM to 1 GiB or 2 GiB */
+	};
+
+	chosen {
+		stdout-path = "serial0:460800n8";
+	};
+
+	aliases {
+		serial0 = &uart0;
+		serial1 = &uart1;
+		serial2 = &uart2;
+	};
+};
+
+/* debug console (J1) */
+&uart0 {
+	status = "okay";
+};
+
+/* M.2 slot (CON8) */
+&uart1 {
+	status = "disabled";
+};
+
+/* GPIO connector (T1) */
+&uart2 {
+	status = "disabled";
+};
diff --git a/arch/arm64/boot/dts/realtek/rtd1319.dtsi b/arch/arm64/boot/dts/realtek/rtd1319.dtsi
new file mode 100644
index 000000000000..1dcee00009cd
--- /dev/null
+++ b/arch/arm64/boot/dts/realtek/rtd1319.dtsi
@@ -0,0 +1,12 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
+/*
+ * Realtek RTD1319 SoC
+ *
+ * Copyright (c) 2019 Realtek Semiconductor Corp.
+ */
+
+#include "rtd13xx.dtsi"
+
+/ {
+	compatible = "realtek,rtd1319";
+};
diff --git a/arch/arm64/boot/dts/realtek/rtd13xx.dtsi b/arch/arm64/boot/dts/realtek/rtd13xx.dtsi
new file mode 100644
index 000000000000..f6d73f18345d
--- /dev/null
+++ b/arch/arm64/boot/dts/realtek/rtd13xx.dtsi
@@ -0,0 +1,213 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
+/*
+ * Realtek RTD13xx SoC family
+ *
+ * Copyright (c) 2019 Realtek Semiconductor Corp.
+ */
+
+/memreserve/	0x0000000000000000 0x000000000002e000; /* Boot ROM */
+/memreserve/	0x000000000002e000 0x0000000000100000; /* Boot loader */
+/memreserve/	0x000000000f400000 0x0000000000500000; /* Video FW */
+/memreserve/	0x000000000f900000 0x0000000000500000; /* Audio FW */
+/memreserve/	0x0000000010000000 0x0000000000014000; /* Audio FW RAM */
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+
+/ {
+	interrupt-parent = <&gic>;
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		rpc_comm: rpc@3f000 {
+			reg = <0x3f000 0x1000>;
+		};
+
+		rpc_ringbuf: rpc@1ffe000 {
+			reg = <0x1ffe000 0x4000>;
+		};
+
+		tee: tee@10100000 {
+			reg = <0x10100000 0xf00000>;
+			no-map;
+		};
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x0>;
+			enable-method = "psci";
+			next-level-cache = <&l2>;
+		};
+
+		cpu1: cpu@100 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x100>;
+			enable-method = "psci";
+			next-level-cache = <&l2>;
+		};
+
+		cpu2: cpu@200 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x200>;
+			enable-method = "psci";
+			next-level-cache = <&l2>;
+		};
+
+		cpu3: cpu@300 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a55";
+			reg = <0x300>;
+			enable-method = "psci";
+			next-level-cache = <&l2>;
+		};
+
+		l2: l2-cache {
+			compatible = "cache";
+		};
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 9 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	arm_pmu: pmu {
+		compatible = "arm,armv8-pmuv3";
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-affinity = <&cpu0>, <&cpu1>, <&cpu2>, <&cpu3>;
+	};
+
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+	};
+
+	osc27M: osc {
+		compatible = "fixed-clock";
+		clock-frequency = <27000000>;
+		clock-output-names = "osc27M";
+		#clock-cells = <0>;
+	};
+
+	soc {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges = <0x00000000 0x00000000 0x0002e000>, /* boot ROM */
+			 <0xff100000 0xff100000 0x00200000>, /* GIC */
+			 <0x98000000 0x98000000 0x00200000>; /* rbus */
+
+		rbus: bus@98000000 {
+			compatible = "simple-bus";
+			reg = <0x98000000 0x200000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x98000000 0x200000>;
+
+			crt: syscon@0 {
+				compatible = "syscon", "simple-mfd";
+				reg = <0x0 0x1000>;
+				reg-io-width = <4>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0x0 0x0 0x1000>;
+			};
+
+			iso: syscon@7000 {
+				compatible = "syscon", "simple-mfd";
+				reg = <0x7000 0x1000>;
+				reg-io-width = <4>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0x0 0x7000 0x1000>;
+			};
+
+			sb2: syscon@1a000 {
+				compatible = "syscon", "simple-mfd";
+				reg = <0x1a000 0x1000>;
+				reg-io-width = <4>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0x0 0x1a000 0x1000>;
+			};
+
+			misc: syscon@1b000 {
+				compatible = "syscon", "simple-mfd";
+				reg = <0x1b000 0x1000>;
+				reg-io-width = <4>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0x0 0x1b000 0x1000>;
+			};
+
+			scpu_wrapper: syscon@1d000 {
+				compatible = "syscon", "simple-mfd";
+				reg = <0x1d000 0x1000>;
+				reg-io-width = <4>;
+				#address-cells = <1>;
+				#size-cells = <1>;
+				ranges = <0x0 0x1d000 0x1000>;
+			};
+		};
+
+		gic: interrupt-controller@ff100000 {
+			compatible = "arm,gic-v3";
+			reg = <0xff100000 0x10000>,
+			      <0xff140000 0x80000>;
+			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+		};
+	};
+};
+
+&iso {
+	uart0: serial0@800 {
+		compatible = "snps,dw-apb-uart";
+		reg = <0x800 0x400>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <432000000>;
+		status = "disabled";
+	};
+};
+
+&misc {
+	uart1: serial1@200 {
+		compatible = "snps,dw-apb-uart";
+		reg = <0x200 0x400>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <432000000>;
+		status = "disabled";
+	};
+
+	uart2: serial2@400 {
+		compatible = "snps,dw-apb-uart";
+		reg = <0x400 0x400>;
+		reg-shift = <2>;
+		reg-io-width = <4>;
+		interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
+		clock-frequency = <432000000>;
+		status = "disabled";
+	};
+};
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
