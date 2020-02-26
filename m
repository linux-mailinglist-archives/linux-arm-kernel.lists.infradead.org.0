Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E389D170760
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 19:13:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IVajkU/LeMQd+t/MvWGxYuo6QQEX9AAW/MxLvy4lzhg=; b=u8bMMN+lAsWESaf2ufCgEsloqa
	KddrqLafNw4L8GmI8YhLkQFOOGzeHQnTRUWffZj/NX4QhTLRxFVKNL10DMtSn0NqOgu9MmLsG6FBu
	/7QT9d4uNOHL28O7hddumw/p1AnGg0LRUn/PZ4A+Z7pK51zWtefCucjm3vUFfNfKkZCkmFD4HNBHy
	NJmYUkNmDuBEwYUzH8pvAVvbBKH0ugWuN3ODCbg7jpxXydBGPfYUu3zkgSNeUu4WTseFj10Ae7aYM
	zI7wGhkRBupXt1zJQNQhwBXOau5UbvTJxSj2rUJ8xdkqOiZyYs17f2RIHAOMTiRTBjSsQfcozzMle
	QJtLojnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j71BR-0006s0-U9; Wed, 26 Feb 2020 18:13:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j717Z-00023d-VR
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 18:09:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C6E9630E;
 Wed, 26 Feb 2020 10:09:21 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E469D3F881;
 Wed, 26 Feb 2020 10:09:19 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Rob Herring <robh@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 05/13] dt-bindings: clock: Convert Calxeda clock bindings to
 json-schema
Date: Wed, 26 Feb 2020 18:08:53 +0000
Message-Id: <20200226180901.89940-6-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226180901.89940-1-andre.przywara@arm.com>
References: <20200226180901.89940-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_100922_111335_90AB75B0 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jon Loeliger <jdl@jdl.com>, Mark Langsdorf <mlangsdo@redhat.com>,
 Robert Richter <rric@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Eric Auger <eric.auger@redhat.com>, soc@kernel.org,
 Will Deacon <will@kernel.org>, linux-clk@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the Calxeda clock bindings to DT schema format using json-schema.

This just covers the actual PLL and divider clock nodes. In the actual
DTs they are somewhat unconnected (no ranges or bus compatible) children
of the sregs node, but for the actual clock bindings this is not
relevant.

One oddity is that the addresses are relative to the parent node,
without that being pronounced using a ranges property.
But this is too late to fix now.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org

---
 .../devicetree/bindings/clock/calxeda.txt     | 17 ----
 .../devicetree/bindings/clock/calxeda.yaml    | 83 +++++++++++++++++++
 2 files changed, 83 insertions(+), 17 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/clock/calxeda.txt
 create mode 100644 Documentation/devicetree/bindings/clock/calxeda.yaml

diff --git a/Documentation/devicetree/bindings/clock/calxeda.txt b/Documentation/devicetree/bindings/clock/calxeda.txt
deleted file mode 100644
index 0a6ac1bdcda1..000000000000
--- a/Documentation/devicetree/bindings/clock/calxeda.txt
+++ /dev/null
@@ -1,17 +0,0 @@
-Device Tree Clock bindings for Calxeda highbank platform
-
-This binding uses the common clock binding[1].
-
-[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
-
-Required properties:
-- compatible : shall be one of the following:
-	"calxeda,hb-pll-clock" - for a PLL clock
-	"calxeda,hb-a9periph-clock" - The A9 peripheral clock divided from the
-		A9 clock.
-	"calxeda,hb-a9bus-clock" - The A9 bus clock divided from the A9 clock.
-	"calxeda,hb-emmc-clock" - Divided clock for MMC/SD controller.
-- reg : shall be the control register offset from SYSREGs base for the clock.
-- clocks : shall be the input parent clock phandle for the clock. This is
-	either an oscillator or a pll output.
-- #clock-cells : from common clock binding; shall be set to 0.
diff --git a/Documentation/devicetree/bindings/clock/calxeda.yaml b/Documentation/devicetree/bindings/clock/calxeda.yaml
new file mode 100644
index 000000000000..0ad66af0eb0c
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/calxeda.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/calxeda.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Device Tree Clock bindings for Calxeda highbank platform
+
+description: |
+  This binding covers the Calxeda SoC internal peripheral and bus clocks
+  as used by peripherals. The clocks live inside the "system register"
+  region of the SoC, so are typically presented as children of an
+  "hb-sregs" node.
+
+maintainers:
+  - Andre Przywara <andre.przywara@arm.com>
+
+properties:
+  "#clock-cells":
+    const: 0
+
+  compatible:
+    enum:
+      - calxeda,hb-pll-clock
+      - calxeda,hb-a9periph-clock
+      - calxeda,hb-a9bus-clock
+      - calxeda,hb-emmc-clock
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    maxItems: 1
+
+required:
+  - "#clock-cells"
+  - compatible
+  - clocks
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    sregs@3fffc000 {
+        compatible = "calxeda,hb-sregs";
+        reg = <0x3fffc000 0x1000>;
+
+        clocks {
+            #address-cells = <1>;
+            #size-cells = <0>;
+
+            osc: oscillator {
+                #clock-cells = <0>;
+                compatible = "fixed-clock";
+                clock-frequency = <33333000>;
+            };
+
+            ddrpll: ddrpll {
+                #clock-cells = <0>;
+                compatible = "calxeda,hb-pll-clock";
+                clocks = <&osc>;
+                reg = <0x108>;
+            };
+
+            a9pll: a9pll {
+                #clock-cells = <0>;
+                compatible = "calxeda,hb-pll-clock";
+                clocks = <&osc>;
+                reg = <0x100>;
+            };
+
+            a9periphclk: a9periphclk {
+                #clock-cells = <0>;
+                compatible = "calxeda,hb-a9periph-clock";
+                clocks = <&a9pll>;
+                reg = <0x104>;
+            };
+        };
+    };
+
+...
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
