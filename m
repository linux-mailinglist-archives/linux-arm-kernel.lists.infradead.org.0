Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 898FF9B2A3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:55:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BUkLRAH3jFQ7qrW6N9kFvLDJxzGK6yQHIp1ODqUAg8k=; b=rtCzKHbIluD9iloaRdhOoYhXIX
	20/DmLMtbeNc9p7mCnHG8R2+9wzWk3UGj7hqUv9sZLBRlWbGLDqXiAr6MAt9TVqkTNaID5JJ1EPqA
	YYYxplpoL2u9RI5+fZi0Oa7njo4JdLEe3BC357wEvfM4K3PrGVvw6OvpFCl3KGAzMwTA31pC8Qp56
	WEzEXWCse1YzO5qRDE15v7xCvrhNTa3ffUgg32ZYNXh7zrhZbOKxVBVCPAz+kyzlt/BCL3wayFGwH
	d7y2lkIX8hEWBTrhp6aHRyU6Of6ZhJAxfpj1VV/Kq0ekihwkIYnAkajJUj6o/ZVpgtxngvnx1NdWa
	cVR2XdXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Ayg-000496-65; Fri, 23 Aug 2019 14:55:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Axh-0002AB-Kp
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:54:50 +0000
Received: from localhost.localdomain (unknown [194.230.147.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AC9F423405;
 Fri, 23 Aug 2019 14:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566572085;
 bh=8ZNuTPR8lnOvQKNrqCBfV8AQYGQe/XzdD/JtsnROyqc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=whAQMcZ/CGhnF6m3bK1UmcyIH/LBI2sIkC5VwIQYOL/Oz3HiJ7PbumBx22LzK/65A
 XSs5CYSZSfZHUG47V9O+F8R/zX2p0QaV46FgSOls3gV79A7Yzh1sCD16Vm4tz29+Er
 rsHgt7xUepxdwNbR/1GraF0IdepaCV3D9XI716EA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Hartmut Knaack <knaack.h@gmx.de>, Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 =?UTF-8?q?Pawe=C5=82=20Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-rtc@vger.kernel.org
Subject: [RFC 5/9] dt-bindings: arm: samsung: Convert Exynos PMU bindings to
 json-schema
Date: Fri, 23 Aug 2019 16:53:52 +0200
Message-Id: <20190823145356.6341-5-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190823145356.6341-1-krzk@kernel.org>
References: <20190823145356.6341-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_075445_947603_F84A1B85 
X-CRM114-Status: GOOD (  17.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Olof Johansson <olof@lixom.net>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 notify@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Samsung Exynos Power Management Unit (PMU) bindings to DT schema
format using json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 .../devicetree/bindings/arm/samsung/pmu.txt   | 72 --------------
 .../devicetree/bindings/arm/samsung/pmu.yaml  | 93 +++++++++++++++++++
 2 files changed, 93 insertions(+), 72 deletions(-)
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
index 000000000000..818c6f3488ef
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/samsung/pmu.yaml
@@ -0,0 +1,93 @@
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
+      list of clock names for particular CLKOUT mux inputs
+    # TODO: what is the maximum number of elements (mux inputs)?
+    minItems: 1
+    maxItems: 32
+    items:
+      - enum:
+          - clkout0
+          - clkout1
+          - clkout2
+          - clkout3
+          - clkout4
+          - clkout5
+          - clkout6
+          - clkout7
+          - clkout8
+          - clkout9
+          - clkout10
+          - clkout11
+          - clkout12
+          - clkout13
+          - clkout14
+          - clkout15
+          - clkout16
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
+    # TODO: must be identical to the that of the parent interrupt controller.
+    const: 3
+
+  # TODO: Mark interrupt-controller and #interrupt-cells as required, if one is present
+  # TODO: nodes defining the restart and poweroff syscon children
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
+       interrupt-parent = <&gic>;
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
