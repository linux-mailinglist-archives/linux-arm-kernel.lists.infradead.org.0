Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35A83A0245
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 14:53:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=si/kEoCfzqcgh0n6ZsR5n3Hk5suD1MNT+jEFrUzM7VA=; b=evcFJtSmGnJYZu
	hzGle0ATYO+SSV1m0NxdJgyGHBsbIaFXHEw12p8E3EBa4a2Y+dLK91MeJ1aCCxmiZQ9x/iPng0Vf2
	VHznWLdGjRet9cHWBbDm58efSqKpRhMRv6mkqmX9Y+Q4jTTjyWU6lFEoy3W3VJmYEqaZcWPSnNG70
	125k6MaIapcG4iF9u6vpOxSDXPHEOKRsthsXfMr8cGFjuNlAi84dxroiP3ZlrAkoQs3pzVIGTDkoQ
	spitK45AwE/uOVTbkUPc8p1hxfapAS0FM676DEQZSwnkqhlhruMpZ3vMCmoCbnVdEXCNuPDUoX/S6
	GbBYEbcU5suaPTCrBElQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2xSB-0006Lw-I7; Wed, 28 Aug 2019 12:53:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2xR2-0005YI-AR
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 12:52:26 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 79EBA22CF5;
 Wed, 28 Aug 2019 12:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566996744;
 bh=eJWFrJG0WakHVrL4+BcPNRmqiL0piPTN4ll/Cp4d71Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zDsuz5rgYTmdAMBFCNrit4Ymn0Ahjjax3KCeYNDiDDGiAAWDBOzUXoWlVZG9X/Q6Q
 Z3VEj7fabCf12dytyFNyPOAGdVY0/omxvaeiXpKqpTCqmu1DVybsgbFzjzCBQcF/kT
 AP/BzbkTdtHN13f0L5nmdjEWyXlCek3oHUwDXaos=
From: Maxime Ripard <mripard@kernel.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v2 3/5] ASoC: dt-bindings: Convert Allwinner A33 codec to a
 schema
Date: Wed, 28 Aug 2019 14:52:07 +0200
Message-Id: <20190828125209.28173-3-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190828125209.28173-1-mripard@kernel.org>
References: <20190828125209.28173-1-mripard@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_055224_639455_49F6E827 
X-CRM114-Status: GOOD (  14.57  )
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The Allwinner A33 SoC have an embedded audio codec that is supported in Linux,
with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - Fix subject prefix
---
 .../sound/allwinner,sun8i-a33-codec.yaml      | 57 +++++++++++++++++
 .../bindings/sound/sun8i-a33-codec.txt        | 63 -------------------
 2 files changed, 57 insertions(+), 63 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
 delete mode 100644 Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
new file mode 100644
index 000000000000..5e7cc05bbff1
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun8i-a33-codec.yaml
@@ -0,0 +1,57 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/sound/allwinner,sun8i-a33-codec.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A33 Codec Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <maxime.ripard@bootlin.com>
+
+properties:
+  "#sound-dai-cells":
+    const: 0
+
+  compatible:
+    const: allwinner,sun8i-a33-codec
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Bus Clock
+      - description: Module Clock
+
+  clock-names:
+    items:
+      - const: bus
+      - const: mod
+
+required:
+  - "#sound-dai-cells"
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+additionalProperties: false
+
+examples:
+  - |
+    audio-codec@1c22e00 {
+      #sound-dai-cells = <0>;
+      compatible = "allwinner,sun8i-a33-codec";
+      reg = <0x01c22e00 0x400>;
+      interrupts = <0 29 4>;
+      clocks = <&ccu 47>, <&ccu 92>;
+      clock-names = "bus", "mod";
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt b/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
deleted file mode 100644
index 7ecf6bd60d27..000000000000
--- a/Documentation/devicetree/bindings/sound/sun8i-a33-codec.txt
+++ /dev/null
@@ -1,63 +0,0 @@
-Allwinner SUN8I audio codec
-------------------------------------
-
-On Sun8i-A33 SoCs, the audio is separated in different parts:
-	  - A DAI driver. It uses the "sun4i-i2s" driver which is
-	  documented here:
-	  Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-i2s.yaml
-	  - An analog part of the codec which is handled as PRCM registers.
-	  See Documentation/devicetree/bindings/sound/sun8i-codec-analog.txt
-	  - An digital part of the codec which is documented in this current
-	  binding documentation.
-	  - And finally, an audio card which links all the above components.
-	  The simple-audio card will be used.
-	  See Documentation/devicetree/bindings/sound/simple-card.txt
-
-This bindings documentation exposes Sun8i codec (digital part).
-
-Required properties:
-- compatible: must be "allwinner,sun8i-a33-codec"
-- reg: must contain the registers location and length
-- interrupts: must contain the codec interrupt
-- clocks: a list of phandle + clock-specifer pairs, one for each entry
-  in clock-names.
-- clock-names: should contain followings:
-   - "bus": the parent APB clock for this controller
-   - "mod": the parent module clock
-
-Here is an example to add a sound card and the codec binding on sun8i SoCs that
-are similar to A33 using simple-card:
-
-	sound {
-		compatible = "simple-audio-card";
-		simple-audio-card,name = "sun8i-a33-audio";
-		simple-audio-card,format = "i2s";
-		simple-audio-card,frame-master = <&link_codec>;
-		simple-audio-card,bitclock-master = <&link_codec>;
-		simple-audio-card,mclk-fs = <512>;
-		simple-audio-card,aux-devs = <&codec_analog>;
-		simple-audio-card,routing =
-				"Left DAC", "Digital Left DAC",
-				"Right DAC", "Digital Right DAC";
-
-		simple-audio-card,cpu {
-			sound-dai = <&dai>;
-		};
-
-		link_codec: simple-audio-card,codec {
-			sound-dai = <&codec>;
-		};
-
-	soc@1c00000 {
-		[...]
-
-		audio-codec@1c22e00 {
-			#sound-dai-cells = <0>;
-			compatible = "allwinner,sun8i-a33-codec";
-			reg = <0x01c22e00 0x400>;
-			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&ccu CLK_BUS_CODEC>, <&ccu CLK_AC_DIG>;
-			clock-names = "bus", "mod";
-		};
-	};
-
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
