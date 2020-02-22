Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55DED168CD6
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 07:06:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3LVZsbV0YSLbb275fzv1Zjyxpysx6eGR1f+fik7Okps=; b=NCcamnogSZjEObwgT16+In9p6H
	sU7/EEnNTJw9JUK8NbFsczxISj0/HzTaEw8ISwapJI3X2Sr0OW4rw3ho9Tz+n6cUz6yRvPVqAVh1G
	0IA54M4dI2An8oJINBigOOk3wPoDpQkHI3emwJbv2lZR/aTlvgRXilNVz8gOGxLTqZXO6Wc1PiRWp
	Wr8g6SaPaTVeR1IUbkG5jdv+tH4dSPG0kam0BSM1+LlzWntYo+3T3E1dAFtQ73h9MqGFKU41Vmkun
	fwT9L0XPVk/IGKtUgtMawGcZFai6Zn2FuhG2GIpxQVH1xpYFN+BzCBKmoOctboXC0WtD7rV4uSQcs
	hhNwauNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5NvS-0003Vk-69; Sat, 22 Feb 2020 06:06:06 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5Nur-00033E-On
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 06:05:33 +0000
Received: from grover.flets-west.jp (softbank126093102113.bbtec.net
 [126.93.102.113]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id 01M64cSL007264;
 Sat, 22 Feb 2020 15:04:40 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 01M64cSL007264
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582351481;
 bh=oDf9qz+GZWAPWYmHoFftPILijL8CHYn9USMXC9ZrbE8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aorvtRolf0+JAnTTtXq8CQ3Ht2LYQ+fuE3QYJ+N30aFtxuCa0tSJfmCa+dVyr/gxX
 CSyctQ50hP9L3j/JsytSH999TqGzNmczoqqYlGEUXX6mwb5M/3Cu2pNOnFMpZxfSk9
 lGn6L6k9tIkMgbulGh3R6TyzTwJJQYf7mIl7crbD5cHIykiQYHRjHMxA89E4J2bxED
 CFdnEGy/epKX17gh6SpccBuAf+t20eKFHjDAFbbtBmUE7uRWBJzUdSTCG5OBi8uNgV
 01a6ubOIhWnuEQXmMYKEMu/6QuXoLsANS6kejVrH66VyawQLipoYZsPzsvIicYFLaK
 g53w0HXuTIVbg==
X-Nifty-SrcIP: [126.93.102.113]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH v2 3/3] dt-bingings: pinctrl: Convert UniPhier pin controller
 to json-schema
Date: Sat, 22 Feb 2020 15:04:35 +0900
Message-Id: <20200222060435.971-3-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200222060435.971-1-yamada.masahiro@socionext.com>
References: <20200222060435.971-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_220530_041223_EDB09F8F 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.78 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-gpio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the UniPhier pin controller binding to DT schema format.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

In the original .txt file, there is a description:
The UniPhier pinctrl should be a subnode of a "syscon" compatible node

I did not figure out how to represent (or check) it in dt-schema.
I just moved it to a comment line in 'examples'.
If there is a better way, please let me know.


Changes in v2: None

 .../pinctrl/socionext,uniphier-pinctrl.txt    | 27 ------------
 .../pinctrl/socionext,uniphier-pinctrl.yaml   | 42 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 43 insertions(+), 28 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.txt
 create mode 100644 Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.yaml

diff --git a/Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.txt
deleted file mode 100644
index 8173b12138ad..000000000000
--- a/Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.txt
+++ /dev/null
@@ -1,27 +0,0 @@
-UniPhier SoCs pin controller
-
-Required properties:
-- compatible: should be one of the following:
-    "socionext,uniphier-ld4-pinctrl"  - for LD4 SoC
-    "socionext,uniphier-pro4-pinctrl" - for Pro4 SoC
-    "socionext,uniphier-sld8-pinctrl" - for sLD8 SoC
-    "socionext,uniphier-pro5-pinctrl" - for Pro5 SoC
-    "socionext,uniphier-pxs2-pinctrl" - for PXs2 SoC
-    "socionext,uniphier-ld6b-pinctrl" - for LD6b SoC
-    "socionext,uniphier-ld11-pinctrl" - for LD11 SoC
-    "socionext,uniphier-ld20-pinctrl" - for LD20 SoC
-    "socionext,uniphier-pxs3-pinctrl" - for PXs3 SoC
-
-Note:
-The UniPhier pinctrl should be a subnode of a "syscon" compatible node.
-
-Example:
-	soc-glue@5f800000 {
-		compatible = "socionext,uniphier-pro4-soc-glue",
-			     "simple-mfd", "syscon";
-		reg = <0x5f800000 0x2000>;
-
-		pinctrl: pinctrl {
-			compatible = "socionext,uniphier-pro4-pinctrl";
-		};
-	};
diff --git a/Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.yaml
new file mode 100644
index 000000000000..f8a93d8680f9
--- /dev/null
+++ b/Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pinctrl/socionext,uniphier-pinctrl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: UniPhier SoCs pin controller
+
+maintainers:
+  - Masahiro Yamada <yamada.masahiro@socionext.com>
+
+properties:
+  $nodename:
+    pattern: "pinctrl"
+
+  compatible:
+    enum:
+      - socionext,uniphier-ld4-pinctrl
+      - socionext,uniphier-pro4-pinctrl
+      - socionext,uniphier-sld8-pinctrl
+      - socionext,uniphier-pro5-pinctrl
+      - socionext,uniphier-pxs2-pinctrl
+      - socionext,uniphier-ld6b-pinctrl
+      - socionext,uniphier-ld11-pinctrl
+      - socionext,uniphier-ld20-pinctrl
+      - socionext,uniphier-pxs3-pinctrl
+
+required:
+  - compatible
+
+examples:
+  - |
+    // The UniPhier pinctrl should be a subnode of a "syscon" compatible node.
+
+    soc-glue@5f800000 {
+        compatible = "socionext,uniphier-pro4-soc-glue", "simple-mfd", "syscon";
+        reg = <0x5f800000 0x2000>;
+
+        pinctrl: pinctrl {
+            compatible = "socionext,uniphier-pro4-pinctrl";
+        };
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 3cb4c8a9107d..920bef1f5308 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2548,7 +2548,7 @@ T:	git git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-uniphier.gi
 S:	Maintained
 F:	Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
 F:	Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.yaml
-F:	Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.txt
+F:	Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.yaml
 F:	arch/arm/boot/dts/uniphier*
 F:	arch/arm/include/asm/hardware/cache-uniphier.h
 F:	arch/arm/mach-uniphier/
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
