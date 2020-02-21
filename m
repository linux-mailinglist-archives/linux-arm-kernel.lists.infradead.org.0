Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F72166D2D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 03:56:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ppO4yqT5oP+odbpRep5n/5xoHP7IwPsQQgBHQTD4vBw=; b=ZDVNHZKFedWEhzpW/TNrbCy8mt
	iWofUQlFzF/w/DZC1+vGckEgGbVVYM+kOZuo5Msyq1vCiTDjdo8CwXJ3yiXQ20xvm3zln7rHEoOQV
	RivRfrMPTxKcGAeqsx3qO9yJ2xcslCgdFUSLrR+5thZombk6x6K0Zyb6XQ5XpEgSYipAEmWi7HgJS
	aDEUXCfY4r6lNQeg7nwDaeDGIk2DCLwJ36I4aOSqwzSR8L6O6o2g5BuCAoP0J5V9DhypBSlYZpd78
	EoybSE9EU7E7Du/xC7DwBIy2Sus/D3TQDM5EG+Lp5bmZxhmCexJAV8ZGsOIye4esfJi01yaq1ER1a
	vLSqzJbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4yU3-0000zE-8I; Fri, 21 Feb 2020 02:56:07 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4yTt-0000yY-MA
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 02:55:59 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id 01L2tdO7023920;
 Fri, 21 Feb 2020 11:55:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 01L2tdO7023920
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582253741;
 bh=Wm9EZBLQ6fa2VaFPNXP/gUS5cdwkPG2Nxsj1pxgGwCg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=D2m8R7VOUNi1oB2rHGL6R82/XRsEFsNwTSUHNZH54JCt2yk4yEIzM8PK24keQet1a
 HwvIdoxtjRZ/s3sSquWvW8HITHAk/H4Nnz+VOE2HwSPlDsvcvZbUo2eYaXumWzd+2q
 NQiVc1av5hrXDBif1esdeDxNeLxEZhu1LBwbIL33Le79Fy9Buip8Yw9caIhJBHLae6
 newctF6gkRPR1iDaAr/8dnpMQ0eo3sSOsCd00dxq7mxs4KxlCWQm8X87zdTne/9Tyb
 G0FerbpMIkeSU1fuZKJSu4xD9PmZ+XuLrzD2IL1Lyj2ubPtpoo4n4hpOgnjEfcrUhV
 cgRKy5GWBgrlg==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/2] dt-bindings: i2c: Convert UniPhier FI2C controller to
 json-schema
Date: Fri, 21 Feb 2020 11:55:34 +0900
Message-Id: <20200221025535.30311-2-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200221025535.30311-1-yamada.masahiro@socionext.com>
References: <20200221025535.30311-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_185557_956984_CE6670AC 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.79 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.79 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-i2c@vger.kernel.org,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the UniPhier FIFO-builtin I2C (a.k.a. FIFO) controller binding
to DT schema format.

There are two types of I2C controllers used on the UniPhier platform.
This is the new one with FIFO support, which is used on the Pro4 SoC
or newer.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 .../bindings/i2c/i2c-uniphier-f.txt           | 25 ----------
 .../bindings/i2c/socionext,uniphier-fi2c.yaml | 50 +++++++++++++++++++
 2 files changed, 50 insertions(+), 25 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-uniphier-f.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/socionext,uniphier-fi2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/i2c-uniphier-f.txt b/Documentation/devicetree/bindings/i2c/i2c-uniphier-f.txt
deleted file mode 100644
index 27fc6f8c798b..000000000000
--- a/Documentation/devicetree/bindings/i2c/i2c-uniphier-f.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-UniPhier I2C controller (FIFO-builtin)
-
-Required properties:
-- compatible: should be "socionext,uniphier-fi2c".
-- #address-cells: should be 1.
-- #size-cells: should be 0.
-- reg: offset and length of the register set for the device.
-- interrupts: a single interrupt specifier.
-- clocks: phandle to the input clock.
-
-Optional properties:
-- clock-frequency: desired I2C bus frequency in Hz.  The maximum supported
-  value is 400000.  Defaults to 100000 if not specified.
-
-Examples:
-
-	i2c0: i2c@58780000 {
-		compatible = "socionext,uniphier-fi2c";
-		reg = <0x58780000 0x80>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		interrupts = <0 41 4>;
-		clocks = <&i2c_clk>;
-		clock-frequency = <100000>;
-	};
diff --git a/Documentation/devicetree/bindings/i2c/socionext,uniphier-fi2c.yaml b/Documentation/devicetree/bindings/i2c/socionext,uniphier-fi2c.yaml
new file mode 100644
index 000000000000..15abc022968e
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/socionext,uniphier-fi2c.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/socionext,uniphier-fi2c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: UniPhier I2C controller (FIFO-builtin)
+
+maintainers:
+  - Masahiro Yamada <yamada.masahiro@socionext.com>
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+properties:
+  compatible:
+    const: socionext,uniphier-fi2c
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
+  clock-frequency:
+    minimum: 100000
+    maximum: 400000
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - interrupts
+  - clocks
+
+examples:
+  - |
+    i2c0: i2c@58780000 {
+        compatible = "socionext,uniphier-fi2c";
+        reg = <0x58780000 0x80>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        interrupts = <0 41 4>;
+        clocks = <&i2c_clk>;
+        clock-frequency = <100000>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
