Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 089441AB721
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 07:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FZ/XEoa7QRHa0RRm3wfZlTQiFN8WQj8tgh/AvGhK6IY=; b=jmZ
	h0rWU31UnyfsfER43SPbRiGj6Gy37m1tYMe2kTkMgbW/OkwDaG2quf+iHVrxo1HiMrEgMVQsATKMF
	5nPYhT+oJEadwzfmOeBazbvshxGsUOMCu95ZcPM0hLRLhWoz7XvcCDaX/A6jzBLSkonIqK6LiOfqo
	JPYA5DV7KrTXY9kT1bnOd+mifpTAG3lPfUZoIlKPGe2JkNeymVSI8xmysRbJpFLDBdSCR0z3b7NQG
	Mn/PL0O9dzgBvGzbvx7Qze3MeMg9noQ5wIGoGDf34a3ScPErDK/0pyCkK3LUrAmgJq5eo97QPwYNk
	/2+9t6UdJCzxj397cmrA3bKhMfv7Lig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOwpL-0004wy-3d; Thu, 16 Apr 2020 05:12:39 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOwpC-0004w0-Fv
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 05:12:32 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 16 Apr 2020 14:12:27 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id A338960057;
 Thu, 16 Apr 2020 14:12:27 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Thu, 16 Apr 2020 14:12:27 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id EA77F1A12AD;
 Thu, 16 Apr 2020 14:12:26 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>
Subject: [PATCH] dt-bindings: thermal: Convert UniPhier thermal monitor to
 json-schema
Date: Thu, 16 Apr 2020 14:12:15 +0900
Message-Id: <1587013935-21760-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_221230_881937_D41455FD 
X-CRM114-Status: GOOD (  15.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the UniPhier thermal monitor binding to DT schema format.

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 .../thermal/socionext,uniphier-thermal.yaml        | 57 +++++++++++++++++++
 .../bindings/thermal/uniphier-thermal.txt          | 65 ----------------------
 2 files changed, 57 insertions(+), 65 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/thermal/socionext,uniphier-thermal.yaml
 delete mode 100644 Documentation/devicetree/bindings/thermal/uniphier-thermal.txt

diff --git a/Documentation/devicetree/bindings/thermal/socionext,uniphier-thermal.yaml b/Documentation/devicetree/bindings/thermal/socionext,uniphier-thermal.yaml
new file mode 100644
index 0000000..bdddc5b
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/socionext,uniphier-thermal.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/thermal/socionext,uniphier-thermal.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Socionext UniPhier thermal monitor
+
+description: |
+  This describes the devicetree bindings for thermal monitor supported by
+  PVT(Process, Voltage and Temperature) monitoring unit implemented on
+  Socionext UniPhier SoCs.
+
+maintainers:
+  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
+
+properties:
+  compatible:
+    enum:
+      - socionext,uniphier-pxs2-thermal
+      - socionext,uniphier-ld20-thermal
+      - socionext,uniphier-pxs3-thermal
+
+  interrupts:
+    maxItems: 1
+
+  "#thermal-sensor-cells":
+    const: 0
+
+  socionext,tmod-calibration:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    description:
+      A pair of calibrated values referred from PVT, in case that the values
+      aren't set on SoC, like a reference board.
+
+required:
+  - compatible
+  - interrupts
+  - "#thermal-sensor-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    // The UniPhier thermal should be a subnode of a "syscon" compatible node.
+
+    sysctrl@61840000 {
+        compatible = "socionext,uniphier-ld20-sysctrl",
+                     "simple-mfd", "syscon";
+        reg = <0x61840000 0x10000>;
+
+        pvtctl: thermal {
+                compatible = "socionext,uniphier-ld20-thermal";
+                interrupts = <0 3 1>;
+                #thermal-sensor-cells = <0>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/thermal/uniphier-thermal.txt b/Documentation/devicetree/bindings/thermal/uniphier-thermal.txt
deleted file mode 100644
index ceb92a9..0000000
--- a/Documentation/devicetree/bindings/thermal/uniphier-thermal.txt
+++ /dev/null
@@ -1,65 +0,0 @@
-* UniPhier Thermal bindings
-
-This describes the devicetree bindings for thermal monitor supported by
-PVT(Process, Voltage and Temperature) monitoring unit implemented on Socionext
-UniPhier SoCs.
-
-Required properties:
-- compatible :
-  - "socionext,uniphier-pxs2-thermal" : For UniPhier PXs2 SoC
-  - "socionext,uniphier-ld20-thermal" : For UniPhier LD20 SoC
-  - "socionext,uniphier-pxs3-thermal" : For UniPhier PXs3 SoC
-- interrupts : IRQ for the temperature alarm
-- #thermal-sensor-cells : Should be 0. See ./thermal.txt for details.
-
-Optional properties:
-- socionext,tmod-calibration: A pair of calibrated values referred from PVT,
-                              in case that the values aren't set on SoC,
-                              like a reference board.
-
-Example:
-
-	sysctrl@61840000 {
-		compatible = "socionext,uniphier-ld20-sysctrl",
-			     "simple-mfd", "syscon";
-		reg = <0x61840000 0x10000>;
-		...
-		pvtctl: pvtctl {
-			compatible = "socionext,uniphier-ld20-thermal";
-			interrupts = <0 3 1>;
-			#thermal-sensor-cells = <0>;
-		};
-		...
-	};
-
-	thermal-zones {
-		cpu_thermal {
-			polling-delay-passive = <250>;	/* 250ms */
-			polling-delay = <1000>;		/* 1000ms */
-			thermal-sensors = <&pvtctl>;
-
-			trips {
-				cpu_crit: cpu_crit {
-					temperature = <110000>;	/* 110C */
-					hysteresis = <2000>;
-					type = "critical";
-				};
-				cpu_alert: cpu_alert {
-					temperature = <100000>;	/* 100C */
-					hysteresis = <2000>;
-					type = "passive";
-				};
-			};
-
-			cooling-maps {
-				map0 {
-					trip = <&cpu_alert>;
-					cooling-device = <&cpu0 (-1) (-1)>;
-				};
-				map1 {
-					trip = <&cpu_alert>;
-					cooling-device = <&cpu2 (-1) (-1)>;
-				};
-			};
-		};
-	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
