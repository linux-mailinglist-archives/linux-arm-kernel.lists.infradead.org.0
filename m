Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F96B1491EA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 00:22:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xyznixKSpjf944HeR5DOhqy/+yO8pIoj10YMJk72quo=; b=XjDHE4QHC1ay1q
	35khMjM2n9xvfyhl4pXwASWcgpadQDEoW8eeQRms9K/m8jHV/xTZKUvT537PmH2SRxmDEw42OTiDn
	hTPsmPwJ+7dx72b1OaFZ9DCf6qHOJ9SuKqfvl3SbADDE9+BCLpMnQs4j71ob27sU67Szdvhq1awDn
	uj70tLbgKGGvpTPnmCOaxnDVHi2bP0Pr16WdvW5c8Xiweh1iC3z47f4K3MwFDEzH/fxFnA3RQmczK
	H+2KmoYqiRmf/rbDOQnevxJcIp9GvIFfnubbFW2pCU0Wcwe6m/wn69ZeO0vXG0RTauGiCxXB1dkBB
	/BUR9h3Qxb+U4HzZXPNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv8H8-0002nY-IZ; Fri, 24 Jan 2020 23:22:06 +0000
Received: from mailoutvs14.siol.net ([185.57.226.205] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv8Fj-0001cE-94
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 23:20:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id D4B425228E7;
 Sat, 25 Jan 2020 00:20:37 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id ZwZR8UCKFtR8; Sat, 25 Jan 2020 00:20:37 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 7B09F5228CF;
 Sat, 25 Jan 2020 00:20:37 +0100 (CET)
Received: from localhost.localdomain (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: 031275009)
 by mail.siol.net (Zimbra) with ESMTPSA id 250595228E7;
 Sat, 25 Jan 2020 00:20:35 +0100 (CET)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH 5/8] media: dt-bindings: media: Add Allwinner A83T Rotate
 driver
Date: Sat, 25 Jan 2020 00:20:11 +0100
Message-Id: <20200124232014.574989-6-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200124232014.574989-1-jernej.skrabec@siol.net>
References: <20200124232014.574989-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_152039_688175_807C367A 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.205 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, robh+dt@kernel.org, hverkuil-cisco@xs4all.nl,
 mchehab@kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some Allwinner SoCs like A83T and A64 contain rotate core which can
rotate and flip images.

Add a binding for it.

Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../allwinner,sun8i-a83t-de2-rotate.yaml      | 70 +++++++++++++++++++
 1 file changed, 70 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-de2-rotate.yaml

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-de2-rotate.yaml b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-de2-rotate.yaml
new file mode 100644
index 000000000000..75196d11da58
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/allwinner,sun8i-a83t-de2-rotate.yaml
@@ -0,0 +1,70 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/allwinner,sun8i-a83t-de2-rotate.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner A83T DE2 Rotate Device Tree Bindings
+
+maintainers:
+  - Jernej Skrabec <jernej.skrabec@siol.net>
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+description: |-
+  The Allwinner A83T and A64 have a rotation core used for
+  rotating and flipping images.
+
+properties:
+  compatible:
+    oneOf:
+      - const: allwinner,sun8i-a83t-de2-rotate
+      - items:
+        - const: allwinner,sun50i-a64-de2-rotate
+        - const: allwinner,sun8i-a83t-de2-rotate
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Rotate interface clock
+      - description: Rotate module clock
+
+  clock-names:
+    items:
+      - const: bus
+      - const: mod
+
+  resets:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/sun8i-de2.h>
+    #include <dt-bindings/reset/sun8i-de2.h>
+
+    rotate: rotate@1020000 {
+        compatible = "allwinner,sun8i-a83t-de2-rotate";
+        reg = <0x1020000 0x10000>;
+        interrupts = <GIC_SPI 92 IRQ_TYPE_LEVEL_HIGH>;
+        clocks = <&display_clocks CLK_BUS_ROT>,
+                 <&display_clocks CLK_ROT>;
+        clock-names = "bus",
+                      "mod";
+        resets = <&display_clocks RST_ROT>;
+    };
+
+...
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
