Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1427128EC4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Dec 2019 16:54:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZ6TwZWb4lY2U1xg4aBWtrlNUfcXlxKHghvLA3w+4KA=; b=dUIc7DwcSuL5qf
	sy1ANc5ldXxqGdxjN1LBM++E/4HD/4ID0sjRlICXIbbZB/HVN5VPzkfgcEDeKeG85A48G4YXYw4jo
	4qPV5/9eSzt+l6D4RCywklrMYnRPPFG8LZEH+GgFCjSuAsfnqwrTZ0rD+CaL+DT0SefrFPjRnx1bk
	iGvGx7uFvqnEvZ92nSJnJs53RwowRbLAMYJ8a7uQm81B1QlykgtMIZqPvIwVREWA3ZiVwZ+QldHko
	Fu1yGtAQX6vszfkoq7zL4W4SP6DXzhlawiqkgPMFSJbXc3daULLMiexnVPV9U0xkpE9vT3r1fPACG
	WNALSEaSoh9K+yPRrnzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ij3YF-0003Kh-EL; Sun, 22 Dec 2019 15:53:51 +0000
Received: from smtp-fw-33001.amazon.com ([207.171.190.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ij3XM-0002cI-Hw
 for linux-arm-kernel@lists.infradead.org; Sun, 22 Dec 2019 15:53:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1577029977; x=1608565977;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=BReDFj4znSJDnc9QwmAdMr9LzlcWLj74YwLWLarLP4g=;
 b=rh6v16Fp9tz4jXdQjE5S2efWavvj4MooD+j6QHwVQ5uwo6rJK0uPEx6r
 nkzAy+Pdz8qw4dYUMrzI4j+2oHbeb1hh8wbdSnIRJVTXR+ZXDomcCBOGX
 OJuLZFtk1p2cP5qkOGuVThm2WgtJM7nJvW+h8w5Ii3DANiyHFsDzM+Zlr Q=;
IronPort-SDR: QlzRbxXQz6+Xmm0Rht3Cg5/dumPD7gt9ZBG37Y4cLrugiLybVX6pnE9wkIcMg5FgyXxRJfqFXj
 XRI9qL0UUzHA==
X-IronPort-AV: E=Sophos;i="5.69,344,1571702400"; d="scan'208";a="16394046"
Received: from sea32-co-svc-lb4-vlan3.sea.corp.amazon.com (HELO
 email-inbound-relay-2b-859fe132.us-west-2.amazon.com) ([10.47.23.38])
 by smtp-border-fw-out-33001.sea14.amazon.com with ESMTP;
 22 Dec 2019 15:52:46 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2b-859fe132.us-west-2.amazon.com (Postfix) with ESMTPS
 id 44A1B223D8A; Sun, 22 Dec 2019 15:52:39 +0000 (UTC)
Received: from EX13D19EUB003.ant.amazon.com (10.43.166.69) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.243) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Sun, 22 Dec 2019 15:52:39 +0000
Received: from u8a88181e7b2355.ant.amazon.com (10.43.162.9) by
 EX13D19EUB003.ant.amazon.com (10.43.166.69) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Sun, 22 Dec 2019 15:52:27 +0000
From: Hanna Hawa <hhhawa@amazon.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <tsahee@annapurnalabs.com>, 
 <antoine.tenart@bootlin.com>, <hhhawa@amazon.com>,
 <mchehab+samsung@kernel.org>, <davem@davemloft.net>,
 <gregkh@linuxfoundation.org>, <Jonathan.Cameron@huawei.com>,
 <tglx@linutronix.de>, <xuwei5@hisilicon.com>, <scott.branden@broadcom.com>,
 <dinguyen@kernel.org>, <zhang.lyra@gmail.com>, <treding@nvidia.com>
Subject: [PATCH v3 6/6] arm64: dts: amazon: add Amazon's Annapurna Labs Alpine
 v3 support
Date: Sun, 22 Dec 2019 17:50:38 +0200
Message-ID: <20191222155038.30633-7-hhhawa@amazon.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191222155038.30633-1-hhhawa@amazon.com>
References: <20191222155038.30633-1-hhhawa@amazon.com>
MIME-Version: 1.0
X-Originating-IP: [10.43.162.9]
X-ClientProxiedBy: EX13D19UWA002.ant.amazon.com (10.43.160.204) To
 EX13D19EUB003.ant.amazon.com (10.43.166.69)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_075256_689182_2ADD6195 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -10.0 (----------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-10.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.171.190.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, barakw@amazon.com, benh@amazon.com,
 linux-kernel@vger.kernel.org, hanochu@amazon.com, dwmw@amazon.co.uk,
 jonnyc@amazon.com, ronenk@amazon.com, talel@amazon.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ronen Krupnik <ronenk@amazon.com>

This patch adds the initial support for the Amazon's Annapurna Labs
Alpine v3 Soc and Evaluation Platform (EVP).

Signed-off-by: Ronen Krupnik <ronenk@amazon.com>
Signed-off-by: Hanna Hawa <hhhawa@amazon.com>
---
 arch/arm64/boot/dts/amazon/Makefile          |   1 +
 arch/arm64/boot/dts/amazon/alpine-v3-evp.dts |  23 ++
 arch/arm64/boot/dts/amazon/alpine-v3.dtsi    | 371 +++++++++++++++++++
 3 files changed, 395 insertions(+)
 create mode 100644 arch/arm64/boot/dts/amazon/alpine-v3-evp.dts
 create mode 100644 arch/arm64/boot/dts/amazon/alpine-v3.dtsi

diff --git a/arch/arm64/boot/dts/amazon/Makefile b/arch/arm64/boot/dts/amazon/Makefile
index d79822dc30cd..ba9e11544905 100644
--- a/arch/arm64/boot/dts/amazon/Makefile
+++ b/arch/arm64/boot/dts/amazon/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 dtb-$(CONFIG_ARCH_ALPINE)	+= alpine-v2-evp.dtb
+dtb-$(CONFIG_ARCH_ALPINE)	+= alpine-v3-evp.dtb
diff --git a/arch/arm64/boot/dts/amazon/alpine-v3-evp.dts b/arch/arm64/boot/dts/amazon/alpine-v3-evp.dts
new file mode 100644
index 000000000000..8c1e11cf5855
--- /dev/null
+++ b/arch/arm64/boot/dts/amazon/alpine-v3-evp.dts
@@ -0,0 +1,23 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019 Amazon.com, Inc. or its affiliates. All Rights Reserved.
+ */
+
+#include "alpine-v3.dtsi"
+
+/ {
+	model = "Amazon's Annapurna Labs Alpine v3 Evaluation Platform (EVP)";
+	compatible = "amazon,al-alpine-v3-evp", "amazon,al-alpine-v3";
+
+	aliases {
+		serial0 = &uart0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&uart0 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/amazon/alpine-v3.dtsi b/arch/arm64/boot/dts/amazon/alpine-v3.dtsi
new file mode 100644
index 000000000000..5e6657ef7588
--- /dev/null
+++ b/arch/arm64/boot/dts/amazon/alpine-v3.dtsi
@@ -0,0 +1,371 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2019, Amazon.com, Inc. or its affiliates. All Rights Reserved
+ */
+
+/dts-v1/;
+
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+/ {
+	model = "Amazon's Annapurna Labs Alpine v3";
+	compatible = "amazon,al-alpine-v3";
+
+	interrupt-parent = <&gic>;
+
+	#address-cells = <2>;
+	#size-cells = <2>;
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x0>;
+			enable-method = "psci";
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			next-level-cache = <&cluster0_l2>;
+		};
+
+		cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x1>;
+			enable-method = "psci";
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			next-level-cache = <&cluster0_l2>;
+		};
+
+		cpu@2 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x2>;
+			enable-method = "psci";
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			next-level-cache = <&cluster0_l2>;
+		};
+
+		cpu@3 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x3>;
+			enable-method = "psci";
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			next-level-cache = <&cluster0_l2>;
+		};
+
+		cpu@100 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x100>;
+			enable-method = "psci";
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			next-level-cache = <&cluster1_l2>;
+		};
+
+		cpu@101 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x101>;
+			enable-method = "psci";
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			next-level-cache = <&cluster1_l2>;
+		};
+
+		cpu@102 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x102>;
+			enable-method = "psci";
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			next-level-cache = <&cluster1_l2>;
+		};
+
+		cpu@103 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x103>;
+			enable-method = "psci";
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			next-level-cache = <&cluster1_l2>;
+		};
+
+		cpu@200 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x200>;
+			enable-method = "psci";
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			next-level-cache = <&cluster2_l2>;
+		};
+
+		cpu@201 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x201>;
+			enable-method = "psci";
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			next-level-cache = <&cluster2_l2>;
+		};
+
+		cpu@202 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x202>;
+			enable-method = "psci";
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			next-level-cache = <&cluster2_l2>;
+		};
+
+		cpu@203 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x203>;
+			enable-method = "psci";
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			next-level-cache = <&cluster2_l2>;
+		};
+
+		cpu@300 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x300>;
+			enable-method = "psci";
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			next-level-cache = <&cluster3_l2>;
+		};
+
+		cpu@301 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x301>;
+			enable-method = "psci";
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			next-level-cache = <&cluster3_l2>;
+		};
+
+		cpu@302 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x302>;
+			enable-method = "psci";
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			next-level-cache = <&cluster3_l2>;
+		};
+
+		cpu@303 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72";
+			reg = <0x303>;
+			enable-method = "psci";
+			d-cache-size = <0x8000>;
+			d-cache-line-size = <64>;
+			d-cache-sets = <256>;
+			i-cache-size = <0xc000>;
+			i-cache-line-size = <64>;
+			i-cache-sets = <256>;
+			next-level-cache = <&cluster3_l2>;
+		};
+
+		cluster0_l2: cache@0 {
+			compatible = "cache";
+			cache-size = <0x200000>;
+			cache-line-size = <64>;
+			cache-sets = <2048>;
+			cache-level = <2>;
+		};
+
+		cluster1_l2: cache@100 {
+			compatible = "cache";
+			cache-size = <0x200000>;
+			cache-line-size = <64>;
+			cache-sets = <2048>;
+			cache-level = <2>;
+		};
+
+		cluster2_l2: cache@200 {
+			compatible = "cache";
+			cache-size = <0x200000>;
+			cache-line-size = <64>;
+			cache-sets = <2048>;
+			cache-level = <2>;
+		};
+
+		cluster3_l2: cache@300 {
+			compatible = "cache";
+			cache-size = <0x200000>;
+			cache-line-size = <64>;
+			cache-sets = <2048>;
+			cache-level = <2>;
+		};
+
+	};
+
+	reserved-memory {
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		secmon@0 {
+			reg = <0x0 0x0 0x0 0x100000>;
+			no-map;
+		};
+	};
+
+	psci {
+		compatible = "arm,psci-0.2";
+		method = "smc";
+	};
+
+	arch-timer {
+		compatible = "arm,armv8-timer";
+		interrupts = <GIC_PPI 0xd IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 0xe IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 0xb IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_PPI 0xa IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	pmu {
+		compatible = "arm,cortex-a72-pmu";
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
+	};
+
+
+	soc {
+		compatible = "simple-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+		ranges;
+
+		gic: interrupt-controller@f0000000 {
+			compatible = "arm,gic-v3";
+			#interrupt-cells = <3>;
+			#address-cells = <0>;
+			interrupt-controller;
+			reg = <0x0 0xf0800000 0 0x10000>,
+			      <0x0 0xf0a00000 0 0x200000>,
+			      <0x0 0xf0000000 0 0x2000>,
+			      <0x0 0xf0010000 0 0x1000>,
+			      <0x0 0xf0020000 0 0x2000>;
+			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
+		msix: msix@fbe00000 {
+			compatible = "al,alpine-msix";
+			reg = <0x0 0xfbe00000 0x0 0x100000>;
+			interrupt-controller;
+			msi-controller;
+			al,msi-base-spi = <160>;
+			al,msi-num-spis = <800>;
+			interrupt-parent = <&gic>;
+		};
+
+		uart0: serial@fd883000 {
+			compatible = "ns16550a";
+			reg = <0x0 0xfd883000 0x0 0x1000>;
+			clock-frequency = <0>;
+			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+		};
+
+		pcie@fbd00000 {
+			compatible = "pci-host-ecam-generic";
+			device_type = "pci";
+			#size-cells = <2>;
+			#address-cells = <3>;
+			#interrupt-cells = <1>;
+			reg = <0x0 0xfbd00000 0x0 0x100000>;
+			interrupt-map-mask = <0xf800 0 0 7>;
+			/* 8 x legacy interrupts for SATA only */
+			interrupt-map = <0x4000 0 0 1 &gic 0 57 IRQ_TYPE_LEVEL_HIGH>,
+					<0x4800 0 0 1 &gic 0 58 IRQ_TYPE_LEVEL_HIGH>,
+					<0x5000 0 0 1 &gic 0 59 IRQ_TYPE_LEVEL_HIGH>,
+					<0x5800 0 0 1 &gic 0 60 IRQ_TYPE_LEVEL_HIGH>,
+					<0x6000 0 0 1 &gic 0 61 IRQ_TYPE_LEVEL_HIGH>,
+					<0x6800 0 0 1 &gic 0 62 IRQ_TYPE_LEVEL_HIGH>,
+					<0x7000 0 0 1 &gic 0 63 IRQ_TYPE_LEVEL_HIGH>,
+					<0x7800 0 0 1 &gic 0 64 IRQ_TYPE_LEVEL_HIGH>;
+			ranges = <0x02000000 0x0 0xfe000000 0x0 0xfe000000 0x0 0x1000000>;
+			bus-range = <0x00 0x00>;
+			msi-parent = <&msix>;
+		};
+	};
+};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
