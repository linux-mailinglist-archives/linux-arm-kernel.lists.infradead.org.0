Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F18A166CAE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 03:11:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vKMp8z7hp1kSVRewbjAq/Ugd1iwUq8WFMR/lPT9694Q=; b=aQl9CYJfrZWBQGso3EA+iXvXG4
	9KV/axws3YkNXIClmLda2aThFh+59YL8XqCz/Y4M02ABGwhhvmSZsHNKe/VsDnck14nA0n1ZSzch+
	k22AYLgGzBML7ymKWUaCxdH7gYtnBqueOZs7ERjwK4Xog3SCJGAloOrjaOm30u/DxrY1hBi3Azu7i
	gtIsw3XOVhAqcCrHhCakRP1OoYROgRRutLktLoDPc/ebShljqR/YnanD1mRz/eEkltJyhGiCIRa93
	dQn9LYrNGwp4dqObs8qypgq89kmgauXBzikBIJnTrwYRYGQILKBByckI187jBoySiUo7l5TvXgHxG
	Q35VLLYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4xmc-0004bH-FF; Fri, 21 Feb 2020 02:11:14 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4xmQ-0004aB-Dz
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 02:11:04 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id 01L2A7H7001755;
 Fri, 21 Feb 2020 11:10:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 01L2A7H7001755
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582251013;
 bh=95ajj3A8zakPKExEWEowteIJzcxYdgGQ9juu7oiRGCI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=RsdOmAYt/yKao+5tU02MNmciYOJHtrvfRhisd+fEPXVJFZj4jWuD3ETXhBgNwkztF
 OLZlO1aklAb/GuUoSmyC4W5OZcCLJ/Qwx8FZTv/JKtA4QKg1TSbgVw0+tEaxqrHjK4
 pk+DHdMBe2Q7+RQS04DTJfKVsBYEgSbgQRLkzRXBhGaf2tLez9dw7fW4xOqA04VrOt
 2B31sPm5mfCePSvcljcZP+x8bfVdYuMWUPUoKfJPeWVJaLoetpSXOs2YGOmGUNqRQ/
 Eimoe7U/JtelM/aZhMNuUOn/ZAe1nUEHNsQCJ68K70ikmw8HCwBBrfuRyR/Ks+i8ul
 Wr716v/uF4T0A==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 3/3] dt-bingings: pinctrl: Convert UniPhier pin controller to
 json-schema
Date: Fri, 21 Feb 2020 11:10:02 +0900
Message-Id: <20200221021002.18795-3-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200221021002.18795-1-yamada.masahiro@socionext.com>
References: <20200221021002.18795-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_181102_817977_BA8B3AA1 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.76 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-gpio@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
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
