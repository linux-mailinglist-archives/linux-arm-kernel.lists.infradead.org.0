Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E615166CB4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 03:11:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JakaKoCtUiUIDASN+/EomWtFMb5Z6TS1YFK6wpUiH+g=; b=qzGd1Yu3RdrGAzXvKtjzZ6Ay02
	SCumU1Z7EIyzRfQkrjfdA7qNtnSAcKAAE7fb0TTfaiq4cb/OLEI2KAjQ3adc8vPfEnN7GWSe9ZDUl
	vOG8PmRV5qHg7kNXLhzKJ3P+AkTrplH6AKmojtuQU2wPqdF7iuQ0rIpaRN2V0C2yhpZ9VogMhxpDl
	PcVbLPGSgJIMMm6RQA3lek9qnqUMVa8Wp3r6COBSa5D6dIHA2u8TmNCFvjsVpltm20DbGdpJbgzH5
	lhDNjJVSEzN65cXvWouy6ZnT63+5YAY5oSEkD/HukE9kLl6oHkuujXXfLPPJ32PPKS9vhmoy7+dY+
	VMSCv7XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4xn3-0005Gi-RX; Fri, 21 Feb 2020 02:11:41 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4xmR-0004aC-Cx
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 02:11:06 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id 01L2A7H6001755;
 Fri, 21 Feb 2020 11:10:12 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 01L2A7H6001755
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1582251012;
 bh=Z9GoHg2f6AcvQqJHZJr2yEBAoHoGgMjW8BRSWDxl0Rw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=AxBs5MI4q9zfaJpZdyZU9Rf6OOkBF6k05frD0OLyG1tdFHAbgQQ0OLEoTHFM2CT9g
 gLJhMXpMh6JQnbuBJTN8gdLTgYqSt8WYLFT9j+rSazcwZrX0cYMzOSuMZO4M8IoMDM
 TS1y0YMZwgumnpJt6pbFgEBo/oq3zdOZyF5VXbtdZPVBMNkT6fP2h6syVtm24Tu+M+
 oA5WY2TY5sjxpwtjrtWF1HqIdZt18o5nH4BjlfkaMjw98b+KOuoIxdT2ih3+LshQoP
 gkF52gU27dReCsDVbWPnRF6j6JkU9JPvXR/l7ag0xLwXguI8Qx2d1zEGp+X3uI8r5b
 q4TjOL5L1jaBw==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 2/3] dt-bindings: gpio: Convert UniPhier GPIO to json-schema
Date: Fri, 21 Feb 2020 11:10:01 +0900
Message-Id: <20200221021002.18795-2-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200221021002.18795-1-yamada.masahiro@socionext.com>
References: <20200221021002.18795-1-yamada.masahiro@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_181103_681863_45B6B1A4 
X-CRM114-Status: GOOD (  19.72  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.76 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>, linux-gpio@vger.kernel.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the UniPhier GPIO controller binding to DT schema format.

I omitted the 'gpio-ranges' property because it is defined in the
dt-schema project (/schemas/gpio/gpio.yaml).

As of writing, the 'gpio-ranges-group-names' is not defined in that
file despite it is a common property described in
Documentation/devicetree/bindings/gpio/gpio.txt
So, I defined it in this schema.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

I have a question about the range about 'ngpio'.

  ngpios:
    minimum: 0
    maximum: 512

The 'ngpio' property is already defined as 'uint32' in the dt-schema tool:
https://github.com/robherring/dt-schema/blob/master/schemas/gpio/gpio.yaml#L20

'uint32' is unsigned, so 'minimum: 0' looks too obvious.

I cannot omit the minimum because minimum and maximum depend on each other.
I just put a sensible number, 512, in maximum.

If this range is entirely unneeded, I will delete it.


 .../bindings/gpio/gpio-uniphier.txt           | 51 -----------
 .../gpio/socionext,uniphier-gpio.yaml         | 89 +++++++++++++++++++
 MAINTAINERS                                   |  2 +-
 3 files changed, 90 insertions(+), 52 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/gpio/gpio-uniphier.txt
 create mode 100644 Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.yaml

diff --git a/Documentation/devicetree/bindings/gpio/gpio-uniphier.txt b/Documentation/devicetree/bindings/gpio/gpio-uniphier.txt
deleted file mode 100644
index f281f12dac18..000000000000
--- a/Documentation/devicetree/bindings/gpio/gpio-uniphier.txt
+++ /dev/null
@@ -1,51 +0,0 @@
-UniPhier GPIO controller
-
-Required properties:
-- compatible: Should be "socionext,uniphier-gpio".
-- reg: Specifies offset and length of the register set for the device.
-- gpio-controller: Marks the device node as a GPIO controller.
-- #gpio-cells: Should be 2.  The first cell is the pin number and the second
-  cell is used to specify optional parameters.
-- interrupt-controller: Marks the device node as an interrupt controller.
-- #interrupt-cells: Should be 2.  The first cell defines the interrupt number.
-  The second cell bits[3:0] is used to specify trigger type as follows:
-    1 = low-to-high edge triggered
-    2 = high-to-low edge triggered
-    4 = active high level-sensitive
-    8 = active low level-sensitive
-  Valid combinations are 1, 2, 3, 4, 8.
-- ngpios: Specifies the number of GPIO lines.
-- gpio-ranges: Mapping to pin controller pins (as described in gpio.txt)
-- socionext,interrupt-ranges: Specifies an interrupt number mapping between
-  this GPIO controller and its interrupt parent, in the form of arbitrary
-  number of <child-interrupt-base parent-interrupt-base length> triplets.
-
-Optional properties:
-- gpio-ranges-group-names: Used for named gpio ranges (as described in gpio.txt)
-
-Example:
-	gpio: gpio@55000000 {
-		compatible = "socionext,uniphier-gpio";
-		reg = <0x55000000 0x200>;
-		interrupt-parent = <&aidet>;
-		interrupt-controller;
-		#interrupt-cells = <2>;
-		gpio-controller;
-		#gpio-cells = <2>;
-		gpio-ranges = <&pinctrl 0 0 0>;
-		gpio-ranges-group-names = "gpio_range";
-		ngpios = <248>;
-		socionext,interrupt-ranges = <0 48 16>, <16 154 5>, <21 217 3>;
-	};
-
-Consumer Example:
-
-	sdhci0_pwrseq {
-		compatible = "mmc-pwrseq-emmc";
-		reset-gpios = <&gpio UNIPHIER_GPIO_PORT(29, 4) GPIO_ACTIVE_LOW>;
-	};
-
-Please note UNIPHIER_GPIO_PORT(29, 4) represents PORT294 in the SoC document.
-Unfortunately, only the one's place is octal in the port numbering.  (That is,
-PORT 8, 9, 18, 19, 28, 29, ... are missing.)  UNIPHIER_GPIO_PORT() is a helper
-macro to calculate 29 * 8 + 4.
diff --git a/Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.yaml b/Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.yaml
new file mode 100644
index 000000000000..94beb4342249
--- /dev/null
+++ b/Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.yaml
@@ -0,0 +1,89 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/gpio/socionext,uniphier-gpio.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: UniPhier GPIO controller
+
+maintainers:
+  - Masahiro Yamada <yamada.masahiro@socionext.com>
+
+properties:
+  $nodename:
+    pattern: "^gpio@[0-9a-f]+$"
+
+  compatible:
+    const: socionext,uniphier-gpio
+
+  reg:
+    maxItems: 1
+
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
+  interrupt-controller: true
+
+  "#interrupt-cells":
+    description: |
+      The first cell defines the interrupt number.
+      The second cell bits[3:0] is used to specify trigger type as follows:
+        1 = low-to-high edge triggered
+        2 = high-to-low edge triggered
+        4 = active high level-sensitive
+        8 = active low level-sensitive
+      Valid combinations are 1, 2, 3, 4, 8.
+    const: 2
+
+  ngpios:
+    minimum: 0
+    maximum: 512
+
+  gpio-ranges-group-names:
+    $ref: /schemas/types.yaml#/definitions/string-array
+
+  socionext,interrupt-ranges:
+    description: |
+      Specifies an interrupt number mapping between this GPIO controller and
+      its interrupt parent, in the form of arbitrary number of
+      <child-interrupt-base parent-interrupt-base length> triplets.
+    $ref: /schemas/types.yaml#/definitions/uint32-matrix
+
+required:
+  - compatible
+  - reg
+  - gpio-controller
+  - "#gpio-cells"
+  - interrupt-controller
+  - "#interrupt-cells"
+  - ngpios
+  - gpio-ranges
+  - socionext,interrupt-ranges
+
+examples:
+  - |
+    gpio: gpio@55000000 {
+        compatible = "socionext,uniphier-gpio";
+        reg = <0x55000000 0x200>;
+        interrupt-parent = <&aidet>;
+        interrupt-controller;
+        #interrupt-cells = <2>;
+        gpio-controller;
+        #gpio-cells = <2>;
+        gpio-ranges = <&pinctrl 0 0 0>;
+        gpio-ranges-group-names = "gpio_range";
+        ngpios = <248>;
+        socionext,interrupt-ranges = <0 48 16>, <16 154 5>, <21 217 3>;
+    };
+
+    // Consumer:
+    // Please note UNIPHIER_GPIO_PORT(29, 4) represents PORT294 in the SoC
+    // document. Unfortunately, only the one's place is octal in the port
+    // numbering. (That is, PORT 8, 9, 18, 19, 28, 29, ... are missing.)
+    // UNIPHIER_GPIO_PORT() is a helper macro to calculate 29 * 8 + 4.
+    sdhci0_pwrseq {
+        compatible = "mmc-pwrseq-emmc";
+        reset-gpios = <&gpio UNIPHIER_GPIO_PORT(29, 4) GPIO_ACTIVE_LOW>;
+    };
diff --git a/MAINTAINERS b/MAINTAINERS
index 93ccb6708ae9..3cb4c8a9107d 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2547,7 +2547,7 @@ L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-uniphier.git
 S:	Maintained
 F:	Documentation/devicetree/bindings/arm/socionext/uniphier.yaml
-F:	Documentation/devicetree/bindings/gpio/gpio-uniphier.txt
+F:	Documentation/devicetree/bindings/gpio/socionext,uniphier-gpio.yaml
 F:	Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.txt
 F:	arch/arm/boot/dts/uniphier*
 F:	arch/arm/include/asm/hardware/cache-uniphier.h
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
