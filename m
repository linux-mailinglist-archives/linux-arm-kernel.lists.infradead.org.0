Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37A87169E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 20:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vl8+O+1vdkAKfVPX4a+JQ5BvBndJH4Tk+sAXE7ufTaQ=; b=uI6PuIVPrNE8Wd
	xX0mbt8dw5IObuer8pnuqj5pi4X/OCvuUsMXkqHAc/S1m6jqzj0Sh9YeqREQqZfJoyG18ctaxz5dF
	ZQxvbTaBJQYLxwbMMTrQ2xBN67usXMRyfhK+Eju7bqCQ61mxF5F3oE9YyARtwDmetKnhnbPdijXK1
	f4n4YsraPM0XjHSLWuGxWKiqG0IrpHOeEMZQH0iCdJznJxYwGqXzAXcUOTle3AHuJF/ncz+wNKqvx
	Md0gKTbGh3nc7a8TRzKToV8HnlW/NdZmHH19FP/+s3cnaBHBTGgaFtS0MlWRmsakjcuj3vh7Z8cf6
	TirlxwYXx+exce1uLxlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4VX-0005RU-Om; Tue, 07 May 2019 18:08:03 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4VF-0005Hm-Ro
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 18:07:47 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id E7A27C000B;
 Tue,  7 May 2019 18:07:38 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v2 2/2] dt-bindings: sound: sun4i-spdif: Document that the RX
 channel can be missing
Date: Tue,  7 May 2019 20:07:29 +0200
Message-Id: <d9afb19c32f8b9b2c40c8d4c0c3df74bff0ccf35.1557252411.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <dc84c7e9ce272109052f553a5e050bfe1a09e9d6.1557252411.git-series.maxime.ripard@bootlin.com>
References: <dc84c7e9ce272109052f553a5e050bfe1a09e9d6.1557252411.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_110746_044892_E86EE057 
X-CRM114-Status: GOOD (  10.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The H3 and compatibles controllers don't have any reception capabilities,
even though it was never documented as such in the binding before.

Therefore, on those controllers, we don't have the option to set an RX DMA
channel.

This was already done in the DTSI, but the binding itself was never
updated. Let's add a special case in the schemas.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

---

Changes from v1:
  - switch to a draft7 conditional
---
 Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml | 45 ++++++++++++++++++++++++++++++++++++---------
 1 file changed, 36 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
index 5698e5de5e31..8f1bc1a1af96 100644
--- a/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
+++ b/Documentation/devicetree/bindings/sound/allwinner,sun4i-a10-spdif.yaml
@@ -44,15 +44,8 @@ properties:
       - const: apb
       - const: spdif
 
-  dmas:
-    items:
-      - description: RX DMA Channel
-      - description: TX DMA Channel
-
-  dma-names:
-    items:
-      - const: rx
-      - const: tx
+  dmas: true
+  dma-names: true
 
   resets:
     maxItems: 1
@@ -70,6 +63,40 @@ allOf:
       required:
         - resets
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: allwinner,sun8i-h3-spdif
+
+    then:
+      properties:
+        dmas:
+          maxItems: 1
+          items:
+            - description: RX DMA Channel
+
+        dma-names:
+          maxItems: 1
+          items:
+            - const: tx
+
+    else:
+      properties:
+        dmas:
+          minItems: 2
+          maxItems: 2
+          items:
+            - description: RX DMA Channel
+            - description: TX DMA Channel
+
+        dma-names:
+          minItems: 2
+          maxItems: 2
+          items:
+            - const: rx
+            - const: tx
+
 required:
   - "#sound-dai-cells"
   - compatible
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
