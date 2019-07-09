Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C41862EB6
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 05:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1L5TBBN76BepGqj6PEayQoxYXQMsqfTUJb9P1sNDz8A=; b=HpbkU91hOF9+9W
	HG7m6p6x6bCum/hH56HvdqHIkyWTwe4ACKD7DBTU74qNYShQtjuFRN7YefWCpjYU8xs2brTeZTyaI
	lhG+Nj7EEPJcTAzwP7bjW0oDD+QsaHTHA7E/Zt9f7rr2hF1f9P2DFWxQn9KmFEaNOo1TbI4xNGSAS
	chNRwjiHaF0z6FSrP/KlWa1ghYcvo4C0QQVMae+2EfwbTQFjVxxWG5FYvdAyoF4r/YAcGlX2SD1mN
	fL+8WvHVEKK3YtPmvW1/FNW0hmpRhFwEHIS/0KEL6C6ViUh1Od41JacT+ggTu0Bm9DsIoQF97LuuS
	Tw91ekmJUgac3sBHMrwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkghp-0000Ty-Hs; Tue, 09 Jul 2019 03:22:13 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkghY-0000R9-Ro; Tue, 09 Jul 2019 03:21:58 +0000
X-UUID: 8d9abbd07b4c4aabb387e5c88e1ac0ed-20190708
X-UUID: 8d9abbd07b4c4aabb387e5c88e1ac0ed-20190708
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1249806598; Mon, 08 Jul 2019 19:21:50 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 20:21:48 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 9 Jul 2019 11:21:47 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 9 Jul 2019 11:21:46 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, Rick Chang
 <rick.chang@mediatek.com>
Subject: [PATCH 1/5] media: dt-bindings: Add JPEG ENC device tree node document
Date: Tue, 9 Jul 2019 11:20:59 +0800
Message-ID: <20190709032103.10291-2-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190709032103.10291-1-xia.jiang@mediatek.com>
References: <20190709032103.10291-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_202157_070452_EBF9A08D 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Xia Jiang <xia.jiang@mediatek.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Tomasz Figa <tfiga@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add JPEG ENC device tree node document.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
 .../bindings/media/mediatek-jpeg-encoder.txt  | 33 +++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt

diff --git a/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
new file mode 100644
index 000000000000..1231fedb70bc
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.txt
@@ -0,0 +1,33 @@
+* MediaTek JPEG Encoder
+
+MediaTek JPEG Encoder is the JPEG encode hardware present in MediaTek SoCs
+
+Required properties:
+- compatible : must be "mediatek,mtk-jpgenc"
+- reg : physical base address of the JPEG encoder registers and length of
+  memory mapped region.
+- interrupts : interrupt number to the interrupt controller.
+- clocks: device clocks, see
+  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
+- clock-names: must contain "jpgenc". It is the clock of JPEG encoder.
+- power-domains: a phandle to the power domain, see
+  Documentation/devicetree/bindings/power/power_domain.txt for details.
+- mediatek,larb: must contain the local arbiters in the current SoCs, see
+  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
+  for details.
+- iommus: should point to the respective IOMMU block with master port as
+  argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
+  for details.
+
+Example:
+	jpegenc: jpegenc@1500a000 {
+		compatible = "mediatek,mtk-jpgenc";
+		reg = <0 0x1500a000 0 0x1000>;
+		interrupts = <GIC_SPI 141 IRQ_TYPE_LEVEL_LOW>;
+		clocks =  <&imgsys CLK_IMG_VENC>;
+		clock-names = "jpgenc";
+		power-domains = <&scpsys MT2701_POWER_DOMAIN_ISP>;
+		mediatek,larb = <&larb2>;
+		iommus = <&iommu MT2701_M4U_PORT_JPGENC_RDMA>,
+			<&iommu MT2701_M4U_PORT_JPGENC_BSDMA>;
+	};
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
