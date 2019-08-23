Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 875429B2A6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MlxRrw3y4OiSFneGtfbKeJ+64QLnP1xtWeYwac6Prog=; b=eu3r18E7KyQsWuZSgyFht4vaQ6
	y9csDRbh7JO5BIp3IBzd4/1188KTd3bp5381uSF8QJSuIM+5lzLVl7DoXhDaOfyirBjSd7jRY43LN
	JZ3WdO3i+UjSzLrHPNRhc2FD51ITrN8o4VGYScZTGtSMBVVn0K3KcKmHQ2WGConlA+2x//jREVF3C
	bXlr3j89rJy0S9L/Djs/7aNj3ATUUiL9kjwPQcLg4xmKMbDA71+dBngpC5Sc1bj1rkFL5s6Uy14uL
	e/AA/9n8Sk9mA+aph5FRTSZDXPLKMZ4sceVikSJ/0oafE6gjYSJjbwT+d0X4vPdAHm7H+5HyZjrbI
	KLg98U1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Ayz-0004ah-W9; Fri, 23 Aug 2019 14:56:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Axr-0002KF-7X
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:54:57 +0000
Received: from localhost.localdomain (unknown [194.230.147.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 76BF2233A2;
 Fri, 23 Aug 2019 14:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566572094;
 bh=eolNUp8mZ/BwktdYdW3QiL10TCXKR9LKNhvDP3sPFYE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PqK37sp8eqbiycRUtPerYIm/4+VO7fdHc95T1yUguiuMeHaYEMLU+rDBcYzAfCfME
 W+NWzQ39liC5BB495Zxs4BjJhx1fnspvy3U22tzDKFSUD5PNZRTejFm/R7qcEd02+A
 R/gZ/vPrU9oeRGw8gFcU2+ja/FiS1CBOi9WHgBgQ=
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
Subject: [RFC 7/9] dt-bindings: rtc: s3c: Convert S3C/Exynos RTC bindings to
 json-schema
Date: Fri, 23 Aug 2019 16:53:54 +0200
Message-Id: <20190823145356.6341-7-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190823145356.6341-1-krzk@kernel.org>
References: <20190823145356.6341-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_075455_358551_6AE8CFD1 
X-CRM114-Status: GOOD (  17.67  )
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

Convert Samsung S3C/Exynos Real Time Clock bindings to DT schema format
using json-schema.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 .../devicetree/bindings/rtc/s3c-rtc.txt       | 31 ------
 .../devicetree/bindings/rtc/s3c-rtc.yaml      | 95 +++++++++++++++++++
 2 files changed, 95 insertions(+), 31 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rtc/s3c-rtc.txt
 create mode 100644 Documentation/devicetree/bindings/rtc/s3c-rtc.yaml

diff --git a/Documentation/devicetree/bindings/rtc/s3c-rtc.txt b/Documentation/devicetree/bindings/rtc/s3c-rtc.txt
deleted file mode 100644
index fdde63a5419c..000000000000
--- a/Documentation/devicetree/bindings/rtc/s3c-rtc.txt
+++ /dev/null
@@ -1,31 +0,0 @@
-* Samsung's S3C Real Time Clock controller
-
-Required properties:
-- compatible: should be one of the following.
-    * "samsung,s3c2410-rtc" - for controllers compatible with s3c2410 rtc.
-    * "samsung,s3c2416-rtc" - for controllers compatible with s3c2416 rtc.
-    * "samsung,s3c2443-rtc" - for controllers compatible with s3c2443 rtc.
-    * "samsung,s3c6410-rtc" - for controllers compatible with s3c6410 rtc.
-    * "samsung,exynos3250-rtc" - (deprecated) for controllers compatible with
-                                 exynos3250 rtc (use "samsung,s3c6410-rtc").
-- reg: physical base address of the controller and length of memory mapped
-  region.
-- interrupts: Two interrupt numbers to the cpu should be specified. First
-  interrupt number is the rtc alarm interrupt and second interrupt number
-  is the rtc tick interrupt. The number of cells representing a interrupt
-  depends on the parent interrupt controller.
-- clocks: Must contain a list of phandle and clock specifier for the rtc
-          clock and in the case of a s3c6410 compatible controller, also
-          a source clock.
-- clock-names: Must contain "rtc" and for a s3c6410 compatible controller,
-               a "rtc_src" sorted in the same order as the clocks property.
-
-Example:
-
-	rtc@10070000 {
-		compatible = "samsung,s3c6410-rtc";
-		reg = <0x10070000 0x100>;
-		interrupts = <44 0 45 0>;
-		clocks = <&clock CLK_RTC>, <&s2mps11_osc S2MPS11_CLK_AP>;
-		clock-names = "rtc", "rtc_src";
-	};
diff --git a/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml b/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
new file mode 100644
index 000000000000..44b021812a83
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
@@ -0,0 +1,95 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rtc/s3c-rtc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung S3C, S5P and Exynos Real Time Clock controller
+
+maintainers:
+  - Krzysztof Kozlowski <krzk@kernel.org>
+
+# Select also deprecated compatibles (for finding deprecate usage)
+select:
+  properties:
+    compatible:
+      items:
+        - enum:
+            - samsung,s3c2410-rtc
+            - samsung,s3c2416-rtc
+            - samsung,s3c2443-rtc
+            - samsung,s3c6410-rtc
+            # Deprecated, use samsung,s3c6410-rtc
+            - samsung,exynos3250-rtc
+  required:
+    - compatible
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - samsung,s3c2410-rtc
+          - samsung,s3c2416-rtc
+          - samsung,s3c2443-rtc
+          - samsung,s3c6410-rtc
+  reg:
+    maxItems: 1
+
+  clocks:
+    description:
+      Must contain a list of phandle and clock specifier for the rtc
+      clock and in the case of a s3c6410 compatible controller, also
+      a source clock.
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    description:
+      Must contain "rtc" and for a s3c6410 compatible controller,
+      a "rtc_src" sorted in the same order as the clocks property.
+    oneOf:
+      - items:
+          - const: rtc
+      - items:
+          # TODO: This can be in any order matching clocks, how to express it?
+          - const: rtc
+          - const: rtc_src
+
+  interrupts:
+    description:
+      Two interrupt numbers to the cpu should be specified. First
+      interrupt number is the rtc alarm interrupt and second interrupt number
+      is the rtc tick interrupt. The number of cells representing a interrupt
+      depends on the parent interrupt controller.
+    minItems: 2
+    maxItems: 2
+
+allOf:
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - samsung,s3c6410-rtc
+              - samsung,exynos3250-rtc
+
+    then:
+      properties:
+        clocks:
+          minItems: 2
+          maxItems: 2
+        clock-names:
+          items:
+          - const: rtc
+          - const: rtc_src
+
+examples:
+  - |
+    rtc@10070000 {
+      compatible = "samsung,s3c6410-rtc";
+      reg = <0x10070000 0x100>;
+      interrupts = <0 44 4>, <0 45 4>;
+      clocks = <&clock 0>, // CLK_RTC
+               <&s2mps11_osc 0>; // S2MPS11_CLK_AP
+      clock-names = "rtc", "rtc_src";
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
