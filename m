Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A62125CEF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 09:46:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tt8MPYvNAY0OwE1v5UiPuqzOhJJzdyU661xybl4zXh4=; b=DmaqTZp5P9n/37
	orLHLvYxRdp54pVaa0g34bCbcjiz1iTcSiMf+1pD3QPTjaF3f04O3A6usWZwK6tVRUnL/Efhy33sL
	SHzgTrSCCBCSbu7P4QJdsPkC39mfoJYpTaPsTtXUraojAIGMeSoj6TG7xJoCFHgEukrA0B/QCAg+V
	RrjhPtH9EKR8ieiuZ1qLZ62YNcJy3swxeY6Pm6UgfDR7QO5GLVrei6KuKFrDpH2o57bG1ZngIMqb7
	Em2Oaslw71Fzu/gkpoUyAKrjBFjasD4uCFg+44bvqF0iocwZiAfMLboeuXYE/SvxQkxq3rFX4P5H/
	Do/8c8IdLNFF2WqXj/tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihrS8-0002AO-PU; Thu, 19 Dec 2019 08:46:36 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihrS0-00029r-Mm
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 08:46:30 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2D5104BD3;
 Thu, 19 Dec 2019 03:46:27 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 19 Dec 2019 03:46:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=kwIeKSI5y8LRyccmLU4l+PItMC
 5Ob0B+YfxBbkdxplM=; b=B///1u4mZgsSJV1c4Fsr1RK9D9cR2ZGXCnARMJDYsg
 7QT9+K7UZo7vihHj65P4F9/wA4hY9zzIDGB5+fmje5dynN9EoesugbdEVeLUkDiJ
 o/P2bD/3wdjuQE/L3rUs/2B9cOc0xNJ0GFOaYGM4tFBKDDGhB+kojLj45CAZgVFx
 CU+WlIhK2jEllC3+R65WsocQV4iD38u138mU95LRmDb8lOSeLa9UYeYMKxzN9ZpL
 1wHEElz5IW7ZNJhv2CcpjiwxrjOoKuC2iTOHD81EGhB4zgz7gJd5lw0Ln8wFDsVF
 W2x+ctfTRcvPTu7bArNRdMwhj2/K2BqsVAw/jHSEDF4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=kwIeKSI5y8LRyccmL
 U4l+PItMC5Ob0B+YfxBbkdxplM=; b=fMFlG8wxGxX+CGHfIcSriWyO0sYHu1GZ5
 1340hE5bb02TVJo/nv/Z+HNQM/Eu5ENqRo2mLq6NUpZrcEOQoNJMyrgh7h67A2BQ
 yQ/+DOcyOUPMyIvs6+Ed8zumD4+rIQTe6Rh1T6TNeCsn7ONfALo9l5vPVU2dW5eP
 xAFU02zPrkFj5bbour888yrYmJoBqXTfqBUups/zA/jr7ppA033t2xHbbMf9yUqh
 6xcsFTtZPTRjmY96AFUL5NyeDZQWzP6htiChS6zthklvxfpsCl55/tWB1rGaCtnj
 2yVQZ1Pn7jtvt8eRTSS40+M1dLeQvS5dnJOVb5MWBSXagNxbL1TvQ==
X-ME-Sender: <xms:4jj7XTI3wc1ib4If-8TTG79WzBjR4U9NB46ij0kbFgYdOkAZpNqbKg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvddutddguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enogevohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffo
 ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
 himhgvsegtvghrnhhordhtvggthheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdr
 ohhrghenucfkphepledtrdekledrieekrdejieenucfrrghrrghmpehmrghilhhfrhhomh
 epmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlhhushhtvghrufhiiigvpedu
X-ME-Proxy: <xmx:4jj7XerD6iiCsZG2r_57QaPz78VqJ8bOqy9IDx2tfojykXJQTLQkcQ>
 <xmx:4jj7XRy9VWli1bPwjUlwLOq7UU5ENQF7EWGtuMxbOU9FZUKqQfyFfA>
 <xmx:4jj7Xae26c5Wnesgn6ZHXtqknqMIaSKHRoQn6_ZsEZFUCbiUR2Qw9Q>
 <xmx:4zj7XdfUdY1gFJlz3ftbJHtjUB6BZ0APXdcV9vLi4BOGi7jL0xWlOA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 11D1380063;
 Thu, 19 Dec 2019 03:46:25 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: tiny.windzz@gmail.com, vireshk@kernel.org, sboyd@kernel.org,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH] dt-bindings: opp: Convert Allwinner H6 OPP to a schema
Date: Thu, 19 Dec 2019 09:46:23 +0100
Message-Id: <20191219084623.944458-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_004628_882772_FBF713A7 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner H6 SoCs use binning in order to provide binning to
cpufreq which is supported in Linux, with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../allwinner,sun50i-h6-operating-points.yaml | 129 ++++++++++++++
 .../bindings/opp/sun50i-nvmem-cpufreq.txt     | 167 ------------------
 2 files changed, 129 insertions(+), 167 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/opp/allwinner,sun50i-h6-operating-points.yaml
 delete mode 100644 Documentation/devicetree/bindings/opp/sun50i-nvmem-cpufreq.txt

diff --git a/Documentation/devicetree/bindings/opp/allwinner,sun50i-h6-operating-points.yaml b/Documentation/devicetree/bindings/opp/allwinner,sun50i-h6-operating-points.yaml
new file mode 100644
index 000000000000..aef87a33a7c9
--- /dev/null
+++ b/Documentation/devicetree/bindings/opp/allwinner,sun50i-h6-operating-points.yaml
@@ -0,0 +1,129 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/opp/allwinner,sun50i-h6-operating-points.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner H6 CPU OPP Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+description: |
+  For some SoCs, the CPU frequency subset and voltage value of each
+  OPP varies based on the silicon variant in use. Allwinner Process
+  Voltage Scaling Tables defines the voltage and frequency value based
+  on the speedbin blown in the efuse combination. The
+  sun50i-cpufreq-nvmem driver reads the efuse value from the SoC to
+  provide the OPP framework with required information.
+
+properties:
+  compatible:
+    const: allwinner,sun50i-h6-operating-points
+
+  nvmem-cells:
+    description: |
+      A phandle pointing to a nvmem-cells node representing the efuse
+      registers that has information about the speedbin that is used
+      to select the right frequency/voltage value pair. Please refer
+      the for nvmem-cells bindings
+      Documentation/devicetree/bindings/nvmem/nvmem.txt and also
+      examples below.
+
+required:
+  - compatible
+  - nvmem-cells
+
+patternProperties:
+  "opp-[0-9]+":
+    type: object
+
+    properties:
+      opp-hz: true
+
+    patternProperties:
+      "opp-microvolt-.*": true
+
+    required:
+      - opp-hz
+      - opp-microvolt-speed0
+      - opp-microvolt-speed1
+      - opp-microvolt-speed2
+
+    unevaluatedProperties: false
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    cpu_opp_table: opp-table {
+        compatible = "allwinner,sun50i-h6-operating-points";
+        nvmem-cells = <&speedbin_efuse>;
+        opp-shared;
+
+        opp-480000000 {
+            clock-latency-ns = <244144>; /* 8 32k periods */
+            opp-hz = /bits/ 64 <480000000>;
+
+            opp-microvolt-speed0 = <880000>;
+            opp-microvolt-speed1 = <820000>;
+            opp-microvolt-speed2 = <800000>;
+        };
+
+        opp-720000000 {
+            clock-latency-ns = <244144>; /* 8 32k periods */
+            opp-hz = /bits/ 64 <720000000>;
+
+            opp-microvolt-speed0 = <880000>;
+            opp-microvolt-speed1 = <820000>;
+            opp-microvolt-speed2 = <800000>;
+        };
+
+        opp-816000000 {
+            clock-latency-ns = <244144>; /* 8 32k periods */
+            opp-hz = /bits/ 64 <816000000>;
+
+            opp-microvolt-speed0 = <880000>;
+            opp-microvolt-speed1 = <820000>;
+            opp-microvolt-speed2 = <800000>;
+        };
+
+        opp-888000000 {
+            clock-latency-ns = <244144>; /* 8 32k periods */
+            opp-hz = /bits/ 64 <888000000>;
+
+            opp-microvolt-speed0 = <940000>;
+            opp-microvolt-speed1 = <820000>;
+            opp-microvolt-speed2 = <800000>;
+        };
+
+        opp-1080000000 {
+            clock-latency-ns = <244144>; /* 8 32k periods */
+            opp-hz = /bits/ 64 <1080000000>;
+
+            opp-microvolt-speed0 = <1060000>;
+            opp-microvolt-speed1 = <880000>;
+            opp-microvolt-speed2 = <840000>;
+        };
+
+        opp-1320000000 {
+            clock-latency-ns = <244144>; /* 8 32k periods */
+            opp-hz = /bits/ 64 <1320000000>;
+
+            opp-microvolt-speed0 = <1160000>;
+            opp-microvolt-speed1 = <940000>;
+            opp-microvolt-speed2 = <900000>;
+        };
+
+        opp-1488000000 {
+            clock-latency-ns = <244144>; /* 8 32k periods */
+            opp-hz = /bits/ 64 <1488000000>;
+
+            opp-microvolt-speed0 = <1160000>;
+            opp-microvolt-speed1 = <1000000>;
+            opp-microvolt-speed2 = <960000>;
+        };
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/opp/sun50i-nvmem-cpufreq.txt b/Documentation/devicetree/bindings/opp/sun50i-nvmem-cpufreq.txt
deleted file mode 100644
index 7deae57a587b..000000000000
--- a/Documentation/devicetree/bindings/opp/sun50i-nvmem-cpufreq.txt
+++ /dev/null
@@ -1,167 +0,0 @@
-Allwinner Technologies, Inc. NVMEM CPUFreq and OPP bindings
-===================================
-
-For some SoCs, the CPU frequency subset and voltage value of each OPP
-varies based on the silicon variant in use. Allwinner Process Voltage
-Scaling Tables defines the voltage and frequency value based on the
-speedbin blown in the efuse combination. The sun50i-cpufreq-nvmem driver
-reads the efuse value from the SoC to provide the OPP framework with
-required information.
-
-Required properties:
---------------------
-In 'cpus' nodes:
-- operating-points-v2: Phandle to the operating-points-v2 table to use.
-
-In 'operating-points-v2' table:
-- compatible: Should be
-	- 'allwinner,sun50i-h6-operating-points'.
-- nvmem-cells: A phandle pointing to a nvmem-cells node representing the
-		efuse registers that has information about the speedbin
-		that is used to select the right frequency/voltage value
-		pair. Please refer the for nvmem-cells bindings
-		Documentation/devicetree/bindings/nvmem/nvmem.txt and
-		also examples below.
-
-In every OPP node:
-- opp-microvolt-<name>: Voltage in micro Volts.
-			At runtime, the platform can pick a <name> and
-			matching opp-microvolt-<name> property.
-			[See: opp.txt]
-			HW:		<name>:
-			sun50i-h6	speed0 speed1 speed2
-
-Example 1:
----------
-
-	cpus {
-		#address-cells = <1>;
-		#size-cells = <0>;
-
-		cpu0: cpu@0 {
-			compatible = "arm,cortex-a53";
-			device_type = "cpu";
-			reg = <0>;
-			enable-method = "psci";
-			clocks = <&ccu CLK_CPUX>;
-			clock-latency-ns = <244144>; /* 8 32k periods */
-			operating-points-v2 = <&cpu_opp_table>;
-			#cooling-cells = <2>;
-		};
-
-		cpu1: cpu@1 {
-			compatible = "arm,cortex-a53";
-			device_type = "cpu";
-			reg = <1>;
-			enable-method = "psci";
-			clocks = <&ccu CLK_CPUX>;
-			clock-latency-ns = <244144>; /* 8 32k periods */
-			operating-points-v2 = <&cpu_opp_table>;
-			#cooling-cells = <2>;
-		};
-
-		cpu2: cpu@2 {
-			compatible = "arm,cortex-a53";
-			device_type = "cpu";
-			reg = <2>;
-			enable-method = "psci";
-			clocks = <&ccu CLK_CPUX>;
-			clock-latency-ns = <244144>; /* 8 32k periods */
-			operating-points-v2 = <&cpu_opp_table>;
-			#cooling-cells = <2>;
-		};
-
-		cpu3: cpu@3 {
-			compatible = "arm,cortex-a53";
-			device_type = "cpu";
-			reg = <3>;
-			enable-method = "psci";
-			clocks = <&ccu CLK_CPUX>;
-			clock-latency-ns = <244144>; /* 8 32k periods */
-			operating-points-v2 = <&cpu_opp_table>;
-			#cooling-cells = <2>;
-		};
-        };
-
-        cpu_opp_table: opp_table {
-                compatible = "allwinner,sun50i-h6-operating-points";
-                nvmem-cells = <&speedbin_efuse>;
-                opp-shared;
-
-                opp@480000000 {
-                        clock-latency-ns = <244144>; /* 8 32k periods */
-                        opp-hz = /bits/ 64 <480000000>;
-
-                        opp-microvolt-speed0 = <880000>;
-                        opp-microvolt-speed1 = <820000>;
-                        opp-microvolt-speed2 = <800000>;
-                };
-
-                opp@720000000 {
-                        clock-latency-ns = <244144>; /* 8 32k periods */
-                        opp-hz = /bits/ 64 <720000000>;
-
-                        opp-microvolt-speed0 = <880000>;
-                        opp-microvolt-speed1 = <820000>;
-                        opp-microvolt-speed2 = <800000>;
-                };
-
-                opp@816000000 {
-                        clock-latency-ns = <244144>; /* 8 32k periods */
-                        opp-hz = /bits/ 64 <816000000>;
-
-                        opp-microvolt-speed0 = <880000>;
-                        opp-microvolt-speed1 = <820000>;
-                        opp-microvolt-speed2 = <800000>;
-                };
-
-                opp@888000000 {
-                        clock-latency-ns = <244144>; /* 8 32k periods */
-                        opp-hz = /bits/ 64 <888000000>;
-
-                        opp-microvolt-speed0 = <940000>;
-                        opp-microvolt-speed1 = <820000>;
-                        opp-microvolt-speed2 = <800000>;
-                };
-
-                opp@1080000000 {
-                        clock-latency-ns = <244144>; /* 8 32k periods */
-                        opp-hz = /bits/ 64 <1080000000>;
-
-                        opp-microvolt-speed0 = <1060000>;
-                        opp-microvolt-speed1 = <880000>;
-                        opp-microvolt-speed2 = <840000>;
-                };
-
-                opp@1320000000 {
-                        clock-latency-ns = <244144>; /* 8 32k periods */
-                        opp-hz = /bits/ 64 <1320000000>;
-
-                        opp-microvolt-speed0 = <1160000>;
-                        opp-microvolt-speed1 = <940000>;
-                        opp-microvolt-speed2 = <900000>;
-                };
-
-                opp@1488000000 {
-                        clock-latency-ns = <244144>; /* 8 32k periods */
-                        opp-hz = /bits/ 64 <1488000000>;
-
-                        opp-microvolt-speed0 = <1160000>;
-                        opp-microvolt-speed1 = <1000000>;
-                        opp-microvolt-speed2 = <960000>;
-                };
-        };
-....
-soc {
-....
-	sid: sid@3006000 {
-		compatible = "allwinner,sun50i-h6-sid";
-		reg = <0x03006000 0x400>;
-		#address-cells = <1>;
-		#size-cells = <1>;
-		....
-		speedbin_efuse: speed@1c {
-			reg = <0x1c 4>;
-		};
-        };
-};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
