Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E957D1C2EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 08:15:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6zCM47DXr8mAKGOltzUdE6BdYJ/aAIij6uQ69csUyp0=; b=Bb0NTeVJuUiUGH
	NArcYfFPws8B5mX8cBn8I3syGDIcxnc9+vXfmNIjvJrvanCibcfB8q/ml51PxGSEL5prqLrOA14BY
	/xUcA+s5HVhA8QvwC1klxwl+H3We2piK87qZ0f1adZyAFCk4Gtwpy3vKCgChpqhcbd9nipwF3aNrj
	W4JuyzILSVau6N1ikodm0+Qr0ZjSgb6BH/shwvrCfJml8n0WpVNulSYIuQUXUBy9aadiF2f/jbql+
	CU8TwUGGc4u5f8bn0hcowK0qQa8VvMd9C31kkmpTrgx99oOxBLOfh15TcY6gkMllTsIVrMqALlXF8
	RuqsBwcpVnSX617n76iQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQQik-0001do-SW; Tue, 14 May 2019 06:15:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQQhT-0007RI-BR; Tue, 14 May 2019 06:14:12 +0000
X-UUID: 5ef0171d622344dbb32e37f605a036c2-20190513
X-UUID: 5ef0171d622344dbb32e37f605a036c2-20190513
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 999342315; Mon, 13 May 2019 22:13:57 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 13 May 2019 23:13:56 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 14 May 2019 14:13:53 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 14 May 2019 14:13:54 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v3 01/13] dt-bindings: media: Add binding for MT2712 MIPI-CSI2
Date: Tue, 14 May 2019 14:13:38 +0800
Message-ID: <1557814430-9675-2-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557814430-9675-1-git-send-email-stu.hsieh@mediatek.com>
References: <1557814430-9675-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 52F22A3B8030EDB752AF9E792A3AD372CBFC3B55B8488575710DCC25A6C3F40E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_231407_619547_FFDF870E 
X-CRM114-Status: GOOD (  13.18  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Stu Hsieh <stu.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add MIPI-CSI2 dt-binding for Mediatek MT2712 SoC

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 .../bindings/media/mediatek-mipicsi-camsv.txt | 53 ++++++++++++++++++
 .../media/mediatek-mipicsi-common.txt         | 19 +++++++
 .../bindings/media/mediatek-mipicsi.txt       | 54 +++++++++++++++++++
 3 files changed, 126 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-mipicsi-camsv.txt
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-mipicsi-common.txt
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-mipicsi.txt

diff --git a/Documentation/devicetree/bindings/media/mediatek-mipicsi-camsv.txt b/Documentation/devicetree/bindings/media/mediatek-mipicsi-camsv.txt
new file mode 100644
index 000000000000..5f34974f12ac
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek-mipicsi-camsv.txt
@@ -0,0 +1,53 @@
+* Mediatek MIPI-CSI2 receiver camsv
+
+Mediatek MIPI-CSI2 receiver camsv transfer data to DRAM in Mediatek SoCs
+
+Required properties:
+- reg : physical base address of the mipicsi receiver registers and length of
+  memory mapped region.
+- clocks: device clocks, see
+  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
+- interrupts : interrupt number to the interrupt controller.
+
+Example:
+	seninf1_mux_camsv0: seninf_mux_camsv@15002100 {
+		reg = <0 0x15002120 0 0x40>,
+		      <0 0x15004000 0 0x1000>;
+		clocks = <&imgsys CLK_IMG_CAM_SV_EN>;
+		interrupts = <GIC_SPI 222 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	seninf2_mux_camsv1: seninf_mux_camsv@15002500 {
+		reg = <0 0x15002520 0 0x40>,
+		      <0 0x15005000 0 0x1000>;
+		clocks = <&imgsys CLK_IMG_CAM_SV_EN>;
+		interrupts = <GIC_SPI 223 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	seninf3_mux_camsv2: seninf_mux_camsv@15002900 {
+		reg = <0 0x15002920 0 0x40>,
+		      <0 0x15006000 0 0x1000>;
+		clocks = <&imgsys CLK_IMG_CAM_SV1_EN>;
+		interrupts = <GIC_SPI 268 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	seninf4_mux_camsv3: seninf_mux_camsv@15002D00 {
+		reg = <0 0x15002D20 0 0x40>,
+		      <0 0x15007000 0 0x1000>;
+		clocks = <&imgsys CLK_IMG_CAM_SV1_EN>;
+		interrupts = <GIC_SPI 269 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	seninf5_mux_camsv4: seninf_mux_camsv@15003100 {
+		reg = <0 0x15003120 0 0x40>,
+		      <0 0x15008000 0 0x1000>;
+		clocks = <&imgsys CLK_IMG_CAM_SV2_EN>;
+		interrupts = <GIC_SPI 270 IRQ_TYPE_LEVEL_LOW>;
+	};
+
+	seninf6_mux_camsv5: seninf_mux_camsv@15003500 {
+		reg = <0 0x15003520 0 0x40>,
+		      <0 0x15009000 0 0x1000>;
+		clocks = <&imgsys CLK_IMG_CAM_SV2_EN>;
+		interrupts = <GIC_SPI 271 IRQ_TYPE_LEVEL_LOW>;
+	};
diff --git a/Documentation/devicetree/bindings/media/mediatek-mipicsi-common.txt b/Documentation/devicetree/bindings/media/mediatek-mipicsi-common.txt
new file mode 100644
index 000000000000..a67c744b75f0
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek-mipicsi-common.txt
@@ -0,0 +1,19 @@
+* Mediatek MIPI-CSI2 receiver common
+
+Mediatek MIPI-CSI2 receiver is the MIPI Signal capture hardware present in Mediatek SoCs
+
+Required properties:
+- compatible: should be "mediatek,mt2712-mipicsi-common"
+- reg : physical base address of the mipicsi receiver registers and length of
+  memory mapped region.
+- clocks: device clocks, see
+  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
+
+
+Example:
+	mipicsi: mipicsi@15002000 {
+		compatible = "mediatek,mt2712-mipicsi-common", "syscon";
+		reg = <0 0x15002000 0 0x10>;
+		clocks = <&imgsys CLK_IMG_SENINF_CAM_EN>,
+			 <&imgsys CLK_IMG_SENINF_SCAM_EN>;
+	};
diff --git a/Documentation/devicetree/bindings/media/mediatek-mipicsi.txt b/Documentation/devicetree/bindings/media/mediatek-mipicsi.txt
new file mode 100644
index 000000000000..24741ed62b25
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek-mipicsi.txt
@@ -0,0 +1,54 @@
+* Mediatek MIPI-CSI2 receiver
+
+Mediatek MIPI-CSI2 receiver is the MIPI Signal capture hardware present in Mediatek SoCs
+
+Required properties:
+- compatible: should be "mediatek,mt2712-mipicsi"
+- reg : physical base address of the mipicsi receiver registers and length of
+  memory mapped region.
+- power-domains: a phandle to the power domain, see
+  Documentation/devicetree/bindings/power/power_domain.txt for details.
+- mediatek,larb: must contain the local arbiters in the current Socs, see
+  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
+  for details.
+- iommus: should point to the respective IOMMU block with master port as
+  argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
+  for details.
+- mediatek,seninf_mux_camsv: seninf_mux_camsv the data go through of the mipicsi port
+- mediatek,mipicsiid: the id of the mipicsi port
+- mediatek,mipicsi: the common component of the two mipicsi port
+
+Example:
+	mipicsi0: mipicsi@10217000 {
+		compatible = "mediatek,mt2712-mipicsi";
+		mediatek,mipicsi = <&mipicsi>;
+		iommus = <&iommu0 M4U_PORT_CAM_DMA0>,
+			 <&iommu0 M4U_PORT_CAM_DMA1>;
+		mediatek,larb = <&larb2>;
+		power-domains = <&scpsys MT2712_POWER_DOMAIN_ISP>;
+
+		mediatek,seninf_mux_camsv = <&seninf1_mux_camsv0
+					     &seninf2_mux_camsv1
+					     &seninf3_mux_camsv2
+					     &seninf4_mux_camsv3>;
+		reg = <0 0x10217000 0 0x60>,
+		      <0 0x15002100 0 0x4>,
+		      <0 0x15002300 0 0x100>;
+		mediatek,mipicsiid = <0>;
+		status="disabled";
+	};
+
+	mipicsi1: mipicsi@10218000 {
+		compatible = "mediatek,mt2712-mipicsi";
+		mediatek,mipicsi = <&mipicsi>;
+		iommus = <&iommu0 M4U_PORT_CAM_DMA2>;
+		mediatek,larb = <&larb2>;
+		power-domains = <&scpsys MT2712_POWER_DOMAIN_ISP>;
+		mediatek,seninf_mux_camsv = <&seninf5_mux_camsv4
+					     &seninf6_mux_camsv5>;
+		reg = <0 0x10218000 0 0x60>,
+		      <0 0x15002500 0 0x4>,
+		      <0 0x15002700 0 0x100>;
+		mediatek,mipicsiid = <1>;
+		status="disabled";
+	};
\ No newline at end of file
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
