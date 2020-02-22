Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E17E168E6F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 12:26:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=AVclHX58rnUnZiZm5D4oykEOuTC5wg9oLZhIaxaq5dw=; b=dLJ
	Yo/x61qf8iBVlGB5OLGi12lTdhusZSM9OzI24bmDWwk5fcb3VGzXhqBvR1SHm+Gij8856OkICjIvb
	GrFyHBA8UcRtSGmrqr/I2sF3E8U+HxYXf2zskvrKQQSSkjCmFyVtjHDyytn5FUZOv+m+2twZI+/4s
	R1xtLoFVRJOALr3WitrkxNlFpuPrdtWefFLyOSNfAaXbEuYi0dIgpG8r1nZolpIp6Pg7QlDHyeycM
	2HtspEfFBB9VY7K/4GCEfuGgUP9DAONsrmlK1Bjq8b9+KuzkHYB3wrXc/QLxzKwp5XLwD2TZUlB5x
	txww78fvCFisiDjyr9VfXWbpV/JmhNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5Sva-0001cI-Sw; Sat, 22 Feb 2020 11:26:34 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5SvR-0001bv-6q
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 11:26:27 +0000
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id 01MBPiNS007850;
 Sat, 22 Feb 2020 20:25:44 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 01MBPiNS007850
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582370745;
 bh=eXDfPRFxogywQqOMeY/U+G4h/BSruC6jLHkszgzRqkE=;
 h=From:To:Cc:Subject:Date:From;
 b=PNIDnbjhGTxyWhYNsljipr3Yqg6frgIECAzLzYlcG0pdOioG+oCJmo97l9MlMxWXg
 Zhf81tCfdaY5LMXuENpGh8Y2rku/dMVLor/DpuCiKTdkKJtiGIFF+nnfWSgHgxS2BI
 UYuqEchS+8+XsD5d+1G41ZcvJTxDEq3X9hE/z1Aqq54sK7/cO6kTFLxB7r2rPotBl6
 EjqNPjdzx6Ysb1OXz4c1E5weZFdeJscRXDiPq/UATQhU2duek/7yb0fjU9z30BqWNg
 x4RMAiMg/UcstwWA7hRnhC+H/0ShSAZhStD2zrbrz1b2em4265Nn9mYghvggwILbtr
 J9yvZe+oNr9vg==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: mmc: Convert UniPhier SD controller to
 json-schema
Date: Sat, 22 Feb 2020 20:25:41 +0900
Message-Id: <20200222112541.573-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_032625_474134_A14869AA 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.78 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 masahiroy@kernel.org, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the UniPhier SD controller binding to DT schema format.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

If there is a better way to describe reset-names,
please let me know.


 .../bindings/mmc/socionext,uniphier-sd.yaml   | 99 +++++++++++++++++++
 .../devicetree/bindings/mmc/uniphier-sd.txt   | 55 -----------
 2 files changed, 99 insertions(+), 55 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/mmc/socionext,uniphier-sd.yaml
 delete mode 100644 Documentation/devicetree/bindings/mmc/uniphier-sd.txt

diff --git a/Documentation/devicetree/bindings/mmc/socionext,uniphier-sd.yaml b/Documentation/devicetree/bindings/mmc/socionext,uniphier-sd.yaml
new file mode 100644
index 000000000000..cdfac9b4411b
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/socionext,uniphier-sd.yaml
@@ -0,0 +1,99 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/socionext,uniphier-sd.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: UniPhier SD/SDIO/eMMC controller
+
+maintainers:
+  - Masahiro Yamada <yamada.masahiro@socionext.com>
+
+properties:
+  compatible:
+    description: version 2.91, 3.1, 3.1.1, respectively
+    enum:
+      - socionext,uniphier-sd-v2.91
+      - socionext,uniphier-sd-v3.1
+      - socionext,uniphier-sd-v3.1.1
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  reset-names:
+    description: |
+      There are three reset signals at maximum
+        host:   mandatory for all variants
+        bridge: exist only for version 2.91
+        hw:     optional. exist if eMMC hw reset line is available
+    oneOf:
+      - const: host
+      - items:
+        - const: host
+        - const: bridge
+      - items:
+        - const: host
+        - const: hw
+      - items:
+        - const: host
+        - const: bridge
+        - const: hw
+
+  resets:
+    minItems: 1
+    maxItems: 3
+
+allOf:
+  - $ref: mmc-controller.yaml
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: socionext,uniphier-sd-v2.91
+    then:
+      properties:
+        reset-names:
+          contains:
+            const: bridge
+    else:
+      properties:
+        reset-names:
+          not:
+            contains:
+              const: bridge
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - reset-names
+  - resets
+
+examples:
+  - |
+    sd: mmc@5a400000 {
+        compatible = "socionext,uniphier-sd-v2.91";
+        reg = <0x5a400000 0x200>;
+        interrupts = <0 76 4>;
+        pinctrl-names = "default", "uhs";
+        pinctrl-0 = <&pinctrl_sd>;
+        pinctrl-1 = <&pinctrl_sd_uhs>;
+        clocks = <&mio_clk 0>;
+        reset-names = "host", "bridge";
+        resets = <&mio_rst 0>, <&mio_rst 3>;
+        dma-names = "rx-tx";
+        dmas = <&dmac 4>;
+        bus-width = <4>;
+        cap-sd-highspeed;
+        sd-uhs-sdr12;
+        sd-uhs-sdr25;
+        sd-uhs-sdr50;
+    };
diff --git a/Documentation/devicetree/bindings/mmc/uniphier-sd.txt b/Documentation/devicetree/bindings/mmc/uniphier-sd.txt
deleted file mode 100644
index e1d658755722..000000000000
--- a/Documentation/devicetree/bindings/mmc/uniphier-sd.txt
+++ /dev/null
@@ -1,55 +0,0 @@
-UniPhier SD/eMMC controller
-
-Required properties:
-- compatible: should be one of the following:
-    "socionext,uniphier-sd-v2.91"  - IP version 2.91
-    "socionext,uniphier-sd-v3.1"   - IP version 3.1
-    "socionext,uniphier-sd-v3.1.1" - IP version 3.1.1
-- reg: offset and length of the register set for the device.
-- interrupts: a single interrupt specifier.
-- clocks: a single clock specifier of the controller clock.
-- reset-names: should contain the following:
-    "host"   - mandatory for all versions
-    "bridge" - should exist only for "socionext,uniphier-sd-v2.91"
-    "hw"     - should exist if eMMC hw reset line is available
-- resets: a list of reset specifiers, corresponding to the reset-names
-
-Optional properties:
-- pinctrl-names: if present, should contain the following:
-    "default" - should exist for all instances
-    "uhs"     - should exist for SD instance with UHS support
-- pinctrl-0: pin control state for the default mode
-- pinctrl-1: pin control state for the UHS mode
-- dma-names: should be "rx-tx" if present.
-  This property can exist only for "socionext,uniphier-sd-v2.91".
-- dmas: a single DMA channel specifier
-  This property can exist only for "socionext,uniphier-sd-v2.91".
-- bus-width: see mmc.txt
-- cap-sd-highspeed: see mmc.txt
-- cap-mmc-highspeed: see mmc.txt
-- sd-uhs-sdr12: see mmc.txt
-- sd-uhs-sdr25: see mmc.txt
-- sd-uhs-sdr50: see mmc.txt
-- cap-mmc-hw-reset: should exist if reset-names contains "hw". see mmc.txt
-- non-removable: see mmc.txt
-
-Example:
-
-	sd: sdhc@5a400000 {
-		compatible = "socionext,uniphier-sd-v2.91";
-		reg = <0x5a400000 0x200>;
-		interrupts = <0 76 4>;
-		pinctrl-names = "default", "uhs";
-		pinctrl-0 = <&pinctrl_sd>;
-		pinctrl-1 = <&pinctrl_sd_uhs>;
-		clocks = <&mio_clk 0>;
-		reset-names = "host", "bridge";
-		resets = <&mio_rst 0>, <&mio_rst 3>;
-		dma-names = "rx-tx";
-		dmas = <&dmac 4>;
-		bus-width = <4>;
-		cap-sd-highspeed;
-		sd-uhs-sdr12;
-		sd-uhs-sdr25;
-		sd-uhs-sdr50;
-	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
