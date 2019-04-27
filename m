Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E10EB28B
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 05:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K8cjyQ/YyPbo56uJ7jWfAhLrXPXoSfmxtEA0zMJ5R5c=; b=iW//bbTXqgU1H/
	9qfJo5KE5BqwPckiGMaFfmAwhqY+KG7Zd0vtxtgyoXaNDG1CXReXAE+1mHtM0F2tKSoJ2Tnoh7V+i
	Ahej/IIVmprQrUVAldeY/piSc2DotzgnL5OpgnLQpJtMQiBLivbkcCdBuTUAOMunSGg3ArzFGe88I
	NBSBrz2qYYhfeGU0blp2R5CCt1N7g46WQr9EGOT9COZE6sES27UiApf1YGUOcSUJCFt4TuZ+LI6Hq
	ojspwtI6iTNyJYpYnDtp8ENPGeFaBNSjh8mVoHiAiQUjAybqOzW5XPEZq0gj/H8IaC0LJMhryj8dU
	0eCxvMQC2RVV3GY1bmfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKE9c-00013o-Hk; Sat, 27 Apr 2019 03:37:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKE97-0000aA-91; Sat, 27 Apr 2019 03:37:06 +0000
X-UUID: 27a1c3f3dccb4e2b970327c0310bdf6c-20190426
X-UUID: 27a1c3f3dccb4e2b970327c0310bdf6c-20190426
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <long.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 276629885; Fri, 26 Apr 2019 19:36:54 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 26 Apr 2019 20:36:52 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 27 Apr 2019 11:36:44 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 27 Apr 2019 11:36:43 +0800
From: Long Cheng <long.cheng@mediatek.com>
To: Vinod Koul <vkoul@kernel.org>, Randy Dunlap <rdunlap@infradead.org>, "Rob
 Herring" <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Ryder Lee
 <ryder.lee@mediatek.com>, Sean Wang <sean.wang@kernel.org>, Nicolas Boichat
 <drinkcat@chromium.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 3/4] dt-bindings: dma: uart: rename binding
Date: Sat, 27 Apr 2019 11:36:32 +0800
Message-ID: <1556336193-15198-4-git-send-email-long.cheng@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1556336193-15198-1-git-send-email-long.cheng@mediatek.com>
References: <1556336193-15198-1-git-send-email-long.cheng@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190426_203701_991249_1DF1DB33 
X-CRM114-Status: GOOD (  13.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Zhenbao Liu <zhenbao.liu@mediatek.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 YT Shen <yt.shen@mediatek.com>, Long Cheng <long.cheng@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, dmaengine@vger.kernel.org,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The filename matches mtk-uart-apdma.c.
So using "mtk-uart-apdma.txt" should be better.
And add some property.

Signed-off-by: Long Cheng <long.cheng@mediatek.com>
---
 .../devicetree/bindings/dma/8250_mtk_dma.txt       |   33 ------------
 .../devicetree/bindings/dma/mtk-uart-apdma.txt     |   55 ++++++++++++++++++++
 2 files changed, 55 insertions(+), 33 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/dma/8250_mtk_dma.txt
 create mode 100644 Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt

diff --git a/Documentation/devicetree/bindings/dma/8250_mtk_dma.txt b/Documentation/devicetree/bindings/dma/8250_mtk_dma.txt
deleted file mode 100644
index 3fe0961..0000000
--- a/Documentation/devicetree/bindings/dma/8250_mtk_dma.txt
+++ /dev/null
@@ -1,33 +0,0 @@
-* Mediatek UART APDMA Controller
-
-Required properties:
-- compatible should contain:
-  * "mediatek,mt2712-uart-dma" for MT2712 compatible APDMA
-  * "mediatek,mt6577-uart-dma" for MT6577 and all of the above
-
-- reg: The base address of the APDMA register bank.
-
-- interrupts: A single interrupt specifier.
-
-- clocks : Must contain an entry for each entry in clock-names.
-  See ../clocks/clock-bindings.txt for details.
-- clock-names: The APDMA clock for register accesses
-
-Examples:
-
-	apdma: dma-controller@11000380 {
-		compatible = "mediatek,mt2712-uart-dma";
-		reg = <0 0x11000380 0 0x400>;
-		interrupts = <GIC_SPI 63 IRQ_TYPE_LEVEL_LOW>,
-			     <GIC_SPI 64 IRQ_TYPE_LEVEL_LOW>,
-			     <GIC_SPI 65 IRQ_TYPE_LEVEL_LOW>,
-			     <GIC_SPI 66 IRQ_TYPE_LEVEL_LOW>,
-			     <GIC_SPI 67 IRQ_TYPE_LEVEL_LOW>,
-			     <GIC_SPI 68 IRQ_TYPE_LEVEL_LOW>,
-			     <GIC_SPI 69 IRQ_TYPE_LEVEL_LOW>,
-			     <GIC_SPI 70 IRQ_TYPE_LEVEL_LOW>;
-		clocks = <&pericfg CLK_PERI_AP_DMA>;
-		clock-names = "apdma";
-		#dma-cells = <1>;
-	};
-
diff --git a/Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt b/Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt
new file mode 100644
index 0000000..e0424b3
--- /dev/null
+++ b/Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt
@@ -0,0 +1,55 @@
+* Mediatek UART APDMA Controller
+
+Required properties:
+- compatible should contain:
+  * "mediatek,mt2712-uart-dma" for MT2712 compatible APDMA
+  * "mediatek,mt6577-uart-dma" for MT6577 and all of the above
+
+- reg: The base address of the APDMA register bank.
+
+- interrupts: A single interrupt specifier.
+ One interrupt per dma-requests, or 8 if no dma-requests property is present
+
+- dma-requests: The number of DMA channels
+
+- clocks : Must contain an entry for each entry in clock-names.
+  See ../clocks/clock-bindings.txt for details.
+- clock-names: The APDMA clock for register accesses
+
+- mediatek,dma-33bits: Present if the DMA requires support
+
+Examples:
+
+	apdma: dma-controller@11000400 {
+		compatible = "mediatek,mt2712-uart-dma";
+		reg = <0 0x11000400 0 0x80>,
+		      <0 0x11000480 0 0x80>,
+		      <0 0x11000500 0 0x80>,
+		      <0 0x11000580 0 0x80>,
+		      <0 0x11000600 0 0x80>,
+		      <0 0x11000680 0 0x80>,
+		      <0 0x11000700 0 0x80>,
+		      <0 0x11000780 0 0x80>,
+		      <0 0x11000800 0 0x80>,
+		      <0 0x11000880 0 0x80>,
+		      <0 0x11000900 0 0x80>,
+		      <0 0x11000980 0 0x80>;
+		interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_SPI 104 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_SPI 105 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_SPI 106 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_SPI 107 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_SPI 108 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_SPI 109 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_SPI 110 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_SPI 111 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_SPI 112 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_SPI 113 IRQ_TYPE_LEVEL_LOW>,
+			     <GIC_SPI 114 IRQ_TYPE_LEVEL_LOW>;
+		dma-requests = <12>;
+		clocks = <&pericfg CLK_PERI_AP_DMA>;
+		clock-names = "apdma";
+		mediatek,dma-33bits;
+		#dma-cells = <1>;
+	};
+
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
