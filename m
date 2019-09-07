Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C667AC5D8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 11:23:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3INfwAlYIa3DaA0l7aK+q79OGByxRc3hY7nFCTPKuR8=; b=ZeQzhBTKWqI2fF
	9vHjjZl3SSNzCS6zaE15ILwF6LNgb/Xq6dPnrg9nEgOU3RObRc7cuwqSPpiV6t15DKELUng/HxIzS
	epsPaaPPExkktsZ/5K4+O2qygAzaG2lAICH8P/7Bp+R8MHNiP2L7pWMBQBV84dmaSFidinqe0bESy
	Zxn2BuwUpQJIN1b/Yz8k0LuShE1SARRGitbPOG51rNZZOhOHG7nTjVJGVB+f6ef64Hd/KzjMzzlPo
	+1RbK6bMyKjA3J68sAxlYUPAM5qUyfI8BYewGRbGePoDeaUuGOn1Ds4U1l0M5bzwt/n6sLdf1aZU6
	YXFyDf/kC7/n3dlnZc/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6Wwc-0004UH-Mk; Sat, 07 Sep 2019 09:23:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6Wtq-0002sa-A4
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 09:20:56 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC13921924;
 Sat,  7 Sep 2019 09:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567848053;
 bh=jtZIAb01jFd5OEXWWCtF7hO8I4TX1Cq5qgbqEuJlw8M=;
 h=From:To:Subject:Date:In-Reply-To:References:From;
 b=ejjkfJP9UAoT2G04m5AgNVrchJ8p/ffwvu0VWJJtRoISOd9TlKXvtE+PbFK6A9l6I
 E4an7YoEZoBXuZYKDhv4YrKHBUwbBo1N0hy6lWbVQkC0jvAjLxVtzr1z/bzppYGoq7
 Eo5YxbtUN1qgSGTJ+822D7D+oD9BUST2bHNaDrWo=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Sebastian Reichel <sre@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 =?UTF-8?q?Pawe=C5=82=20Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rtc@vger.kernel.org
Subject: [PATCH v2 07/11] dt-bindings: arm: samsung: Convert Exynos PMU
 bindings to json-schema
Date: Sat,  7 Sep 2019 11:20:03 +0200
Message-Id: <20190907092007.9946-7-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190907092007.9946-1-krzk@kernel.org>
References: <20190907092007.9946-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_022054_964787_4DCC19BD 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Samsung Exynos Power Management Unit (PMU) bindings to DT schema
format using json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. Fix clock-names to match all elements against schema (any number of
   any clkoutN values).
   This currently fails:
       properties:clock-names:items: {'enum': ['clkout0', 'clkout1', 'clkout2',
       'clkout3', 'clkout4', 'clkout5', 'clkout6', 'clkout7', 'clkout8',
       'clkout9', 'clkout10', 'clkout11', 'clkout12', 'clkout13', 'clkout14',
       'clkout15', 'clkout16']} is not of type 'array

2. Add syscon reboot and poweroff nodes.
---
 .../devicetree/bindings/arm/samsung/pmu.txt   |  72 -----------
 .../devicetree/bindings/arm/samsung/pmu.yaml  | 117 ++++++++++++++++++
 2 files changed, 117 insertions(+), 72 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/samsung/pmu.txt
 create mode 100644 Documentation/devicetree/bindings/arm/samsung/pmu.yaml

diff --git a/Documentation/devicetree/bindings/arm/samsung/pmu.txt b/Documentation/devicetree/bindings/arm/samsung/pmu.txt
deleted file mode 100644
index 433bfd7593ac..000000000000
--- a/Documentation/devicetree/bindings/arm/samsung/pmu.txt
+++ /dev/null
@@ -1,72 +0,0 @@
-SAMSUNG Exynos SoC series PMU Registers
-
-Properties:
- - compatible : should contain two values. First value must be one from following list:
-		   - "samsung,exynos3250-pmu" - for Exynos3250 SoC,
-		   - "samsung,exynos4210-pmu" - for Exynos4210 SoC,
-		   - "samsung,exynos4412-pmu" - for Exynos4412 SoC,
-		   - "samsung,exynos5250-pmu" - for Exynos5250 SoC,
-		   - "samsung,exynos5260-pmu" - for Exynos5260 SoC.
-		   - "samsung,exynos5410-pmu" - for Exynos5410 SoC,
-		   - "samsung,exynos5420-pmu" - for Exynos5420 SoC.
-		   - "samsung,exynos5433-pmu" - for Exynos5433 SoC.
-		   - "samsung,exynos7-pmu" - for Exynos7 SoC.
-		second value must be always "syscon".
-
- - reg : offset and length of the register set.
-
- - #clock-cells : must be <1>, since PMU requires once cell as clock specifier.
-		The single specifier cell is used as index to list of clocks
-		provided by PMU, which is currently:
-			0 : SoC clock output (CLKOUT pin)
-
- - clock-names : list of clock names for particular CLKOUT mux inputs in
-		following format:
-			"clkoutN", where N is a decimal number corresponding to
-			CLKOUT mux control bits value for given input, e.g.
-				"clkout0", "clkout7", "clkout15".
-
- - clocks : list of phandles and specifiers to all input clocks listed in
-		clock-names property.
-
-Optional properties:
-
-Some PMUs are capable of behaving as an interrupt controller (mostly
-to wake up a suspended PMU). In which case, they can have the
-following properties:
-
-- interrupt-controller: indicate that said PMU is an interrupt controller
-
-- #interrupt-cells: must be identical to the that of the parent interrupt
-  controller.
-
-
-Optional nodes:
-
-- nodes defining the restart and poweroff syscon children
-
-
-Example :
-pmu_system_controller: system-controller@10040000 {
-	compatible = "samsung,exynos5250-pmu", "syscon";
-	reg = <0x10040000 0x5000>;
-	interrupt-controller;
-	#interrupt-cells = <3>;
-	interrupt-parent = <&gic>;
-	#clock-cells = <1>;
-	clock-names = "clkout0", "clkout1", "clkout2", "clkout3",
-			"clkout4", "clkout8", "clkout9";
-	clocks = <&clock CLK_OUT_DMC>, <&clock CLK_OUT_TOP>,
-		<&clock CLK_OUT_LEFTBUS>, <&clock CLK_OUT_RIGHTBUS>,
-		<&clock CLK_OUT_CPU>, <&clock CLK_XXTI>,
-		<&clock CLK_XUSBXTI>;
-};
-
-Example of clock consumer :
-
-usb3503: usb3503@8 {
-	/* ... */
-	clock-names = "refclk";
-	clocks = <&pmu_system_controller 0>;
-	/* ... */
-};
diff --git a/Documentation/devicetree/bindings/arm/samsung/pmu.yaml b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
new file mode 100644
index 000000000000..a5a02f8237fb
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
@@ -0,0 +1,117 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/samsung/pmu.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung Exynos SoC series Power Management Unit (PMU)
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - samsung,exynos3250-pmu
+          - samsung,exynos4210-pmu
+          - samsung,exynos4412-pmu
+          - samsung,exynos5250-pmu
+          - samsung,exynos5260-pmu
+          - samsung,exynos5410-pmu
+          - samsung,exynos5420-pmu
+          - samsung,exynos5433-pmu
+          - samsung,exynos7-pmu
+      - const: syscon
+
+  reg:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 1
+
+  clock-names:
+    description:
+      List of clock names for particular CLKOUT mux inputs
+    minItems: 1
+    maxItems: 32
+    items:
+      enum:
+        - clkout0
+        - clkout1
+        - clkout2
+        - clkout3
+        - clkout4
+        - clkout5
+        - clkout6
+        - clkout7
+        - clkout8
+        - clkout9
+        - clkout10
+        - clkout11
+        - clkout12
+        - clkout13
+        - clkout14
+        - clkout15
+        - clkout16
+        - clkout17
+        - clkout18
+        - clkout19
+        - clkout20
+        - clkout21
+        - clkout22
+        - clkout23
+        - clkout24
+        - clkout25
+        - clkout26
+        - clkout27
+        - clkout28
+        - clkout29
+        - clkout30
+        - clkout31
+
+  clocks:
+    minItems: 1
+    maxItems: 32
+
+  interrupt-controller:
+    description:
+      Some PMUs are capable of behaving as an interrupt controller (mostly
+      to wake up a suspended PMU).
+
+  '#interrupt-cells':
+    description:
+      Must be identical to the that of the parent interrupt controller.
+    const: 3
+
+  syscon-poweroff:
+    $ref: "../../power/reset/syscon-poweroff.yaml#"
+    type: object
+    description:
+      Node for power off method
+
+  syscon-reboot:
+    $ref: "../../power/reset/syscon-reboot.yaml#"
+    type: object
+    description:
+      Node for reboot method
+
+required:
+  - compatible
+  - reg
+  - '#clock-cells'
+  - clock-names
+  - clocks
+
+examples:
+  - |
+    pmu_system_controller: system-controller@10040000 {
+      compatible = "samsung,exynos5250-pmu", "syscon";
+      reg = <0x10040000 0x5000>;
+      interrupt-controller;
+      #interrupt-cells = <3>;
+      interrupt-parent = <&gic>;
+      #clock-cells = <1>;
+      clock-names = "clkout16";
+      clocks = <&clock 0>; // CLK_FIN_PLL
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
