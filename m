Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED83511DEC4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 08:41:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=00eDnN2/21jxakIvpPqlrbUpG8YoGKTqzdUoGDNGJao=; b=ZSvCKNXG6JaIs2
	c79SXc1WvVyfMrZonkoSs03jiD8biuv3FrljCbVRwyZZ9Qi9PflTo0EhImxp30YfxXrhG0UULrZt6
	ieg6pECC9WGiiIVDmDNelNtEipRGN6k3GMkoEwBU8e4X6oMzJ9lok5VMjbx6BeX5JPIogyOcRUDFA
	DjlA+QsoGCugIgZR/4j2r4iQbop0rvtCGQK4EC7XgtDL9goSfBr66vYQBn8FBjo8qO2T06i1VePbN
	pJq8SnJAfbuWm5p1EblHxW6rvSCzJGf0PSqnPSgG63d9EnezbUelJz7Da6KcY3pvplW6CT3UStjwB
	gqeCjEk+i/yZL8E39HwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iffZb-0003ic-Vb; Fri, 13 Dec 2019 07:41:15 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iffZS-0003hn-F8
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 07:41:08 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 1F0C92016D;
 Fri, 13 Dec 2019 02:41:03 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 13 Dec 2019 02:41:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=33Mnjk9CTgiKk4soyBf8XwUhyv
 OpzfMckjiIljvOAFA=; b=F1Iff1JbCYyv88yK2oj9MC7XZaKUey7s3R7ouxTueM
 CYNOnolGeWNiezw6VDV/wR9rwqx5kEg/BP6zJU8GfOc3aHU5P88cZi3qgprwEEGc
 cIFiKIug0dNiPJF9h8IBw82L4xtGmFlKAiNVEDsulyLgLyoTt2VF7dIGvs0e3gEq
 WtwWwYpxl9arCP9eSlxLwJPQgaCp52M/HcBFdxWJnn1YP+fJw6sU9L+9xjao/W76
 Iw3QR0oJmQIroUlaaDYolP2GEeuhx/3J0HEi94xKzzd1MeKOeAeE5MfuHMKHpbsd
 Zz/VSaBkzAKVJPzc1Pp0oaArPTJMcgEgMm16W4vGpHCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=33Mnjk9CTgiKk4soy
 Bf8XwUhyvOpzfMckjiIljvOAFA=; b=JC8UFfh7/aKZ1APq2dMfAPRWQYPWvwU0M
 R2POtJcfW+CGcMnY0LaZt6zJtNpc4b2rQhPRj2yd5QhwBASknkwc7U/VGHU6bw8e
 4zBrSeToIUU9xq3GpQ9WnYbA6yYVXd4/RKfscpzi3m3LrZt4QDgozi/bIB9haMFy
 ucA0w7oMOMPD5r8YuKEsqtFquPEDXEZlwOEJo34TWWPEdGEAcHY5/0/+A2aWrXZb
 X7ou78fenTBjB0bS1WVY7fjNSWnqnm5SExFgMi4ukfY0ipeSOZKgeLBCJVyAUdsY
 AZzf0bD9D2GIUu09V1P0Sne9MemAM4o/As9qlDrdPx2i5RLDSfpeg==
X-ME-Sender: <xms:jUDzXbz9Y14hXVlu5djXj3MB9WdIqmCRSqv5EU9WzN-36jUT40X8pA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudelkedguddutdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enogevohgrshhtrghlqdfhgeduvddqtddvucdludehtddmnecujfgurhephffvufffkffo
 ggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgi
 himhgvsegtvghrnhhordhtvggthheqnecuffhomhgrihhnpeguvghvihgtvghtrhgvvgdr
 ohhrghenucfkphepledtrdekledrieekrdejieenucfrrghrrghmpehmrghilhhfrhhomh
 epmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:jUDzXXjm_pgjqzXPZbqcCdBDez4NOCr_LsulHGZ4Grq7AD8-pV1Rmw>
 <xmx:jUDzXQXe4m8Rj2h2qLcJcviwDItRVFF9waWyxgQItm6esbeJBv-zJA>
 <xmx:jUDzXZ0PrIi79cpfTuu_MSB6iaF94QAhjqB_BzWhe6p8wiakWCEnOg>
 <xmx:j0DzXS40g5r-TZS7hUVRHpVssizubgDTkvZLaaQWCIjaUi-gMMLPog>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 06CA180063;
 Fri, 13 Dec 2019 02:41:00 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH] dt-bindings: media: Convert Allwinner hardware codec to a
 schema
Date: Fri, 13 Dec 2019 08:40:55 +0100
Message-Id: <20191213074055.26193-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_234106_844782_E6E3ACA2 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner SoCs have a hardware video codec that is supported in Linux,
with a matching Device Tree binding.

Now that we have the DT validation in place, let's convert the device tree
bindings for that controller over to a YAML schemas.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../allwinner,sun4i-a10-video-engine.yaml     | 83 +++++++++++++++++++
 .../devicetree/bindings/media/cedrus.txt      | 57 -------------
 2 files changed, 83 insertions(+), 57 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml
 delete mode 100644 Documentation/devicetree/bindings/media/cedrus.txt

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml
new file mode 100644
index 000000000000..47c8513555b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-video-engine.yaml
@@ -0,0 +1,83 @@
+# SPDX-License-Identifier: GPL-2.0+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/allwinner,sun4i-a10-video-engine.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A10 Video Engine Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+properties:
+  compatible:
+    enum:
+      - allwinner,sun4i-a10-video-engine
+      - allwinner,sun5i-a13-video-engine
+      - allwinner,sun7i-a20-video-engine
+      - allwinner,sun8i-a33-video-engine
+      - allwinner,sun8i-h3-video-engine
+      - allwinner,sun50i-a64-video-engine
+      - allwinner,sun50i-h5-video-engine
+      - allwinner,sun50i-h6-video-engine
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
+      - description: RAM Clock
+
+  clock-names:
+    items:
+      - const: ahb
+      - const: mod
+      - const: ram
+
+  resets:
+    maxItems: 1
+
+  allwinner,sram:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    description: Phandle to the device SRAM
+
+  memory-region:
+    description:
+      CMA pool to use for buffers allocation instead of the default
+      CMA pool.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - resets
+  - allwinner,sram
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/sun7i-a20-ccu.h>
+    #include <dt-bindings/reset/sun4i-a10-ccu.h>
+
+    video-codec@1c0e000 {
+        compatible = "allwinner,sun7i-a20-video-engine";
+        reg = <0x01c0e000 0x1000>;
+        interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&ccu CLK_AHB_VE>, <&ccu CLK_VE>,
+                 <&ccu CLK_DRAM_VE>;
+        clock-names = "ahb", "mod", "ram";
+        resets = <&ccu RST_VE>;
+        allwinner,sram = <&ve_sram 1>;
+    };
+
+...
diff --git a/Documentation/devicetree/bindings/media/cedrus.txt b/Documentation/devicetree/bindings/media/cedrus.txt
deleted file mode 100644
index 20c82fb0c343..000000000000
--- a/Documentation/devicetree/bindings/media/cedrus.txt
+++ /dev/null
@@ -1,57 +0,0 @@
-Device-tree bindings for the VPU found in Allwinner SoCs, referred to as the
-Video Engine (VE) in Allwinner literature.
-
-The VPU can only access the first 256 MiB of DRAM, that are DMA-mapped starting
-from the DRAM base. This requires specific memory allocation and handling.
-
-Required properties:
-- compatible		: must be one of the following compatibles:
-			- "allwinner,sun4i-a10-video-engine"
-			- "allwinner,sun5i-a13-video-engine"
-			- "allwinner,sun7i-a20-video-engine"
-			- "allwinner,sun8i-a33-video-engine"
-			- "allwinner,sun8i-h3-video-engine"
-			- "allwinner,sun50i-a64-video-engine"
-			- "allwinner,sun50i-h5-video-engine"
-			- "allwinner,sun50i-h6-video-engine"
-- reg			: register base and length of VE;
-- clocks		: list of clock specifiers, corresponding to entries in
-			  the clock-names property;
-- clock-names		: should contain "ahb", "mod" and "ram" entries;
-- resets		: phandle for reset;
-- interrupts		: VE interrupt number;
-- allwinner,sram	: SRAM region to use with the VE.
-
-Optional properties:
-- memory-region		: CMA pool to use for buffers allocation instead of the
-			  default CMA pool.
-
-Example:
-
-reserved-memory {
-	#address-cells = <1>;
-	#size-cells = <1>;
-	ranges;
-
-	/* Address must be kept in the lower 256 MiBs of DRAM for VE. */
-	cma_pool: default-pool {
-		compatible = "shared-dma-pool";
-		size = <0x6000000>;
-		alloc-ranges = <0x4a000000 0x6000000>;
-		reusable;
-		linux,cma-default;
-	};
-};
-
-video-codec@1c0e000 {
-	compatible = "allwinner,sun7i-a20-video-engine";
-	reg = <0x01c0e000 0x1000>;
-
-	clocks = <&ccu CLK_AHB_VE>, <&ccu CLK_VE>,
-		 <&ccu CLK_DRAM_VE>;
-	clock-names = "ahb", "mod", "ram";
-
-	resets = <&ccu RST_VE>;
-	interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
-	allwinner,sram = <&ve_sram 1>;
-};
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
