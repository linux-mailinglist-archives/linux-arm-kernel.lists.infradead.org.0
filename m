Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24523166D32
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 03:56:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sz9nDOI97R6Z6M1dcpVZ7dNKIMASxXyoihcLZdADHkU=; b=owg
	f8ayJLmGcOHnHyu2iYG0Oc7QbaxcMsSgXsw6lL0ICj0BZ09B/nKnm4cnBTO7RtnWY0uevNOYopxoX
	Tac8JUoFnLv1I2h+zRvtCXhO1G/XQ/YjsW05wnYkfRuWuc1vX+uEVXYgxEY484i4c0YQvrDNlvMPg
	wwPDGls/RrRcUayg1A+0mlwCPfDi74TNskBlftI9FYHDvbeLtwZhm13yM7sDMCYKN6uSJS9Pi1ZgF
	AkTbH/V9z9DrhQa52gEZGdQNBSu9IJq8ODM5OPY7Nsij3LHieQKGHcPB03/yh/kr/wjzdk7C+sBiR
	Ua9aDvIytM1zpCJ2vk6udkppKyODFsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4yUH-00017J-3w; Fri, 21 Feb 2020 02:56:21 +0000
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4yTt-0000yZ-MA
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 02:55:59 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-12.nifty.com with ESMTP id 01L2tdO6023920;
 Fri, 21 Feb 2020 11:55:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-12.nifty.com 01L2tdO6023920
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582253740;
 bh=vTMt2uEoaFnRBKMBfZKu0mlCweAUU3le5mGsF2+Dxrc=;
 h=From:To:Cc:Subject:Date:From;
 b=0AGAWm2hC1GtMKf5Lby8tvCdTujIg1GgmQko91NvqDiYxQqWiIVBfBIhdT3LY5GEX
 renzjQU5ZIwooALJrkcxAeHWHbZm1hNNIWDOwqLZxhZW//UA+dM4UmqZpQJ2d7Y2tk
 ArJhUz76R0cYi0WLnuKobHu2/W5pIf4RdHw3TXkH8h/avfaXIMYJhiWpRYnHIEbAPh
 1j0ilH4jzqfnA3DLoTe6qpm3kebAj9qvLF+JbdPmhng9Zz+7qjUazkPqZ3X7PpkmMw
 EBucMAwYNbS4XpZU8w8EtAy1H+cAfaqyEC2Px/bU6E/VZrEWFjJ98VGy3xiO6uIv2K
 uEf2Z5xKsySWg==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 1/2] dt-bindings: i2c: Convert UniPhier I2C controller to
 json-schema
Date: Fri, 21 Feb 2020 11:55:33 +0900
Message-Id: <20200221025535.30311-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_185557_954861_60CF04F3 
X-CRM114-Status: GOOD (  15.31  )
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

Convert the UniPhier I2C controller (FIFO-less) binding to DT schema
format.

There are two types of I2C controllers used on the UniPhier platform.
This is the legacy one without FIFO support, which is used on the
sLD8 SoC or older.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

When I search for a subsystem-common schema, I need to
look in both dt-schema project and the kernel tree.

For example,
the i2c-controller.yaml is located in the dt-schema project.
dt-schema/schemas/i2c/i2c-controller.yaml

The dma-controller.yaml is located in the kernel tree.
Documentation/devicetree/bindings/dma/dma-controller.yaml

I am still wondering about the policy...

As far as I understood, the schema written by Rob
tend to go in the dt-schma project. Is this correct?


 .../devicetree/bindings/i2c/i2c-uniphier.txt  | 25 ----------
 .../bindings/i2c/socionext,uniphier-i2c.yaml  | 50 +++++++++++++++++++
 2 files changed, 50 insertions(+), 25 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/i2c/i2c-uniphier.txt
 create mode 100644 Documentation/devicetree/bindings/i2c/socionext,uniphier-i2c.yaml

diff --git a/Documentation/devicetree/bindings/i2c/i2c-uniphier.txt b/Documentation/devicetree/bindings/i2c/i2c-uniphier.txt
deleted file mode 100644
index 26f9d95b3436..000000000000
--- a/Documentation/devicetree/bindings/i2c/i2c-uniphier.txt
+++ /dev/null
@@ -1,25 +0,0 @@
-UniPhier I2C controller (FIFO-less)
-
-Required properties:
-- compatible: should be "socionext,uniphier-i2c".
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
-	i2c0: i2c@58400000 {
-		compatible = "socionext,uniphier-i2c";
-		reg = <0x58400000 0x40>;
-		#address-cells = <1>;
-		#size-cells = <0>;
-		interrupts = <0 41 1>;
-		clocks = <&i2c_clk>;
-		clock-frequency = <100000>;
-	};
diff --git a/Documentation/devicetree/bindings/i2c/socionext,uniphier-i2c.yaml b/Documentation/devicetree/bindings/i2c/socionext,uniphier-i2c.yaml
new file mode 100644
index 000000000000..ef998def554e
--- /dev/null
+++ b/Documentation/devicetree/bindings/i2c/socionext,uniphier-i2c.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/i2c/socionext,uniphier-i2c.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: UniPhier I2C controller (FIFO-less)
+
+maintainers:
+  - Masahiro Yamada <yamada.masahiro@socionext.com>
+
+allOf:
+  - $ref: /schemas/i2c/i2c-controller.yaml#
+
+properties:
+  compatible:
+    const: socionext,uniphier-i2c
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
+    i2c0: i2c@58400000 {
+        compatible = "socionext,uniphier-i2c";
+        reg = <0x58400000 0x40>;
+        #address-cells = <1>;
+        #size-cells = <0>;
+        interrupts = <0 41 1>;
+        clocks = <&i2c_clk>;
+        clock-frequency = <100000>;
+    };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
