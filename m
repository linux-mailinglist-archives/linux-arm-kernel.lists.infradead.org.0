Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD931FB898
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 17:58:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pcRFr5Hqe70l0wFg2HW7K003WgTviQixDuu3t/xw0qc=; b=kH4QP3vInLMvS5
	WhNt3IR4qVVz95lFgwWeDjAEgSCxEwaWijh/4RhgizV8VeUQ56IC3rx4cyjXcvrYijtv/SAMa5yJ9
	ouasprzllD6Qll2FnwAHkC6q8cmc50Xv0jE5N7+p8TxH2+Y08SVDzfwz3A9dwlvo9S2rtubaKKxJ3
	KGHPSglIONMpjmhdKQlud2LciiwhPxkcNm591iaOyCS3Kv06IfFL0GyEKTnHLtFM1a4NCdeBEPz/d
	wnfCCoV/jd4HRly++oMnkH/rZdpAEs0b+uN2b2Q7aNC4aIoSnlBWR8Ne7mh+Eln3WAMMoADzjCAth
	KBOPb7Ed6BAjV9yK1Y6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlDyT-0002sU-Gs; Tue, 16 Jun 2020 15:58:09 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlDx8-0001ZP-Mr
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 15:56:48 +0000
IronPort-SDR: 4fGk18f80ZKUOw0Ubac2SoKM5ROZpAdxFYtFhWKS3mpchTRtMLrdVkCvBaTzmObqR/nngIjtQP
 axqHF704xYxQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:56:46 -0700
IronPort-SDR: nzPcmt43wjvPio6T3fVA1CS4W5AduSmcR5lBh7PmeQXkiyKG7J8gtIFQ3pOL02RCHDOtKcS+Pp
 GNfpqOq8PrrA==
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="449888148"
Received: from pperycz-mobl.ger.corp.intel.com (HELO
 dalessan-mobl1.ir.intel.com) ([10.213.235.69])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 08:56:43 -0700
From: Daniele Alessandrelli <daniele.alessandrelli@linux.intel.com>
To: linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Jassi Brar <jassisinghbrar@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>
Subject: [PATCH 6/7] arm64: dts: keembay: Add device tree for Keem Bay SoC
Date: Tue, 16 Jun 2020 16:56:12 +0100
Message-Id: <20200616155613.121242-7-daniele.alessandrelli@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200616155613.121242-1-daniele.alessandrelli@linux.intel.com>
References: <20200616155613.121242-1-daniele.alessandrelli@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_085646_832911_15D0CAA7 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Dinh Nguyen <dinguyen@kernel.org>,
 Paul Murphy <paul.j.murphy@intel.com>, Will Deacon <will@kernel.org>,
 Daniele Alessandrelli <daniele.alessandrelli@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniele Alessandrelli <daniele.alessandrelli@intel.com>

Add initial device tree for Intel Movidius SoC code-named Keem Bay.

This initial DT includes nodes for Cortex-A53 cores, UARTs, timers, GIC,
PSCI, PMU, and Keem Bay SCMI mailbox.

Reviewed-by: Dinh Nguyen <dinguyen@kernel.org>
Signed-off-by: Daniele Alessandrelli <daniele.alessandrelli@intel.com>
---
 MAINTAINERS                                |   1 +
 arch/arm64/boot/dts/intel/keembay-soc.dtsi | 172 +++++++++++++++++++++
 2 files changed, 173 insertions(+)
 create mode 100644 arch/arm64/boot/dts/intel/keembay-soc.dtsi

diff --git a/MAINTAINERS b/MAINTAINERS
index 3b919aa8b1bd..610907bf391b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1959,6 +1959,7 @@ M:	Paul J. Murphy <paul.j.murphy@intel.com>
 M:	Daniele Alessandrelli <daniele.alessandrelli@intel.com>
 S:	Maintained
 F:	Documentation/devicetree/bindings/arm/keembay.yaml
+F:	arch/arm64/boot/dts/intel/keembay-soc.dtsi
 F:	include/dt-bindings/clock/keembay-clocks.h
 F:	include/dt-bindings/power/keembay-power.h
 
diff --git a/arch/arm64/boot/dts/intel/keembay-soc.dtsi b/arch/arm64/boot/dts/intel/keembay-soc.dtsi
new file mode 100644
index 000000000000..bd0a48f24e09
--- /dev/null
+++ b/arch/arm64/boot/dts/intel/keembay-soc.dtsi
@@ -0,0 +1,172 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2020, Intel Corporation.
+ *
+ * Device tree describing Keem Bay SoC.
+ */
+
+#include <dt-bindings/clock/keembay-clocks.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/power/keembay-power.h>
+
+/ {
+	compatible = "intel,keembay";
+	interrupt-parent = <&gic>;
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			compatible = "arm,cortex-a53";
+			device_type = "cpu";
+			reg = <0x0>;
+			enable-method = "psci";
+			clocks = <&scmi_dvfs 0>;
+		};
+
+		cpu@1 {
+			compatible = "arm,cortex-a53";
+			device_type = "cpu";
+			reg = <0x1>;
+			enable-method = "psci";
+			clocks = <&scmi_dvfs 0>;
+		};
+
+		cpu@2 {
+			compatible = "arm,cortex-a53";
+			device_type = "cpu";
+			reg = <0x2>;
+			enable-method = "psci";
+			clocks = <&scmi_dvfs 0>;
+		};
+
+		cpu@3 {
+			compatible = "arm,cortex-a53";
+			device_type = "cpu";
+			reg = <0x3>;
+			enable-method = "psci";
+			clocks = <&scmi_dvfs 0>;
+		};
+	};
+
+	psci {
+		compatible = "arm,psci-0.2";
+		method = "smc";
+	};
+
+	firmware: firmware {
+
+		scmi: scmi {
+			compatible = "arm,scmi";
+			mboxes = <&scmi_mailbox 0>;
+			shmem = <&scmi_sec_shmem>;
+			mbox-names = "tx";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			scmi_devpd: protocol@11 {
+				reg = <0x11>;
+				#power-domain-cells = <1>;
+			};
+
+			scmi_dvfs: protocol@13 {
+				reg = <0x13>;
+				#clock-cells = <1>;
+			};
+
+			scmi_clk: protocol@14 {
+				reg = <0x14>;
+				#clock-cells = <1>;
+			};
+		};
+	};
+
+	scmi_mailbox: scmi_mailbox {
+		compatible = "intel,keembay-scmi-mailbox";
+		#mbox-cells = <1>;
+		memory-region = <&scmi_sec_shmem>;
+		u-boot,dm-pre-reloc;
+	};
+
+	gic: interrupt-controller@20500000 {
+		compatible = "arm,gic-v3";
+		interrupt-controller;
+		#interrupt-cells = <3>;
+		reg = <0x0 0x20500000 0x0 0x20000>,	/* GICD */
+		      <0x0 0x20580000 0x0 0x80000>;	/* GICR */
+		/* VGIC maintenance interrupt */
+		interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	timer {
+		compatible = "arm,armv8-timer";
+		/* Secure, non-secure, virtual, and hypervisor */
+		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_PPI 14 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_PPI 11 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_PPI 10 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	pmu {
+		compatible = "arm,armv8-pmuv3";
+		interrupts = <GIC_PPI 0x7 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+	soc {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		uart0: serial@20150000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x0 0x20150000 0x0 0x100>;
+			interrupts = <GIC_SPI 64 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "baudclk", "apb_pclk";
+			clocks = <&scmi_clk KEEM_BAY_PSS_AUX_UART0>,
+				 <&scmi_clk KEEM_BAY_PSS_UART0>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			status = "disabled";
+		};
+
+		uart1: serial@20160000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x0 0x20160000 0x0 0x100>;
+			interrupts = <GIC_SPI 65 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "baudclk", "apb_pclk";
+			clocks = <&scmi_clk KEEM_BAY_PSS_AUX_UART1>,
+				 <&scmi_clk KEEM_BAY_PSS_UART1>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			status = "disabled";
+		};
+
+		uart2: serial@20170000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x0 0x20170000 0x0 0x100>;
+			interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "baudclk", "apb_pclk";
+			clocks = <&scmi_clk KEEM_BAY_PSS_AUX_UART2>,
+				 <&scmi_clk KEEM_BAY_PSS_UART2>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			status = "disabled";
+		};
+
+		uart3: serial@20180000 {
+			compatible = "snps,dw-apb-uart";
+			reg = <0x0 0x20180000 0x0 0x100>;
+			interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
+			clock-names = "baudclk", "apb_pclk";
+			clocks = <&scmi_clk KEEM_BAY_PSS_AUX_UART3>,
+				 <&scmi_clk KEEM_BAY_PSS_UART3>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			status = "disabled";
+		};
+	};
+};
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
