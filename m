Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F13EC48B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 15:22:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wmCAlbFANEnKNxoxQSkpROlVf7fBBuo0EoLCHTxH7Dg=; b=BlauCdHVbpIcQo
	zzzRS4R3ZWnoCKS0w4L7JdB++2+o/8D3GR/4a+wJCuA6VxJeE08FSi/cn5MmTeUFy48nSPct1tabO
	lsKlrvnq3Lmi6yfanfRk4kmHuUtMBGbiM94qV5+cHhkLszPZ1IwWxypSpnSfw3YD423Bu0HZVh8/J
	0ni+BQzEJnia+Z9QhsgpMqrtIjafN2tp1rPfVh7TwU/HauFwBM8SEBJaVHgNf9pAPC90s64NQUazy
	ErZrDFxj6wyAODWFgItSi8K5biaIx3t74KpzUv4s2kb+ShYhqSaalxmXmjrb+ChU83h0CS+cJ9hhy
	juJSojhHfmHAnfgbDiNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQXoQ-0001BI-3C; Fri, 01 Nov 2019 14:22:02 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQXoJ-0001AV-8A
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 14:21:57 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2D24A43B8;
 Fri,  1 Nov 2019 10:21:48 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 01 Nov 2019 10:21:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm1; bh=/vA5rSOkS5mFShcyUSZGmOIQfH
 z63Wl99qJ40KPRpp0=; b=ED9IcbV/CCuAYb5jbwVaaubyIpibJ4qKhxhxtyGooT
 Qan8qwgxViNpJDsLUiYEDOvol4fVwEDKEh9M+u6xOjJC5O6Q1gV8SpkDmkpOA7y9
 0/IuMQZeX+C0bMx2a86w1VnBwu6nRomIObFuBkreOizn31U08lpg9Omqh32J2L1U
 6UIwUDx/fP6U9QDRcmaRf1dqxKx5lCZJKdEXXrkwjjwFFWWXJYdhkWmsyy6Y2Dt1
 DGmVEacWD0AlAx1miOl8SYSiX1w6HYq4JjE6mPdDRyEArMQ7VZw67s5CBiXG+AiN
 oAt0bhXVyoGwRAKyB646yVI7IkpdOuxRWauhlNqv7/Gg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=/vA5rSOkS5mFShcyU
 SZGmOIQfHz63Wl99qJ40KPRpp0=; b=E87daGXO2wrolnfbqC/kaOW1Ra0TjzwGs
 5kedHJw0F6boaUrj/ymo3LdobVwaucwnrY5Rrsh35DV9bdDLK4keZ0oP444IhTM5
 x1iR5Apfl/MdWFUxm5Qz0ERWnDMIv8t1huhywjC3wPmUVuryWWjNWUPW8obfoKDg
 xqHLbd6zH10u4uoIzQl7gOQj8wKq9X0tk+bdqlYODIpoChIjYSTHDeXTJOGPO+Jw
 nzSEqTGhzegW9izOdRO08z4EYc3jl/smSHPrx+bWbGwnPaiSX6/Z1flhArcjWbYL
 DKBFrFMzE+6qrUaxgWQ1uySum7YWafcnJTn1KbEKwy1uA38ZLJFqw==
X-ME-Sender: <xms:ej-8XQRQQCIverQ8EW-q-X0BDRmDZsdVTUkcUjDOKhtMf7kAHSajDg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedruddtjedgieefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcu
 tfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrke
 elrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhn
 ohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:ej-8XYBHMVNIfyWkg22sdzFOJpLN9f6sK_bnI1sO6WuW-IeioS_H5Q>
 <xmx:ej-8Xfk_OolLAFWd4V9ciA2LRYNlGg6DtRIRzsHTh2PIGoJZMpznvQ>
 <xmx:ej-8XYk4-ZVcBTdA0ZPPpfC-GsY4o_zTJUPj_DVg4uSK3RFPlje5Cg>
 <xmx:ez-8Xadh2q6wON56ymqf5bzbUg3Ja_QCVQRnb4NJbhUs56mCtaPNSQ>
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D5C2E8005C;
 Fri,  1 Nov 2019 10:21:45 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH] dt-bindings: Remove FIXME in yaml bindings
Date: Fri,  1 Nov 2019 14:58:08 +0100
Message-Id: <20191101135808.259371-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_072155_431968_DA5F0328 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <mripard@kernel.org>,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some binding that were introduced early on got a comment to enable
additionalProperties, but we couldn't due to the generic properties being
reported as errors.

The way we're dealing with this now is to use the draft-08's
unevaluatedProperties (even though the tools doesn't do anything with it
yet).

Let's convert those old bindings to it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 .../devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml   | 4 +---
 .../devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml   | 4 +---
 .../devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml        | 4 +---
 .../interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml    | 4 +---
 .../devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml   | 4 +---
 .../devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml    | 6 ++----
 .../devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml   | 6 ++----
 .../devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml   | 6 ++----
 .../devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml   | 6 ++----
 .../devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml  | 6 ++----
 .../devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml  | 4 +---
 11 files changed, 16 insertions(+), 38 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml b/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml
index 4cb9d6b93138..387d599522c7 100644
--- a/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/allwinner,sun50i-a64-dma.yaml
@@ -68,9 +68,7 @@ else:
     clocks:
       maxItems: 1
 
-# FIXME: We should set it, but it would report all the generic
-# properties as additional properties.
-# additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml b/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml
index f9d526b7da01..9346ef6ba61b 100644
--- a/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml
+++ b/Documentation/devicetree/bindings/i2c/allwinner,sun6i-a31-p2wi.yaml
@@ -40,9 +40,7 @@ required:
   - clocks
   - resets
 
-# FIXME: We should set it, but it would report all the generic
-# properties as additional properties.
-# additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
index c779000515d6..2ceb05ba2df5 100644
--- a/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/marvell,mv64xxx-i2c.yaml
@@ -93,9 +93,7 @@ allOf:
       required:
         - resets
 
-# FIXME: We should set it, but it would report all the generic
-# properties as additional properties.
-# additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
index 0eccf5551786..8cd08cfb25be 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/allwinner,sun7i-a20-sc-nmi.yaml
@@ -52,9 +52,7 @@ required:
   - interrupts
   - interrupt-controller
 
-# FIXME: We should set it, but it would report all the generic
-# properties as additional properties.
-# additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml
index 98c1bdde9a86..dea36d68cdbe 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-ir.yaml
@@ -60,9 +60,7 @@ required:
   - clocks
   - clock-names
 
-# FIXME: We should set it, but it would report all the generic
-# properties as additional properties.
-# additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
index d2d4308596b8..64bca41031d5 100644
--- a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
+++ b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
@@ -85,6 +85,8 @@ required:
   - clocks
   - clock-names
 
+unevaluatedProperties: false
+
 examples:
   - |
     mmc0: mmc@1c0f000 {
@@ -97,8 +99,4 @@ examples:
         cd-gpios = <&pio 7 1 0>;
     };
 
-# FIXME: We should set it, but it would report all the generic
-# properties as additional properties.
-# additionalProperties: false
-
 ...
diff --git a/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
index 792196bf4abd..ae4796ec50a0 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
@@ -38,6 +38,8 @@ required:
   - phy-handle
   - allwinner,sram
 
+unevaluatedProperties: false
+
 examples:
   - |
     emac: ethernet@1c0b000 {
@@ -49,8 +51,4 @@ examples:
         allwinner,sram = <&emac_sram 1>;
     };
 
-# FIXME: We should set it, but it would report all the generic
-# properties as additional properties.
-# additionalProperties: false
-
 ...
diff --git a/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml
index df24d9d969f7..e5562c525ed9 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-mdio.yaml
@@ -49,6 +49,8 @@ required:
   - compatible
   - reg
 
+unevaluatedProperties: false
+
 examples:
   - |
     mdio@1c0b080 {
@@ -63,8 +65,4 @@ examples:
         };
     };
 
-# FIXME: We should set it, but it would report all the generic
-# properties as additional properties.
-# additionalProperties: false
-
 ...
diff --git a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
index ef446ae166f3..f683b7104e3e 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
@@ -49,6 +49,8 @@ required:
   - clock-names
   - phy-mode
 
+unevaluatedProperties: false
+
 examples:
   - |
     gmac: ethernet@1c50000 {
@@ -61,8 +63,4 @@ examples:
         phy-mode = "mii";
     };
 
-# FIXME: We should set it, but it would report all the generic
-# properties as additional properties.
-# additionalProperties: false
-
 ...
diff --git a/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
index 3fb0714e761e..11654d4b80fb 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun8i-a83t-emac.yaml
@@ -184,6 +184,8 @@ allOf:
             - mdio-parent-bus
             - mdio@1
 
+unevaluatedProperties: false
+
 examples:
   - |
     ethernet@1c0b000 {
@@ -314,8 +316,4 @@ examples:
         };
     };
 
-# FIXME: We should set it, but it would report all the generic
-# properties as additional properties.
-# additionalProperties: false
-
 ...
diff --git a/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml b/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
index 1084e9d2917d..659b02002a35 100644
--- a/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
+++ b/Documentation/devicetree/bindings/nvmem/allwinner,sun4i-a10-sid.yaml
@@ -31,9 +31,7 @@ required:
   - compatible
   - reg
 
-# FIXME: We should set it, but it would report all the generic
-# properties as additional properties.
-# additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
