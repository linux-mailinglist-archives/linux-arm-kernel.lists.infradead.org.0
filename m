Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1935C12F34E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 04:14:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3n+icBnEHJKPBH8pDSdcKffOv3v7RSm4hdR9CKhncM8=; b=II135Uy5QQvTLZ
	UAl4ScJrOQY2phhF4+yjwmukM19+/zEkzOwAbguF1BV0mAaTg/EO4W/IlLrJCoU4yaOis9FuJ+TY2
	uQmlaOon2mRHBd455FHisXTID3pM9UPzffnjr33RnMjM8pH9eMhJeQt8sUAWQz6yyxnnyBA8xxfq7
	x4OpKv0P2R+P3A0mlwU/zjTiT7h99gzikJDrqyVfLo4bVVErEcoyX5qxJR5TFfjxhx2vCuVUphIF/
	IoF/nt61p7vj4/SKly2+IowCh3fJxYv3+0Im+dY8vJvFZ33eW831YkTrudT+4/LmwMVdE1pdPbxaL
	CEd0sGO1UuuZEGwc4wsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inDPO-0004JX-4W; Fri, 03 Jan 2020 03:13:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inDOL-0003Ei-FY; Fri, 03 Jan 2020 03:12:51 +0000
X-UUID: 422a4979eb3844149b9f3323d958b3d7-20200102
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Il1d/CuA3QdNQqOpUCl8h23dQ/u6yF7EK0/ELQERR1M=; 
 b=oJPf5XEdhkCaAgnVNo2DoziuMn/ScN2HMmGpvLaGm+Hg/6J72syP4IHUAFirbfhAurtUiP8+YRh6pAsJLRT1ZsND7ahPfy9HFI8LZLKr9URT/KjqO/XXL9klvzF/CzC86XDxM52f+GLhIPWmz2VRqDM7wx0YFT4whI3yzwsewpk=;
X-UUID: 422a4979eb3844149b9f3323d958b3d7-20200102
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 360713236; Thu, 02 Jan 2020 19:12:38 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 Jan 2020 19:13:02 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 3 Jan 2020 11:12:06 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 3 Jan 2020 11:13:04 +0800
From: Yongqiang Niu <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [RESEND PATCH v6 01/17] dt-bindings: mediatek: add rdma_fifo_size
 description for mt8183 display
Date: Fri, 3 Jan 2020 11:12:12 +0800
Message-ID: <1578021148-32413-2-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1578021148-32413-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1578021148-32413-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_191249_522545_3D6DCDB3 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update device tree binding documention for rdma_fifo_size

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 .../devicetree/bindings/display/mediatek/mediatek,disp.txt  | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
index 681502e..34bef44 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
@@ -70,6 +70,10 @@ Required properties (DMA function blocks):
   argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
   for details.
 
+Required properties (DMA function blocks):
+- mediatek,rdma_fifo_size: rdma fifo size may be different even in same SOC, add this
+  property to the corresponding rdma
+
 Examples:
 
 mmsys: clock-controller@14000000 {
@@ -211,3 +215,12 @@ od@14023000 {
 	power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
 	clocks = <&mmsys CLK_MM_DISP_OD>;
 };
+
+rdma1: rdma@1400c000 {
+	compatible = "mediatek,mt8183-disp-rdma";
+	reg = <0 0x1400c000 0 0x1000>;
+	interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_LOW>;
+	power-domains = <&scpsys MT8183_POWER_DOMAIN_DISP>;
+	clocks = <&mmsys CLK_MM_DISP_RDMA1>;
+	mediatek,rdma_fifo_size = <2048>;
+};
\ No newline at end of file
-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
