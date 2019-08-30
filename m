Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D63E5A3B81
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 18:07:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=KbKPf9OHK+GIjBykBQBwFQltPQlx6c768Xb/3vYKii0=; b=A7Z
	gD/Wp1qmOdW7cLCAGGth8fELbxihDLQNBxbsX3+Xn86BE7iysXjo4bMPme8t6X01Y2pAyo1q8Fvq9
	wtjW3RcBmUwV3K4AO/pU0lHl+/eQJArmWHhbVKiiOyIIPUDidaNziG+CBNVL5xNgSSFc6fD6ldzyp
	gQ4DeyQ10BRN1iG+EI3kpb1s5YcteIUXUkZW2WvAG0uQOT4FG8FT3zADNQRSKt6P3qrhBmj2md8Vx
	BX4xSPNiqKOY7QmpNHCnlMlwpDmCmPnvmaXvfpbvDIap+HzAHU/ihvp01was6fhi5nPAmj6cugDO0
	43/7TMzzsCNCIq/8fwzTfFhC9igfLVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3jQc-0005b9-T6; Fri, 30 Aug 2019 16:07:10 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3jPj-00052Y-Fg
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 16:06:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=1f3dis+isIdCD05DxEhe7GivkC6mXBsN3I6QXf3Jtr0=; b=GIbZ6piKJ4l1
 +LQgFfI/cbt4V++eGMYIUqwLAKNVsvOXBuFQA13hRvI4i0/RfeZqAHuDY5ylloTnwR4GKAEh/10bi
 wSyI7tHmLgaIoqUMQ6ApT7ne1AYNRhXJPXh5pGP8uVPR/RyESmcOgeJdFphpydb7MHrRSmRrfs5dm
 Tl/KQ=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i3jPc-00078w-Ba; Fri, 30 Aug 2019 16:06:08 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id A4AD82742BD3; Fri, 30 Aug 2019 17:06:07 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "ASoC: dt-bindings: Convert Allwinner A33 codec to a schema"
 to the asoc tree
In-Reply-To: <20190828125209.28173-3-mripard@kernel.org>
X-Patchwork-Hint: ignore
Message-Id: <20190830160607.A4AD82742BD3@ypsilon.sirena.org.uk>
Date: Fri, 30 Aug 2019 17:06:07 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_090615_561861_1FD80068 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Liam Girdwood <lgirdwood@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Mark Brown <broonie@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: dt-bindings: Convert Allwinner A33 codec to a schema

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.4

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 8a99f76ac1a591f27f5216951bf8a8fdad58e987 Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Wed, 28 Aug 2019 14:52:07 +0200
Subject: [PATCH] ASoC: dt-bindings: Convert Allwinner A33 codec to a schema

The Allwinner A33 SoC have an embedded audio codec that is supported in Linux,
with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Link: https://lore.kernel.org/r/20190828125209.28173-3-mripard@kernel.org
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
