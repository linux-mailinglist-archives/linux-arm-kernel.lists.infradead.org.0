Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C9E7176EDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 06:39:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MuQpuC6UOFHyPh6gEZlXe0H4nOfqh2j+aJp7Jr2n5Bc=; b=gzsSnB3O0n5xFp
	O+4rg/HbXqtzO7sQ32V/Oe6jXcxr2/UcwykCerAD745TAkXg1yJu2n0at0hlc20q32E1bd/0R60oh
	DY3BQzXz5pZKoWjxyUEUvlELj3C99ipDedZ81CuPpsMNVeRuYOBmEScd78dccAde5gaf2J0JyC4SW
	6UopAouXdE7uMYZ8Yirn3XRz2hlv7NlscrsB/exPneE+wLoCk/Yy20NtO8oYnN6ZcszdtHFjuNqME
	yRm/r8i9zsyJ2OcdZkvBzWl2n8KxwP3F8cdNdH+wjUDOYnJBhgI0um9cFuXK6OnDm4eET/H8I3bFu
	WErdpCokJmrlLNvNNOew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j90Gk-0001y1-6W; Tue, 03 Mar 2020 05:39:02 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j90Fw-00019x-4I; Tue, 03 Mar 2020 05:38:13 +0000
X-UUID: 9a6a8155633c4da099a0dc27dd6e24f0-20200302
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=m2CcW1V41TM32eWWCi7FfNQYoqIdQyWhSRyF/aJpfA4=; 
 b=iL3BjG2oQ8RUXRl87N0Vi5mLolv6LduKYM7IbOQySXyoQWyFcH6xTlgXinBf6VC3N9grg/JyI2iyH4Hqje0GzFxLo70whh1V3birAfHBKMxI0jCpIJignZBXaDhKndSSrAi2ZXh18y2frHWWN1TqOtO2377RF2GwMzQg0McODFw=;
X-UUID: 9a6a8155633c4da099a0dc27dd6e24f0-20200302
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1711637697; Mon, 02 Mar 2020 21:38:08 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Mar 2020 21:28:56 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 3 Mar 2020 13:28:21 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (10.16.6.18) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Tue, 3 Mar 2020 13:28:22 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v12 4/6] dt-bindings: display: mediatek: convert the document
 format from txt to yaml
Date: Tue, 3 Mar 2020 13:27:20 +0800
Message-ID: <20200303052722.94795-5-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200303052722.94795-1-jitao.shi@mediatek.com>
References: <20200303052722.94795-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4EE687C2724234A765D419272ADE765BFF1D0D518E863FE5D1C5D83969F78B132000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_213812_217308_18CB8E62 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Jitao Shi <jitao.shi@mediatek.com>,
 srv_heupstream@mediatek.com, huijuan.xie@mediatek.com, stonea168@163.com,
 cawa.cheng@mediatek.com, linux-mediatek@lists.infradead.org,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 .../display/mediatek/mediatek,dpi.txt         | 45 ---------
 .../display/mediatek/mediatek,dpi.yaml        | 92 +++++++++++++++++++
 2 files changed, 92 insertions(+), 45 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
 create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
deleted file mode 100644
index 4eeead1d39db..000000000000
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
+++ /dev/null
@@ -1,45 +0,0 @@
-Mediatek DPI Device
-===================
-
-The Mediatek DPI function block is a sink of the display subsystem and
-provides 8-bit RGB/YUV444 or 8/10/10-bit YUV422 pixel data on a parallel
-output bus.
-
-Required properties:
-- compatible: "mediatek,<chip>-dpi"
-  the supported chips are mt2701 , mt8173 and mt8183.
-- reg: Physical base address and length of the controller's registers
-- interrupts: The interrupt signal from the function block.
-- clocks: device clocks
-  See Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
-- clock-names: must contain "pixel", "engine", and "pll"
-- port: Output port node with endpoint definitions as described in
-  Documentation/devicetree/bindings/graph.txt. This port should be connected
-  to the input port of an attached HDMI or LVDS encoder chip.
-
-Optional properties:
-- pinctrl-names: Contain "gpiomode" and "dpimode".
-  pinctrl-names see Documentation/devicetree/bindings/pinctrl/pinctrl-bindings.txt
-- pclk-sample: refer Documentation/devicetree/bindings/media/video-interfaces.txt.
-
-Example:
-
-dpi0: dpi@1401d000 {
-	compatible = "mediatek,mt8173-dpi";
-	reg = <0 0x1401d000 0 0x1000>;
-	interrupts = <GIC_SPI 194 IRQ_TYPE_LEVEL_LOW>;
-	clocks = <&mmsys CLK_MM_DPI_PIXEL>,
-		 <&mmsys CLK_MM_DPI_ENGINE>,
-		 <&apmixedsys CLK_APMIXED_TVDPLL>;
-	clock-names = "pixel", "engine", "pll";
-	pinctrl-names = "active", "idle";
-	pinctrl-0 = <&dpi_pin_func>;
-	pinctrl-1 = <&dpi_pin_idle>;
-
-	port {
-		dpi0_out: endpoint {
-			pclk-sample = <0>;
-			remote-endpoint = <&hdmi0_in>;
-		};
-	};
-};
diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
new file mode 100644
index 000000000000..eb2b0cb5eb5a
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.yaml
@@ -0,0 +1,92 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/mediatek,dpi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: mediatek DPI Controller Device Tree Bindings
+
+maintainers:
+  - CK Hu <ck.hu@mediatek.com>
+  - Jitao shi <jitao.shi@mediatek.com>
+
+description: |
+  The Mediatek DPI function block is a sink of the display subsystem and
+  provides 8-bit RGB/YUV444 or 8/10/10-bit YUV422 pixel data on a parallel
+  output bus.
+
+properties:
+  compatible:
+    enum:
+      - mediatek,mt2701-dpi
+      - mediatek,mt8173-dpi
+      - mediatek,mt8183-dpi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: Pixel Clock
+      - description: Engine Clock
+      - description: DPI PLL
+
+  clock-names:
+    items:
+      - const: pixel
+      - const: engine
+      - const: pll
+
+  pinctrl-names:
+    items:
+      - const: default
+      - const: sleep
+
+  port:
+    type: object
+    description:
+      Output port node with endpoint definitions as described in
+      Documentation/devicetree/bindings/graph.txt. This port should be connected
+      to the input port of an attached HDMI or LVDS encoder chip.
+
+    properties:
+      pclk-sample:
+      description: refer Documentation/devicetree/bindings/media/video-interfaces.txt.
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+  - port
+
+additionalProperties: false
+
+examples:
+  - |
+    dpi0: dpi@1401d000 {
+        compatible = "mediatek,mt8173-dpi";
+        reg = <0 0x1401d000 0 0x1000>;
+        interrupts = <GIC_SPI 194 IRQ_TYPE_LEVEL_LOW>;
+        clocks = <&mmsys CLK_MM_DPI_PIXEL>,
+             <&mmsys CLK_MM_DPI_ENGINE>,
+             <&apmixedsys CLK_APMIXED_TVDPLL>;
+        clock-names = "pixel", "engine", "pll";
+        pinctrl-names = "default", "sleep";
+        pinctrl-0 = <&dpi_pin_func>;
+        pinctrl-1 = <&dpi_pin_idle>;
+
+        port {
+            reg = <0>;
+            dpi0_out: endpoint {
+                pclk-sample = <0>;
+                remote-endpoint = <&hdmi0_in>;
+            };
+        };
+    };
+
+...
-- 
2.21.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
