Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB20AC8DCA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 18:08:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QFSr3n5cWI53OeQ3UHafCmZ+8/6gs+VZzptA4wo08sk=; b=prBGD7NGcQ1qaO
	j4Ss0bA/LWxKq2C22pFg4ha7jkDiVjFfmZDZXJ/zWiSEytYYbDNq2neYSCmzK5cA2HNvpFDNiIG9r
	aUBGfwWtZW42pTD/9TG7keRTdXMiNGyVRDOHoe/MZFpjAbiD+N38ZECgp9169yMl6hxrCxiGDLfQg
	hEstjsblEZwRsga+nZpkIEmnvK8/VD9R1a2nF6bTa8dUyWNAc6yIIHzjPDVqvpiAevmfkg5H7zxpz
	WgNK52dr/r8J+2+Lvk01pj/ZvFcxzjASx5TU2M0gzyw2dla0pKlVHc7w92prrHEPKJLlxjY2DakG4
	qDmSJL9vK3YCOqFkWyVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFhAm-0002E4-8B; Wed, 02 Oct 2019 16:08:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFhAY-0002BT-HV
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 16:08:05 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 103BE21A4C;
 Wed,  2 Oct 2019 16:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570032482;
 bh=J9kAmUOB10/t7fTLkTz1mlbDgiv+TRuGOWFvZUNtgNg=;
 h=From:To:Subject:Date:From;
 b=pCgz4GjDBNXPxEehf+0JiRELjoO0FbTJxMmPJGoeWqq0uwlKXSrVEo0uk1y0maNq6
 oB0K/yIJropauxHqIgq/xXfq7K0uO9QvdhCm76Gm2BgJRehe2xbECsLDYoMyMNeBF6
 oFgTb3bsqOsURPyCoePxqIscwS7ZmJSBWafG8ZhU=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
 Sebastian Reichel <sre@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rtc@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: samsung: Indent examples with four spaces
Date: Wed,  2 Oct 2019 18:07:41 +0200
Message-Id: <20191002160744.11307-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_090802_618212_DE2E8BB2 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change the indentation of examples used in json-schema bindings from two
to four spaces as this makes the code easier to read and seems to be
preferred in other files.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 .../bindings/arm/samsung/exynos-chipid.yaml   |  4 +-
 .../bindings/iio/adc/samsung,exynos-adc.yaml  | 64 +++++++++----------
 .../bindings/power/reset/syscon-poweroff.yaml |  8 +--
 .../bindings/power/reset/syscon-reboot.yaml   |  8 +--
 .../devicetree/bindings/rtc/s3c-rtc.yaml      | 12 ++--
 5 files changed, 48 insertions(+), 48 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
index 9c573ad7dc7d..ce40adabb4e8 100644
--- a/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
+++ b/Documentation/devicetree/bindings/arm/samsung/exynos-chipid.yaml
@@ -20,6 +20,6 @@ properties:
 examples:
   - |
     chipid@10000000 {
-      compatible = "samsung,exynos4210-chipid";
-      reg = <0x10000000 0x100>;
+        compatible = "samsung,exynos4210-chipid";
+        reg = <0x10000000 0x100>;
     };
diff --git a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
index b4c6c26681d9..a0a9b909ac40 100644
--- a/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/samsung,exynos-adc.yaml
@@ -112,40 +112,40 @@ allOf:
 examples:
   - |
     adc: adc@12d10000 {
-      compatible = "samsung,exynos-adc-v1";
-      reg = <0x12d10000 0x100>;
-      interrupts = <0 106 0>;
-      #io-channel-cells = <1>;
-      io-channel-ranges;
-
-      clocks = <&clock 303>;
-      clock-names = "adc";
-
-      vdd-supply = <&buck5_reg>;
-      samsung,syscon-phandle = <&pmu_system_controller>;
-
-      /* NTC thermistor is a hwmon device */
-      ncp15wb473@0 {
-        compatible = "murata,ncp15wb473";
-        pullup-uv = <1800000>;
-        pullup-ohm = <47000>;
-        pulldown-ohm = <0>;
-        io-channels = <&adc 4>;
-      };
+        compatible = "samsung,exynos-adc-v1";
+        reg = <0x12d10000 0x100>;
+        interrupts = <0 106 0>;
+        #io-channel-cells = <1>;
+        io-channel-ranges;
+
+        clocks = <&clock 303>;
+        clock-names = "adc";
+
+        vdd-supply = <&buck5_reg>;
+        samsung,syscon-phandle = <&pmu_system_controller>;
+
+        /* NTC thermistor is a hwmon device */
+        ncp15wb473@0 {
+            compatible = "murata,ncp15wb473";
+            pullup-uv = <1800000>;
+            pullup-ohm = <47000>;
+            pulldown-ohm = <0>;
+            io-channels = <&adc 4>;
+          };
     };
 
   - |
     adc@126c0000 {
-      compatible = "samsung,exynos3250-adc";
-      reg = <0x126C0000 0x100>;
-      interrupts = <0 137 0>;
-      #io-channel-cells = <1>;
-      io-channel-ranges;
-
-      clocks = <&cmu 0>, // CLK_TSADC
-               <&cmu 1>; // CLK_SCLK_TSADC
-      clock-names = "adc", "sclk";
-
-      vdd-supply = <&buck5_reg>;
-      samsung,syscon-phandle = <&pmu_system_controller>;
+        compatible = "samsung,exynos3250-adc";
+        reg = <0x126C0000 0x100>;
+        interrupts = <0 137 0>;
+        #io-channel-cells = <1>;
+        io-channel-ranges;
+
+        clocks = <&cmu 0>, // CLK_TSADC
+                 <&cmu 1>; // CLK_SCLK_TSADC
+        clock-names = "adc", "sclk";
+
+        vdd-supply = <&buck5_reg>;
+        samsung,syscon-phandle = <&pmu_system_controller>;
     };
diff --git a/Documentation/devicetree/bindings/power/reset/syscon-poweroff.yaml b/Documentation/devicetree/bindings/power/reset/syscon-poweroff.yaml
index fb812937b534..520e07e6f21b 100644
--- a/Documentation/devicetree/bindings/power/reset/syscon-poweroff.yaml
+++ b/Documentation/devicetree/bindings/power/reset/syscon-poweroff.yaml
@@ -53,8 +53,8 @@ allOf:
 examples:
   - |
     poweroff {
-      compatible = "syscon-poweroff";
-      regmap = <&regmapnode>;
-      offset = <0x0>;
-      mask = <0x7a>;
+        compatible = "syscon-poweroff";
+        regmap = <&regmapnode>;
+        offset = <0x0>;
+        mask = <0x7a>;
     };
diff --git a/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml b/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml
index a7920f5eef79..d38006b1f1f4 100644
--- a/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml
+++ b/Documentation/devicetree/bindings/power/reset/syscon-reboot.yaml
@@ -53,8 +53,8 @@ allOf:
 examples:
   - |
     reboot {
-      compatible = "syscon-reboot";
-      regmap = <&regmapnode>;
-      offset = <0x0>;
-      mask = <0x1>;
+        compatible = "syscon-reboot";
+        regmap = <&regmapnode>;
+        offset = <0x0>;
+        mask = <0x1>;
     };
diff --git a/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml b/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
index 951a6a485709..95570d7e19eb 100644
--- a/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
+++ b/Documentation/devicetree/bindings/rtc/s3c-rtc.yaml
@@ -76,10 +76,10 @@ allOf:
 examples:
   - |
     rtc@10070000 {
-      compatible = "samsung,s3c6410-rtc";
-      reg = <0x10070000 0x100>;
-      interrupts = <0 44 4>, <0 45 4>;
-      clocks = <&clock 0>, // CLK_RTC
-               <&s2mps11_osc 0>; // S2MPS11_CLK_AP
-      clock-names = "rtc", "rtc_src";
+        compatible = "samsung,s3c6410-rtc";
+        reg = <0x10070000 0x100>;
+        interrupts = <0 44 4>, <0 45 4>;
+        clocks = <&clock 0>, // CLK_RTC
+                 <&s2mps11_osc 0>; // S2MPS11_CLK_AP
+        clock-names = "rtc", "rtc_src";
     };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
