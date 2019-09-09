Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F8EADF10
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Sep 2019 20:35:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k5Qp4OS0nkUzQqB5LLBtSJ5Y3/RxxmnGInhoWx0pwmA=; b=W6qagCCdkXt5AYKo6BdpYKgZX2
	DF0Hr9AtSfs21bwZ1V63kJkyXAkIKJZonS47g9VjpnR7ZXKxdkv4/tH6+C51rPO2DrzC4Uc/PqJv3
	NuKDMVTyx9inZh2HE5VXzwAccaWZfXZG9dW+aY85yAP1wGr1ggkUInqZuwjah3CMWzrCRpYH43XhR
	hF+fm4utmQJMNQABFuKwNBKQbNNTkCMkl5oj+cEpzSpeFm+B5dmwfPraOeCXkMNTivoatEjsrGwH8
	3X8SPl21L5VgWv0RIBNZJ/wJYPYHIocfhtJU6f2VlA4+uHsJthlvYwkNA1F0MhD3Gozc1YtnMkTLd
	1prpBXVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7OVu-0005DJ-Bc; Mon, 09 Sep 2019 18:35:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7OVW-0004zq-4d
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Sep 2019 18:35:23 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8356621924;
 Mon,  9 Sep 2019 18:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568054121;
 bh=f3ulxYMQ251eTpcR2jzC5NSbqNu5aS1zSMbuOorVhGE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YSTMb7x7r97T0Ks+pfIvlvyXiDpse7jcUdQfun5USL8Qf72zKmOdwYFxG/Og20NdR
 EwXkY3VwuOBg7At10VIafoG9bbUfiKlUAgMJOumyoulx2joqpTkvWFIHTHzlZzOTsC
 tSt1sJ4XmVj3WYasMaYq5rKxVce2vbsFlaFQDKWA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Thierry Reding <thierry.reding@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [RFC PATCH 2/2] dt-bindings: pwm: Convert Samsung PWM bindings to
 json-schema
Date: Mon,  9 Sep 2019 20:34:36 +0200
Message-Id: <20190909183436.9045-2-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190909183436.9045-1-krzk@kernel.org>
References: <20190909183436.9045-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_113522_217510_C3A036F7 
X-CRM114-Status: GOOD (  15.94  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org,
 Maciej Falkowski <m.falkowski@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-leds@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert Samsung PWM (S3C, S5P and Exynos SoCs) bindings to DT schema
format using json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 .../devicetree/bindings/pwm/pwm-samsung.txt   |  51 --------
 .../devicetree/bindings/pwm/pwm-samsung.yaml  | 111 ++++++++++++++++++
 2 files changed, 111 insertions(+), 51 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/pwm/pwm-samsung.txt
 create mode 100644 Documentation/devicetree/bindings/pwm/pwm-samsung.yaml

diff --git a/Documentation/devicetree/bindings/pwm/pwm-samsung.txt b/Documentation/devicetree/bindings/pwm/pwm-samsung.txt
deleted file mode 100644
index 5538de9c2007..000000000000
--- a/Documentation/devicetree/bindings/pwm/pwm-samsung.txt
+++ /dev/null
@@ -1,51 +0,0 @@
-* Samsung PWM timers
-
-Samsung SoCs contain PWM timer blocks which can be used for system clock source
-and clock event timers, as well as to drive SoC outputs with PWM signal. Each
-PWM timer block provides 5 PWM channels (not all of them can drive physical
-outputs - see SoC and board manual).
-
-Be aware that the clocksource driver supports only uniprocessor systems.
-
-Required properties:
-- compatible : should be one of following:
-    samsung,s3c2410-pwm - for 16-bit timers present on S3C24xx SoCs
-    samsung,s3c6400-pwm - for 32-bit timers present on S3C64xx SoCs
-    samsung,s5p6440-pwm - for 32-bit timers present on S5P64x0 SoCs
-    samsung,s5pc100-pwm - for 32-bit timers present on S5PC100, S5PV210,
-			  Exynos4210 rev0 SoCs
-    samsung,exynos4210-pwm - for 32-bit timers present on Exynos4210,
-                          Exynos4x12, Exynos5250 and Exynos5420 SoCs
-- reg: base address and size of register area
-- interrupts: list of timer interrupts (one interrupt per timer, starting at
-  timer 0)
-- clock-names: should contain all following required clock names:
-    - "timers" - PWM base clock used to generate PWM signals,
-  and any subset of following optional clock names:
-    - "pwm-tclk0" - first external PWM clock source,
-    - "pwm-tclk1" - second external PWM clock source.
-  Note that not all IP variants allow using all external clock sources.
-  Refer to SoC documentation to learn which clock source configurations
-  are available.
-- clocks: should contain clock specifiers of all clocks, which input names
-  have been specified in clock-names property, in same order.
-- #pwm-cells: should be 3. See pwm.txt in this directory for a description of
-  the cells format. The only third cell flag supported by this binding is
-  PWM_POLARITY_INVERTED.
-
-Optional properties:
-- samsung,pwm-outputs: list of PWM channels used as PWM outputs on particular
-    platform - an array of up to 5 elements being indices of PWM channels
-    (from 0 to 4), the order does not matter.
-
-Example:
-	pwm@7f006000 {
-		compatible = "samsung,s3c6400-pwm";
-		reg = <0x7f006000 0x1000>;
-		interrupt-parent = <&vic0>;
-		interrupts = <23>, <24>, <25>, <27>, <28>;
-		clocks = <&clock 67>;
-		clock-names = "timers";
-		samsung,pwm-outputs = <0>, <1>;
-		#pwm-cells = <3>;
-	}
diff --git a/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
new file mode 100644
index 000000000000..90fb467bcdd5
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/pwm-samsung.yaml
@@ -0,0 +1,111 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pwm/pwm-samsung.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung SoC PWM timers
+
+maintainers:
+  - Thierry Reding <thierry.reding@gmail.com>
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+description: |+
+  Samsung SoCs contain PWM timer blocks which can be used for system clock source
+  and clock event timers, as well as to drive SoC outputs with PWM signal. Each
+  PWM timer block provides 5 PWM channels (not all of them can drive physical
+  outputs - see SoC and board manual).
+
+  Be aware that the clocksource driver supports only uniprocessor systems.
+
+allOf:
+  - $ref: pwm.yaml#
+
+properties:
+  compatible:
+    enum:
+      - samsung,s3c2410-pwm             # 16-bit, S3C24xx
+      - samsung,s3c6400-pwm             # 32-bit, S3C64xx
+      - samsung,s5p6440-pwm             # 32-bit, S5P64x0
+      - samsung,s5pc100-pwm             # 32-bit, S5PC100, S5PV210, Exynos4210 rev0 SoCs
+      - samsung,exynos4210-pwm          # 32-bit, Exynos
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    minItems: 1
+    maxItems: 3
+
+  clock-names:
+    description: |
+      Should contain all following required clock names:
+      - "timers" - PWM base clock used to generate PWM signals,
+      and any subset of following optional clock names:
+      - "pwm-tclk0" - first external PWM clock source,
+      - "pwm-tclk1" - second external PWM clock source.
+      Note that not all IP variants allow using all external clock sources.
+      Refer to SoC documentation to learn which clock source configurations
+      are available.
+    oneOf:
+      - items:
+        - const: "timers"
+      - items:
+        - const: "timers"
+        - const: "pwm-tclk0"
+      - items:
+        - const: "timers"
+        - const: "pwm-tclk1"
+      - items:
+        - const: "timers"
+        - const: "pwm-tclk0"
+        - const: "pwm-tclk1"
+
+  interrupts:
+    description:
+      One interrupt per timer, starting at timer 0.
+    minItems: 1
+    maxItems: 5
+
+  "#pwm-cells":
+    description:
+      The only third cell flag supported by this binding
+      is PWM_POLARITY_INVERTED.
+    const: 3
+
+  samsung,pwm-outputs:
+    description:
+      A list of PWM channels used as PWM outputs on particular platform.
+      It is an array of up to 5 elements being indices of PWM channels
+      (from 0 to 4), the order does not matter.
+    # TODO: Values should not repeat
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32-array
+      # FIXME: min/max limit of items does not work
+      - items:
+          minItems: 1
+          maxItems: 5
+      - items:
+          minimum: 0
+          maximum: 4
+
+required:
+  - clocks
+  - clock-names
+  - compatible
+  - interrupts
+  - "#pwm-cells"
+  - reg
+
+examples:
+  - |
+    pwm@7f006000 {
+      compatible = "samsung,s3c6400-pwm";
+      reg = <0x7f006000 0x1000>;
+      interrupt-parent = <&vic0>;
+      interrupts = <23>, <24>, <25>, <27>, <28>;
+      clocks = <&clock 67>;
+      clock-names = "timers";
+      samsung,pwm-outputs = <0>, <1>;
+      #pwm-cells = <3>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
