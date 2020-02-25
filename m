Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEAC16B700
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 02:04:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Dywrsg9hwTTpQcWeFZo9YuCcUWhjsjw98djxBl+kajA=; b=O4s
	gLOxfpVoNrtEhWF/LPGqeHSjZzX7K36PvatBSUS3hPEPANNVgRP3lBjYottZUcsKR+mmsittiZneK
	8WhFHv5xCeWRDdcklPGuv9ZalkCKzDqCAGiRqE4rUAm9vEfk5SRsjMKxHZekx9sgQ+xX9orWsQoVf
	XFrHiPv0rj7Y1AejzUelCWEOfLkkfg3b41FDse4Qtay0ky2brgvUkUF/S/hScwuRhj5uuLHCaKWYi
	ZRyctUYR5txLj1u7DsBM35twODI9uYzkfcwYgjn2WTQ0i1Jc2Q1lRE/efbywb65i/G4SaKWLKvtx1
	IdS4rHp2Tqkwrtond/ybRLx19CtM2Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Oe6-0005gn-0Q; Tue, 25 Feb 2020 01:04:22 +0000
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Odw-0005fu-NL
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 01:04:14 +0000
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-08.nifty.com with ESMTP id 01P13V5u029378;
 Tue, 25 Feb 2020 10:03:32 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-08.nifty.com 01P13V5u029378
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582592612;
 bh=sbdW+j1dev5cR9lqtU/QyEWRKr6L0JmtzRCOHfnmTZ8=;
 h=From:To:Cc:Subject:Date:From;
 b=J3kDjF/84X2/geC8FZQq5+BPzrjHT4tGAK6Q7w3gFY5XKmE74KPF/MrjVAtkZTP0q
 Ovf+rXxc5EAqT1ClAR2MJ+qYOvt4V6yxak1KbNvFn83DmEzmrx23bXWYeWK13TmL3I
 B3/kVHrdt1BwSUFThNMtVhqLDrCOcfL+SteAca58jaF88So0BbhpCzcueiUr/WLaCe
 nGwIdbE0J8vakVeKGya1qO/NFIeAvxvMdvk0UD0FSMd4ZwuANV/1CbzmH7sMADFODW
 hOvhiwcsSgB/NihpN0MMpFU13TtIezvqT3HKL3GJNUo8lpM/D+8Ijp2/h41938BxAm
 b5iBgQQ46eypw==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: clock: Convert UniPhier clock to json-schema
Date: Tue, 25 Feb 2020 10:03:28 +0900
Message-Id: <20200225010328.5638-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_170412_979926_E50D6600 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.75 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Stephen Boyd <sboyd@kernel.org>,
 masahiroy@kernel.org, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the UniPhier clock controller binding to DT schema format.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 .../clock/socionext,uniphier-clock.yaml       |  94 +++++++++++++
 .../bindings/clock/uniphier-clock.txt         | 132 ------------------
 2 files changed, 94 insertions(+), 132 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/socionext,uniphier-clock.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/uniphier-clock.txt

diff --git a/Documentation/devicetree/bindings/clock/socionext,uniphier-clock.yaml b/Documentation/devicetree/bindings/clock/socionext,uniphier-clock.yaml
new file mode 100644
index 000000000000..c3930edc410f
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/socionext,uniphier-clock.yaml
@@ -0,0 +1,94 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/socionext,uniphier-clock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: UniPhier clock controller
+
+maintainers:
+  - Masahiro Yamada <yamada.masahiro@socionext.com>
+
+properties:
+  compatible:
+    oneOf:
+      - description: System clock
+        enum:
+          - socionext,uniphier-ld4-clock
+          - socionext,uniphier-pro4-clock
+          - socionext,uniphier-sld8-clock
+          - socionext,uniphier-pro5-clock
+          - socionext,uniphier-pxs2-clock
+          - socionext,uniphier-ld6b-clock
+          - socionext,uniphier-ld11-clock
+          - socionext,uniphier-ld20-clock
+          - socionext,uniphier-pxs3-clock
+      - description: Media I/O (MIO) clock, SD clock
+        enum:
+          - socionext,uniphier-ld4-mio-clock
+          - socionext,uniphier-pro4-mio-clock
+          - socionext,uniphier-sld8-mio-clock
+          - socionext,uniphier-pro5-sd-clock
+          - socionext,uniphier-pxs2-sd-clock
+          - socionext,uniphier-ld11-mio-clock
+          - socionext,uniphier-ld20-sd-clock
+          - socionext,uniphier-pxs3-sd-clock
+      - description: Peripheral clock
+        enum:
+          - socionext,uniphier-ld4-peri-clock
+          - socionext,uniphier-pro4-peri-clock
+          - socionext,uniphier-sld8-peri-clock
+          - socionext,uniphier-pro5-peri-clock
+          - socionext,uniphier-pxs2-peri-clock
+          - socionext,uniphier-ld11-peri-clock
+          - socionext,uniphier-ld20-peri-clock
+          - socionext,uniphier-pxs3-peri-clock
+
+  "#clock-cells":
+    const: 1
+
+additionalProperties: false
+
+required:
+  - compatible
+  - "#clock-cells"
+
+examples:
+  - |
+    sysctrl@61840000 {
+        compatible = "socionext,uniphier-sysctrl", "simple-mfd", "syscon";
+        reg = <0x61840000 0x4000>;
+
+        clock {
+            compatible = "socionext,uniphier-ld11-clock";
+            #clock-cells = <1>;
+        };
+
+        // other nodes ...
+    };
+
+  - |
+    mioctrl@59810000 {
+        compatible = "socionext,uniphier-mioctrl", "simple-mfd", "syscon";
+        reg = <0x59810000 0x800>;
+
+        clock {
+            compatible = "socionext,uniphier-ld11-mio-clock";
+            #clock-cells = <1>;
+        };
+
+        // other nodes ...
+    };
+
+  - |
+    perictrl@59820000 {
+        compatible = "socionext,uniphier-perictrl", "simple-mfd", "syscon";
+        reg = <0x59820000 0x200>;
+
+        clock {
+            compatible = "socionext,uniphier-ld11-peri-clock";
+            #clock-cells = <1>;
+        };
+
+        // other nodes ...
+    };
diff --git a/Documentation/devicetree/bindings/clock/uniphier-clock.txt b/Documentation/devicetree/bindings/clock/uniphier-clock.txt
deleted file mode 100644
index 7b5f602765fe..000000000000
--- a/Documentation/devicetree/bindings/clock/uniphier-clock.txt
+++ /dev/null
@@ -1,132 +0,0 @@
-UniPhier clock controller
-
-
-System clock
-------------
-
-Required properties:
-- compatible: should be one of the following:
-    "socionext,uniphier-ld4-clock"  - for LD4 SoC.
-    "socionext,uniphier-pro4-clock" - for Pro4 SoC.
-    "socionext,uniphier-sld8-clock" - for sLD8 SoC.
-    "socionext,uniphier-pro5-clock" - for Pro5 SoC.
-    "socionext,uniphier-pxs2-clock" - for PXs2/LD6b SoC.
-    "socionext,uniphier-ld11-clock" - for LD11 SoC.
-    "socionext,uniphier-ld20-clock" - for LD20 SoC.
-    "socionext,uniphier-pxs3-clock" - for PXs3 SoC
-- #clock-cells: should be 1.
-
-Example:
-
-	sysctrl@61840000 {
-		compatible = "socionext,uniphier-sysctrl",
-			     "simple-mfd", "syscon";
-		reg = <0x61840000 0x4000>;
-
-		clock {
-			compatible = "socionext,uniphier-ld11-clock";
-			#clock-cells = <1>;
-		};
-
-		other nodes ...
-	};
-
-Provided clocks:
-
- 8: ST DMAC
-12: GIO (Giga bit stream I/O)
-14: USB3 ch0 host
-15: USB3 ch1 host
-16: USB3 ch0 PHY0
-17: USB3 ch0 PHY1
-20: USB3 ch1 PHY0
-21: USB3 ch1 PHY1
-
-
-Media I/O (MIO) clock, SD clock
--------------------------------
-
-Required properties:
-- compatible: should be one of the following:
-    "socionext,uniphier-ld4-mio-clock"  - for LD4 SoC.
-    "socionext,uniphier-pro4-mio-clock" - for Pro4 SoC.
-    "socionext,uniphier-sld8-mio-clock" - for sLD8 SoC.
-    "socionext,uniphier-pro5-sd-clock"  - for Pro5 SoC.
-    "socionext,uniphier-pxs2-sd-clock"  - for PXs2/LD6b SoC.
-    "socionext,uniphier-ld11-mio-clock" - for LD11 SoC.
-    "socionext,uniphier-ld20-sd-clock"  - for LD20 SoC.
-    "socionext,uniphier-pxs3-sd-clock"  - for PXs3 SoC
-- #clock-cells: should be 1.
-
-Example:
-
-	mioctrl@59810000 {
-		compatible = "socionext,uniphier-mioctrl",
-			     "simple-mfd", "syscon";
-		reg = <0x59810000 0x800>;
-
-		clock {
-			compatible = "socionext,uniphier-ld11-mio-clock";
-			#clock-cells = <1>;
-		};
-
-		other nodes ...
-	};
-
-Provided clocks:
-
- 0: SD ch0 host
- 1: eMMC host
- 2: SD ch1 host
- 7: MIO DMAC
- 8: USB2 ch0 host
- 9: USB2 ch1 host
-10: USB2 ch2 host
-12: USB2 ch0 PHY
-13: USB2 ch1 PHY
-14: USB2 ch2 PHY
-
-
-Peripheral clock
-----------------
-
-Required properties:
-- compatible: should be one of the following:
-    "socionext,uniphier-ld4-peri-clock"  - for LD4 SoC.
-    "socionext,uniphier-pro4-peri-clock" - for Pro4 SoC.
-    "socionext,uniphier-sld8-peri-clock" - for sLD8 SoC.
-    "socionext,uniphier-pro5-peri-clock" - for Pro5 SoC.
-    "socionext,uniphier-pxs2-peri-clock" - for PXs2/LD6b SoC.
-    "socionext,uniphier-ld11-peri-clock" - for LD11 SoC.
-    "socionext,uniphier-ld20-peri-clock" - for LD20 SoC.
-    "socionext,uniphier-pxs3-peri-clock" - for PXs3 SoC
-- #clock-cells: should be 1.
-
-Example:
-
-	perictrl@59820000 {
-		compatible = "socionext,uniphier-perictrl",
-			     "simple-mfd", "syscon";
-		reg = <0x59820000 0x200>;
-
-		clock {
-			compatible = "socionext,uniphier-ld11-peri-clock";
-			#clock-cells = <1>;
-		};
-
-		other nodes ...
-	};
-
-Provided clocks:
-
- 0: UART ch0
- 1: UART ch1
- 2: UART ch2
- 3: UART ch3
- 4: I2C ch0
- 5: I2C ch1
- 6: I2C ch2
- 7: I2C ch3
- 8: I2C ch4
- 9: I2C ch5
-10: I2C ch6
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
