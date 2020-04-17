Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CBCF1AD6EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 09:07:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9yvH+KM5ccO9/aKDwrA4iY/Rhkqig6w6g/jJdPlmdM=; b=bgGziJAEjaBL3n
	W2fm7eL7/a/1269s4zoEutzChYPebDcDAWVt5GD4xFx0GNpA1KJ6kQA+12fM4BliNZaHVDqTKj/e4
	iZDyxZPiHxT+DhCRIbEWX7vJe0ep9sL0s7OqXw/rKrpDcTtDzXAe7yQJ3r4gbe9iWQLrz19RVWi9e
	h63J7kxvXDR2cv7sxeEfA8uLxQTlGdoeYLu0pBt7Nn3sYUQstVM3ijoT1FyfK3YbECn5gFT+8uKAV
	F51fyTB6GEXYPzo8caa3Wms6B6TzZQOSGzdOr6E2aYs++JORQDyCbsG3yPPyjulUMT9HPT89wfNMm
	7BVJPmL1gbkwOkDujgnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPL5e-00031A-RF; Fri, 17 Apr 2020 07:07:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPL4B-0001SI-7n
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 07:05:38 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jPL45-0008Nr-3y; Fri, 17 Apr 2020 09:05:29 +0200
Received: from mtr by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1jPL44-00033W-FJ; Fri, 17 Apr 2020 09:05:28 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 4/6] dt-bindings: soc: xlnx: extract xlnx,
 vcu-settings to separate binding
Date: Fri, 17 Apr 2020 09:05:24 +0200
Message-Id: <20200417070526.7178-5-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200417070526.7178-1-m.tretter@pengutronix.de>
References: <20200417070526.7178-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_000535_277476_BA896166 
X-CRM114-Status: GOOD (  15.72  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Dhaval Shah <dshah@xilinx.com>, Michael Tretter <m.tretter@pengutronix.de>,
 Michal Simek <michal.simek@xilinx.com>, Rob Herring <robh+dt@kernel.org>,
 kernel@pengutronix.de, Rohit Visavalia <rohit.visavalia@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The xlnx,vcu binding comprises two adjacent register banks:

The first register bank ("vcu_slcr") contains registers for setting the
clocks of the vcu and controlling the performance monitors. The second
bank ("logicoreip") contains the configuration settings of the video codec
unit, which are set before synthesizing the bitstream.

Drivers that drive the actual video codec unit need to to read the
registers from the logicoreip register bank for configuring the vcu
firmware.

As logicoreip is a too generic name for this register bank, use
"vcu-settings" as a binding name, because the register bank basically
provides the configuration settings of the VCU.

Therefore, add the vcu-settings binding to provide a syscon interface
for other drivers to read these registers.

The alternative would have been to merge the two register banks of the
xlnx,vcu binding into one register bank and make xlnx,vcu provide a
syscon interface, but that would lead to more incompatibility than
making second register bank of xlnx,vcu optional.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changelog:

v2 -> v3:
- none

v1 -> v2:
- drop custom select for syscon
---
 .../soc/xilinx/xlnx,vcu-settings.yaml         | 34 +++++++++++++++++++
 .../bindings/soc/xilinx/xlnx,vcu.txt          |  9 ++---
 2 files changed, 36 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml

diff --git a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
new file mode 100644
index 000000000000..378d0ced43c8
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
@@ -0,0 +1,34 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/xilinx/xlnx,vcu-settings.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Xilinx VCU Settings
+
+maintainers:
+  - Michael Tretter <kernel@pengutronix.de>
+
+description: |
+  The Xilinx VCU Settings provides information about the configuration of the
+  video codec unit.
+
+properties:
+  compatible:
+    items:
+      - const: xlnx,vcu-settings
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+examples:
+  - |
+    xlnx_vcu: vcu@a0041000 {
+          compatible = "xlnx,vcu-settings", "syscon";
+          reg = <0x0 0xa0041000 0x0 0x1000>;
+    };
diff --git a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu.txt b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu.txt
index 6786d6715df0..2417b13ba468 100644
--- a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu.txt
+++ b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu.txt
@@ -12,10 +12,7 @@ Required properties:
 - compatible: shall be one of:
 	"xlnx,vcu"
 	"xlnx,vcu-logicoreip-1.0"
-- reg, reg-names: There are two sets of registers need to provide.
-	1. vcu slcr
-	2. Logicore
-	reg-names should contain name for the each register sequence.
+- reg : The base offset and size of the VCU_PL_SLCR register space.
 - clocks: phandle for aclk and pll_ref clocksource
 - clock-names: The identification string, "aclk", is always required for
    the axi clock. "pll_ref" is required for pll.
@@ -23,9 +20,7 @@ Example:
 
 	xlnx_vcu: vcu@a0040000 {
 		compatible = "xlnx,vcu-logicoreip-1.0";
-		reg = <0x0 0xa0040000 0x0 0x1000>,
-			 <0x0 0xa0041000 0x0 0x1000>;
-		reg-names = "vcu_slcr", "logicore";
+		reg = <0x0 0xa0040000 0x0 0x1000>;
 		clocks = <&si570_1>, <&clkc 71>;
 		clock-names = "pll_ref", "aclk";
 	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
