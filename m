Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD8E116975
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 10:36:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tlQK36cWe+kX7LrIFNyguSt/e0p5yHCaVBAtLXqDG8=; b=Nls0GBJnD0rceP
	e7Ub8VAfIDEpx8T9dcDJQ5SH7sEH8AU8E3FCd4HA4/LLoV7LIVrQzpp97Z5nSLdaavOORUg2hMKUt
	T+hf7HMd7AFk3G3fIJoP3Vh5McU1txmA6Fvj0wcvO0ZQa6BESWLbCN2AOmFPmzDFx1+1uzSKYLH7i
	+li2rPSoyt8baVyOLi/fq5ZleKIx/VDyzkoqwgc86mB3Vn7TOblPiYhATFAjIxApU+RhVpYQh+7dE
	WxTn3WinykcFoqvTq1lANP6Lc9EQAVpP0WUh1mCCynXYgb0NW/gBkoWNV3z+tzshOrJ7Cm2r7QsJ7
	pDGl4pE3y54dviFD95lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieFSi-0001kj-CR; Mon, 09 Dec 2019 09:36:16 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieFSW-0001jN-44
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 09:36:05 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2E33F5EFF;
 Mon,  9 Dec 2019 04:36:03 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 09 Dec 2019 04:36:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=BcpHtNwfeSxqb
 4i6SpcFAtJ3M6r4EJRflXVEnh25aSA=; b=f0hfiDUJPC+7kTs1Ov9o7TXmAihTL
 pGmdna4S+Z7OK4Qfag9lyxWEwT6lM6M89h6mOz/JurlzzNbkRWTVmoszDdGyvZ0e
 jyT+56ARzBzkCI5g5xOvGoaezhAx6rwotD8jiT3fiybCEjOTTkqX9MX3Bga/gdBW
 3VR7/KPPi+bE5KLpxVDhUreMle5Zg0E3u7InX72aDnQrOxFDleROkGJgAykZ7Bg8
 1Vo8ourV5rzHOEpM7VuqTkEbzK42jfKjDw+zwv0A9xQn2X5EKjGGfBZGwsh1Wp0r
 8lRo/nDx7TwTEnOpAACAsCvhVypELLNQP8lJbaLgUfr63PDHslY0VhJkA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=BcpHtNwfeSxqb4i6SpcFAtJ3M6r4EJRflXVEnh25aSA=; b=GWsGXNn6
 O05bFcrzKYjTrjlrfs0iPU/GVHeFrtHvJpYHIhGXXhse9KZqzlQmJSLK/K0mZOMf
 T0pswveKssDIJkOKrhde4s7It5CTnl2BaB+QvZmhFxVBTLCX4b/h7vAwwN/WI48r
 m/udZCR/9yQbWQgCnRKKFJushXodOPiB90/X8MVsqd+EJHvIDe6PQOfbMLPetjJh
 fKHKL0mz4ukKAHHb71EpVJoh1pxVOSnjaI3X1dh+obO6xaLetQDFZnhynbAMqFHX
 jwK50i2wqdyxxaQxKoQwjA8fnxaaLk/D4WxIYCliTNt0xDmz5BRy74v3pw8PDfMe
 ZFA5yDzpSFtl1Q==
X-ME-Sender: <xms:gxXuXUmYoeNuD8uCW3uDw07Dap5BCBK5c3W0ZEWR8_PUAZEhFsYeOg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudeltddgtdehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 govehorghsthgrlhdqhfeguddvqddtvdculdduhedtmdenucfjughrpefhvffufffkofgj
 fhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrg
 igihhmvgestggvrhhnohdrthgvtghhqeenucffohhmrghinhepuggvvhhitggvthhrvggv
 rdhorhhgnecukfhppeeltddrkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhroh
 hmpehmrgigihhmvgestggvrhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgepud
X-ME-Proxy: <xmx:gxXuXWQnNAADJ1WQO-zq4Tvab-rldFaIeuY30qLXNTLgmQDS8g6xfg>
 <xmx:gxXuXS1jbRkyxmHVfKs1wxDnBhMbl3KPYpVkSObafG3CS2csBvHnAQ>
 <xmx:gxXuXYFZYB0JowscndHw_Qwr1Al1RgG5yKRR0sUDjSZiox_w0qY1Wg>
 <xmx:gxXuXTqWP_PFDx-biJvvUJk8jSuvc3s5Vwm4lDtRVQhjyYUq6H5SYg>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C094A30600D4;
 Mon,  9 Dec 2019 04:36:02 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 2/3] dt-bindings: clocks: Convert Allwinner A80 USB clocks to
 a schema
Date: Mon,  9 Dec 2019 10:35:57 +0100
Message-Id: <20191209093558.50940-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191209093558.50940-1-maxime@cerno.tech>
References: <20191209093558.50940-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_013604_319025_AE3D1222 
X-CRM114-Status: GOOD (  11.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Mike Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@codeaurora.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner A80 SoC has a USB clocks controller that is supported in
Linux, with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../clock/allwinner,sun9i-a80-usb-clocks.yaml | 59 +++++++++++++++++++
 .../devicetree/bindings/clock/sun9i-usb.txt   | 24 --------
 2 files changed, 59 insertions(+), 24 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-clocks.yaml
 delete mode 100644 Documentation/devicetree/bindings/clock/sun9i-usb.txt

diff --git a/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-clocks.yaml b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-clocks.yaml
new file mode 100644
index 000000000000..fa0ee03a527f
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/allwinner,sun9i-a80-usb-clocks.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: GPL-2.0+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/allwinner,sun9i-a80-usb-clocks.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A80 USB Clock Controller Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  "#clock-cells":
+    const: 1
+
+  "#reset-cells":
+    const: 1
+
+  compatible:
+    const: allwinner,sun9i-a80-usb-clocks
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Bus Clock
+      - description: High Frequency Oscillator
+
+  clock-names:
+    items:
+      - const: bus
+      - const: hosc
+
+required:
+  - "#clock-cells"
+  - "#reset-cells"
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/clock/sun9i-a80-ccu.h>
+
+    usb_clocks: clock@a08000 {
+        compatible = "allwinner,sun9i-a80-usb-clks";
+        reg = <0x00a08000 0x8>;
+        clocks = <&ccu CLK_BUS_USB>, <&osc24M>;
+        clock-names = "bus", "hosc";
+        #clock-cells = <1>;
+        #reset-cells = <1>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/clock/sun9i-usb.txt b/Documentation/devicetree/bindings/clock/sun9i-usb.txt
deleted file mode 100644
index 3564bd4f2a20..000000000000
--- a/Documentation/devicetree/bindings/clock/sun9i-usb.txt
+++ /dev/null
@@ -1,24 +0,0 @@
-Allwinner A80 USB Clock Control Binding
----------------------------------------
-
-Required properties :
-- compatible: must contain one of the following compatibles:
-		- "allwinner,sun9i-a80-usb-clocks"
-
-- reg: Must contain the registers base address and length
-- clocks: phandle to the clocks feeding the USB subsystem. Two are needed:
-  - "bus": the bus clock for the whole USB subsystem
-  - "hosc": the high frequency oscillator (usually at 24MHz)
-- clock-names: Must contain the clock names described just above
-- #clock-cells : must contain 1
-- #reset-cells : must contain 1
-
-Example:
-usb_clocks: clock@a08000 {
-	compatible = "allwinner,sun9i-a80-usb-clks";
-	reg = <0x00a08000 0x8>;
-	clocks = <&ccu CLK_BUS_USB>, <&osc24M>;
-	clock-names = "bus", "hosc";
-	#clock-cells = <1>;
-	#reset-cells = <1>;
-};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
