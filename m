Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE12DE2647
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 00:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=buCYEVmzFBgX6cgnYhLEKHI8PVoEeFIl/kM/ySRCfQ8=; b=V5zxoOiephis/S
	2HgF6+WzcQa0FAIgww9RkjSq8k0IvVBBiIrRz2O305y6VDMmtqb647j+t5hlORn1czogV8tkROgzl
	ydIJ/1P5xeFZYO9rl4comYCxPI8yI/dzhjPPFQb4hYpMY6b2jWiBQNhS4zIofYHdmCJKlH+jsZYhZ
	w6ST7iwjwjWxPMRy7dPZUkNDI+bXCDXGiPfL5vMaC74U/Jfb67z9Api/bh8eQNDh3lPjtqENHDaMe
	TRziTZgQWJR3ecUfSiK8BJOqEcgi+hFxSdL+3KtwPC15O0In0nux2+Y/el42eNcdaDhvHVNtKL7aV
	S1S2J1HjANHK1YdgCF+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNOuQ-0005vX-Dh; Wed, 23 Oct 2019 22:15:14 +0000
Received: from mailoutvs8.siol.net ([185.57.226.199] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNOt8-0004xl-Ax
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 22:13:56 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 2CF1E523303;
 Thu, 24 Oct 2019 00:13:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 3cria4v5i2w4; Thu, 24 Oct 2019 00:13:51 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id C9DD8523102;
 Thu, 24 Oct 2019 00:13:51 +0200 (CEST)
Received: from localhost.localdomain (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: 031275009)
 by mail.siol.net (Postfix) with ESMTPSA id 81ABC523303;
 Thu, 24 Oct 2019 00:13:49 +0200 (CEST)
From: Jernej Skrabec <jernej.skrabec@siol.net>
To: mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v5 4/6] dt-bindings: media: Add Allwinner H3 Deinterlace
 binding
Date: Thu, 24 Oct 2019 00:13:30 +0200
Message-Id: <20191023221332.3674175-5-jernej.skrabec@siol.net>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191023221332.3674175-1-jernej.skrabec@siol.net>
References: <20191023221332.3674175-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_151354_740011_5FCDACA2 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.199 listed in list.dnswl.org]
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
 .../media/allwinner,sun8i-h3-deinterlace.yaml | 76 +++++++++++++++++++
 1 file changed, 76 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml b/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
new file mode 100644
index 000000000000..2e40f700e84f
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/allwinner,sun8i-h3-deinterlace.yaml
@@ -0,0 +1,76 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/media/allwinner,sun8i-h3-deinterlace.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Allwinner H3 Deinterlace Device Tree Bindings
+
+maintainers:
+  - Jernej Skrabec <jernej.skrabec@siol.net>
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
