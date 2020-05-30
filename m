Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC5D1E8FB9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 10:23:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/kosPGNPqi8HZNz5RhrJ1Ddm3TbADU0gutABp7Bg92A=; b=VssCLL/LC4KN2s
	5f/SLjGtQL3h00bqWKOWw1v+PkhGpbe/0xfpb8CwJjDfCW7cACigi8E72aarzVIADOaCB0gI/omGB
	0nSw1SFJZFhOhS1fr9NhrjisFihQhGS4NTzwFHTU+5wnQFr0dV9RqrnRZZfXrwSyxwd6ZJxlqUQ4v
	Nb3W1m7g/ljAXieVtgJSIEWiNLjZdDRl3eTQBavxT4pGJt7Iivffia6wbzsojoNi3nflS7FWb9hNi
	zzejvHu7yqjiMMtX4MxNv2jH2VRp7xXiSHWzv+bhTvAPXMBVcAEEWMFeKKiVfUdif9ImJMFUf00pY
	6oKFLxcbB4NcupUrfq9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jewmT-0005Ny-7q; Sat, 30 May 2020 08:23:49 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jewlJ-0004YH-TU; Sat, 30 May 2020 08:22:39 +0000
X-UUID: e06f8e38305d422ea0eca3e82661aa26-20200530
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=YoE+PstubvdV+P9sL6XU+QZldj5rsjBxfw5MlFZPCr8=; 
 b=F9g4eyzKmmWJylVtxvkUJycnrMMYr9AnRecc0wtoE447Ai/BJWsgXd47Ory4kHxOfUMujGU3IsniqKBtOCo9IvBLpZR9KdMLnRuoQK5Ob4azxrXFymTJl0MKmNKvkmBHUnttM/jaGMo5x4v5qOtxh8eRx7gp8iRAznK32Opo+pE=;
X-UUID: e06f8e38305d422ea0eca3e82661aa26-20200530
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 558047657; Sat, 30 May 2020 00:22:27 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 30 May 2020 01:12:28 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 30 May 2020 16:12:27 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 30 May 2020 16:12:27 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 01/17] media: dt-binding: mtk-vcodec: Separating mtk-vcodec
 encode node.
Date: Sat, 30 May 2020 16:10:02 +0800
Message-ID: <1590826218-23653-2-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1590826218-23653-1-git-send-email-yong.wu@mediatek.com>
References: <1590826218-23653-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_012237_954778_DC5BA0BB 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maoguang Meng <maoguang.meng@mediatek.com>,
 Will Deacon <will.deacon@arm.com>, youlin.pei@mediatek.com,
 Irui Wang <irui.wang@mediatek.com>, Nicolas Boichat <drinkcat@chromium.org>,
 Evan Green <evgreen@chromium.org>, eizan@chromium.org,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, cui.zhang@mediatek.com,
 Tomasz Figa <tfiga@google.com>, linux-mediatek@lists.infradead.org,
 Hsin-Yi Wang <hsinyi@chromium.org>, ming-fan.chen@mediatek.com,
 yong.wu@mediatek.com, anan.sun@mediatek.com, acourbot@chromium.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 chao.hao@mediatek.com, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maoguang Meng <maoguang.meng@mediatek.com>

Update binding document since the avc and vp8 hardware encoder in
mt8173 are now separated. Separate "mediatek,mt8173-vcodec-enc" to
"mediatek,mt8173-vcodec-vp8-enc" and "mediatek,mt8173-vcodec-avc-enc".

This is a preparing patch for smi cleaning up "mediatek,larb".

Signed-off-by: Maoguang Meng <maoguang.meng@mediatek.com>
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Signed-off-by: Irui Wang <irui.wang@mediatek.com>
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 .../devicetree/bindings/media/mediatek-vcodec.txt  | 58 ++++++++++++----------
 1 file changed, 31 insertions(+), 27 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/mediatek-vcodec.txt b/Documentation/devicetree/bindings/media/mediatek-vcodec.txt
index 8093335..1023740 100644
--- a/Documentation/devicetree/bindings/media/mediatek-vcodec.txt
+++ b/Documentation/devicetree/bindings/media/mediatek-vcodec.txt
@@ -4,7 +4,9 @@ Mediatek Video Codec is the video codec hw present in Mediatek SoCs which
 supports high resolution encoding and decoding functionalities.
 
 Required properties:
-- compatible : "mediatek,mt8173-vcodec-enc" for MT8173 encoder
+- compatible : must be one of the following string:
+  "mediatek,mt8173-vcodec-vp8-enc" for mt8173 vp8 encoder.
+  "mediatek,mt8173-vcodec-avc-enc" for mt8173 avc encoder.
   "mediatek,mt8183-vcodec-enc" for MT8183 encoder.
   "mediatek,mt8173-vcodec-dec" for MT8173 decoder.
 - reg : Physical base address of the video codec registers and length of
@@ -13,10 +15,11 @@ Required properties:
 - mediatek,larb : must contain the local arbiters in the current Socs.
 - clocks : list of clock specifiers, corresponding to entries in
   the clock-names property.
-- clock-names: encoder must contain "venc_sel_src", "venc_sel",,
-  "venc_lt_sel_src", "venc_lt_sel", decoder must contain "vcodecpll",
-  "univpll_d2", "clk_cci400_sel", "vdec_sel", "vdecpll", "vencpll",
-  "venc_lt_sel", "vdec_bus_clk_src".
+- clock-names:
+   avc venc must contain "venc_sel";
+   vp8 venc must contain "venc_lt_sel";
+   decoder  must contain "vcodecpll", "univpll_d2", "clk_cci400_sel",
+   "vdec_sel", "vdecpll", "vencpll", "venc_lt_sel", "vdec_bus_clk_src".
 - iommus : should point to the respective IOMMU block with master port as
   argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
   for details.
@@ -80,14 +83,10 @@ vcodec_dec: vcodec@16000000 {
     assigned-clock-rates = <0>, <0>, <0>, <1482000000>, <800000000>;
   };
 
-  vcodec_enc: vcodec@18002000 {
-    compatible = "mediatek,mt8173-vcodec-enc";
-    reg = <0 0x18002000 0 0x1000>,    /*VENC_SYS*/
-          <0 0x19002000 0 0x1000>;    /*VENC_LT_SYS*/
-    interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_LOW>,
-		 <GIC_SPI 202 IRQ_TYPE_LEVEL_LOW>;
-    mediatek,larb = <&larb3>,
-		    <&larb5>;
+vcodec_enc: vcodec@18002000 {
+    compatible = "mediatek,mt8173-vcodec-avc-enc";
+    reg = <0 0x18002000 0 0x1000>;
+    interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_LOW>;
     iommus = <&iommu M4U_PORT_VENC_RCPU>,
              <&iommu M4U_PORT_VENC_REC>,
              <&iommu M4U_PORT_VENC_BSDMA>,
@@ -98,8 +97,20 @@ vcodec_dec: vcodec@16000000 {
              <&iommu M4U_PORT_VENC_REF_LUMA>,
              <&iommu M4U_PORT_VENC_REF_CHROMA>,
              <&iommu M4U_PORT_VENC_NBM_RDMA>,
-             <&iommu M4U_PORT_VENC_NBM_WDMA>,
-             <&iommu M4U_PORT_VENC_RCPU_SET2>,
+             <&iommu M4U_PORT_VENC_NBM_WDMA>;
+    mediatek,larb = <&larb3>;
+    mediatek,vpu = <&vpu>;
+    clocks = <&topckgen CLK_TOP_VENC_SEL>;
+    clock-names = "venc_sel";
+    assigned-clocks = <&topckgen CLK_TOP_VENC_SEL>;
+    assigned-clock-parents = <&topckgen CLK_TOP_VCODECPLL>;
+  };
+
+vcodec_enc_lt: vcodec@19002000 {
+    compatible = "mediatek,mt8173-vcodec-vp8-enc";
+    reg =  <0 0x19002000 0 0x1000>;	/* VENC_LT_SYS */
+    interrupts = <GIC_SPI 202 IRQ_TYPE_LEVEL_LOW>;
+    iommus = <&iommu M4U_PORT_VENC_RCPU_SET2>,
              <&iommu M4U_PORT_VENC_REC_FRM_SET2>,
              <&iommu M4U_PORT_VENC_BSDMA_SET2>,
              <&iommu M4U_PORT_VENC_SV_COMA_SET2>,
@@ -108,17 +119,10 @@ vcodec_dec: vcodec@16000000 {
              <&iommu M4U_PORT_VENC_CUR_CHROMA_SET2>,
              <&iommu M4U_PORT_VENC_REF_LUMA_SET2>,
              <&iommu M4U_PORT_VENC_REC_CHROMA_SET2>;
+    mediatek,larb = <&larb5>;
     mediatek,vpu = <&vpu>;
-    clocks = <&topckgen CLK_TOP_VENCPLL_D2>,
-             <&topckgen CLK_TOP_VENC_SEL>,
-             <&topckgen CLK_TOP_UNIVPLL1_D2>,
-             <&topckgen CLK_TOP_VENC_LT_SEL>;
-    clock-names = "venc_sel_src",
-                  "venc_sel",
-                  "venc_lt_sel_src",
-                  "venc_lt_sel";
-    assigned-clocks = <&topckgen CLK_TOP_VENC_SEL>,
-                      <&topckgen CLK_TOP_VENC_LT_SEL>;
-    assigned-clock-parents = <&topckgen CLK_TOP_VENCPLL_D2>,
-                             <&topckgen CLK_TOP_UNIVPLL1_D2>;
+    clocks = <&topckgen CLK_TOP_VENC_LT_SEL>;
+    clock-names = "venc_lt_sel";
+    assigned-clocks = <&topckgen CLK_TOP_VENC_LT_SEL>;
+    assigned-clock-parents = <&topckgen CLK_TOP_VCODECPLL_370P5>;
   };
-- 
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
