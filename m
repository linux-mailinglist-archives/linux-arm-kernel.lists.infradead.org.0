Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A334DD9A19
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 21:29:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BM3CWFh7aHGdCa8YG+KhvCKFYQ7/jC5PrN0qmoiAdYU=; b=N1fMnM2/uoHXto
	alBw1xhrQoO9p9X5v0evai+Q1UghJArdtEPzgQcmUqfAX2Xr1H49GDsvIxtQSkHxuJkMJwx3rnVuu
	Fl3SB6qmw75rsuuYBq1Bh8zteotOyYlVX4h749u5CFMjlLVuB1rwG8gnpOQE4TnW241DDdSHSwuVf
	TcxMti9eDHIGUBJQW3pix56oFFXY4RyeIQCKTkIpvfull8PfBP909kvTLindFC8+CUuU6YPps2mNo
	4DcTFHHdCeYjh+WURPrIVcP635KFF6rXeZzPw4vB7XbgRsUMIhSo9A+5sEtdGH10VcFiub15GUhH/
	RxdlatWTuQlk+PE9D0Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKozU-0006tu-GO; Wed, 16 Oct 2019 19:29:48 +0000
Received: from mailoutvs52.siol.net ([185.57.226.243] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKoyD-0005xk-4m
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 19:28:32 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id ED39E524483;
 Wed, 16 Oct 2019 21:28:26 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id kngUXKedAVqz; Wed, 16 Oct 2019 21:28:26 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 981B252459B;
 Wed, 16 Oct 2019 21:28:26 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 46B43524483;
 Wed, 16 Oct 2019 21:28:24 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v3 4/6] dt-bindings: media: Add Allwinner H3 Deinterlace
 binding
Date: Wed, 16 Oct 2019 21:28:05 +0200
Message-Id: <20191016192807.1278987-5-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191016192807.1278987-1-jernej.skrabec@siol.net>
References: <20191016192807.1278987-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_122829_520471_9D194D5E 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.243 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org,
 hverkuil@xs4all.nl, linux-sunxi@googlegroups.com, robh+dt@kernel.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allwinner H3 Deinterlace core is used for deinterlacing interlaced video
content. Core can also be found on some later SoCs, like H5 and R40.

Acked-by: Maxime Ripard <mripard@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
---
 .../media/allwinner,sun8i-h3-deinterlace.yaml | 75 +++++++++++++++++++
 1 file changed, 75 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml b/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
new file mode 100644
index 000000000000..2d27643340ac
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
@@ -0,0 +1,75 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/allwinner,sun8i-h3-deinterlace.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner H3 Deinterlace Device Tree Bindings
+
+maintainers:
+  - Chen-Yu Tsai <wens@csie.org>
+  - Maxime Ripard <mripard@kernel.org>
+
+description: |-
+  The Allwinner H3 and later has a deinterlace core used for
+  deinterlacing interlaced video content.
+
+properties:
+  compatible:
+    const: allwinner,sun8i-h3-deinterlace
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Deinterlace interface clock
+      - description: Deinterlace module clock
+      - description: Deinterlace DRAM clock
+
+  clock-names:
+    items:
+      - const: bus
+      - const: mod
+      - const: ram
+
+  resets:
+    maxItems: 1
+
+  interconnects:
+    maxItems: 1
+
+  interconnect-names:
+    const: dma-mem
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
+    #include <dt-bindings/clock/sun8i-h3-ccu.h>
+    #include <dt-bindings/reset/sun8i-h3-ccu.h>
+
+    deinterlace: deinterlace@1400000 {
+        compatible = "allwinner,sun8i-h3-deinterlace";
+        reg = <0x01400000 0x20000>;
+        clocks = <&ccu CLK_BUS_DEINTERLACE>,
+                 <&ccu CLK_DEINTERLACE>,
+                 <&ccu CLK_DRAM_DEINTERLACE>;
+        clock-names = "bus", "mod", "ram";
+        resets = <&ccu RST_BUS_DEINTERLACE>;
+        interrupts = <GIC_SPI 93 IRQ_TYPE_LEVEL_HIGH>;
+        interconnects = <&mbus 9>;
+        interconnect-names = "dma-mem";
+    };
+
+...
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
