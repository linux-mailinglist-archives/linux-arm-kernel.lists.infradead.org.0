Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C59343CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 12:12:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6wmAchkD2+totL+Hxy54B6Ia9aGi8g6K1pzDaIUEkw=; b=VySmYEl9tlaA+j
	YEr/eaJg1JbgJcMlc0leavTkzx6mUi/rLaMystD8Wk640Jib7z/UJNMlBGQcgtZ8pZ9bo2GQzZL//
	Bo/Hx/Yx1xOT5qMWfEhbI2Kf7+Os4/bYF8J0e9+8HWyCZxjDgK0FmVlAuih9/u4XDczZe8mCNmTGK
	aDyqWMeZ/xwsjLw1fe4lV3Q/rTeNbeV/XJ3a+rUaSoTKXBIGvTNqRE9oW8QwER11YB+QFhkIHyC1b
	U6n8ntrJ65rN2OCaeA4Wxpv2WkirHsz5vnH7IQyNpoKc/tLSyqiKrcwZsc9yjLf13jyqQBPdjRNYM
	gkzkwst4Sa6wB3AjgMCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6Qb-0006SZ-Fa; Tue, 04 Jun 2019 10:12:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6QH-0006FY-Bk; Tue, 04 Jun 2019 10:12:06 +0000
X-UUID: 3d850814175e4c76acb13279ca693870-20190604
X-UUID: 3d850814175e4c76acb13279ca693870-20190604
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1352203803; Tue, 04 Jun 2019 02:12:02 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 03:12:00 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 18:11:59 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 4 Jun 2019 18:11:59 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v4 01/14] dt-bindings: Add binding for MT2712 MIPI-CSI2
Date: Tue, 4 Jun 2019 18:11:42 +0800
Message-ID: <1559643115-15124-2-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_031205_426331_CB35D264 
X-CRM114-Status: GOOD (  12.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 .../bindings/media/mediatek-mipicsi.txt       | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-mipicsi.txt

diff --git a/Documentation/devicetree/bindings/media/mediatek-mipicsi.txt b/Documentation/devicetree/bindings/media/mediatek-mipicsi.txt
new file mode 100644
index 000000000000..e30b6a468129
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek-mipicsi.txt
@@ -0,0 +1,58 @@
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
+  any mipicsi port can contain max four seninf_mux_camsv
+  The Total seninf_mux_camsv is six for mt2712
+- mediatek,mipicsiid: the id of the mipicsi port, there are two port for mt2712
+- mediatek,mipicsi: the common component of the two mipicsi port
+- mediatek,mipicsi_max_vc: the number of virtual channel which subdev used
+- mediatek,serdes_link_reg: the register of subdev to get the link status
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
+		mediatek,mipicsi_max_vc = <4>;
+		mediatek,serdes_link_reg = <0x49>;
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
+	};
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
