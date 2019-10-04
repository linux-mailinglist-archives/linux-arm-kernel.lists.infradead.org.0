Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B0BCBD36
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:29:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6YmZKDYGotLtGaqKZZ+dd+EkhGepsRsErFdbQqSWMw=; b=QYn0tfGuBX8EU1
	hnZjTRfQ5FbwOfTNG/FJvYrKs5ZmRKbADmq4fGfsOn+1gvonJg0PvmTj9GxSl8lN2fk8V7xpmrjB9
	0MVcRyBPuTwOMxUS6QPXzvxxSaFM0Z4TokHQVG9OX+5Kp7H0XCNZu2KisUUUDfZcfNyWgjqfJxRnZ
	BYAoOuAIbPP+2aw0LYA6gxax0+hWWN1xGYE2BbVnQtROituPEG/wnSUxFoZIzWgBwh6BLIXlBM00x
	VyYdnM39rvcE6b+Wz/dJq91H/7yJqV59N8KjR0tu5MP/U76Ffw/ePgALdDQmToaYWCiiitHa3pAbB
	vf2iLzwNyyaCWOjUpz5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOaV-0006Mb-Mz; Fri, 04 Oct 2019 14:29:43 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOYk-0004tc-6t
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:27:57 +0000
X-Originating-IP: 86.250.200.211
Received: from localhost.localdomain (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: miquel.raynal@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 22A37C0025;
 Fri,  4 Oct 2019 14:27:50 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Rob Herring <robh+dt@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 07/21] arm64: dts: marvell: Add support for AP807/AP807-quad
Date: Fri,  4 Oct 2019 16:27:24 +0200
Message-Id: <20191004142738.7370-8-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191004142738.7370-1-miquel.raynal@bootlin.com>
References: <20191004142738.7370-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_072754_406975_5A320E42 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Yan Markman <ymarkman@marvell.com>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Grzegorz Jaszczyk <jaz@semihalf.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Stefan Chulski <stefanc@marvell.com>, Marcin Wojtas <mw@semihalf.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Describe AP807 and AP807-quad support.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 .../boot/dts/marvell/armada-ap807-quad.dtsi   | 51 +++++++++++++++++++
 arch/arm64/boot/dts/marvell/armada-ap807.dtsi | 29 +++++++++++
 2 files changed, 80 insertions(+)
 create mode 100644 arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
 create mode 100644 arch/arm64/boot/dts/marvell/armada-ap807.dtsi

diff --git a/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi b/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
new file mode 100644
index 000000000000..65364691257d
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/armada-ap807-quad.dtsi
@@ -0,0 +1,51 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree file for Marvell Armada AP807 Quad
+ *
+ * Copyright (C) 2019 Marvell Technology Group Ltd.
+ */
+
+#include "armada-ap807.dtsi"
+
+/ {
+	model = "Marvell Armada AP807 Quad";
+	compatible = "marvell,armada-ap807-quad", "marvell,armada-ap807";
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72", "arm,armv8";
+			reg = <0x000>;
+			enable-method = "psci";
+			#cooling-cells = <2>;
+			clocks = <&cpu_clk 0>;
+		};
+		cpu1: cpu@1 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72", "arm,armv8";
+			reg = <0x001>;
+			enable-method = "psci";
+			#cooling-cells = <2>;
+			clocks = <&cpu_clk 0>;
+		};
+		cpu2: cpu@100 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72", "arm,armv8";
+			reg = <0x100>;
+			enable-method = "psci";
+			#cooling-cells = <2>;
+			clocks = <&cpu_clk 1>;
+		};
+		cpu3: cpu@101 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a72", "arm,armv8";
+			reg = <0x101>;
+			enable-method = "psci";
+			#cooling-cells = <2>;
+			clocks = <&cpu_clk 1>;
+		};
+	};
+};
diff --git a/arch/arm64/boot/dts/marvell/armada-ap807.dtsi b/arch/arm64/boot/dts/marvell/armada-ap807.dtsi
new file mode 100644
index 000000000000..623010f3ca89
--- /dev/null
+++ b/arch/arm64/boot/dts/marvell/armada-ap807.dtsi
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Device Tree file for Marvell Armada AP807
+ *
+ * Copyright (C) 2019 Marvell Technology Group Ltd.
+ */
+
+#define AP_NAME		ap807
+#include "armada-ap80x.dtsi"
+
+/ {
+	model = "Marvell Armada AP807";
+	compatible = "marvell,armada-ap807";
+};
+
+&ap_syscon0 {
+	ap_clk: clock {
+		compatible = "marvell,ap807-clock";
+		#clock-cells = <1>;
+	};
+};
+
+&ap_syscon1 {
+	cpu_clk: clock-cpu {
+		compatible = "marvell,ap807-cpu-clock";
+		clocks = <&ap_clk 0>, <&ap_clk 1>;
+		#clock-cells = <1>;
+	};
+};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
