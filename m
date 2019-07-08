Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 871B862BF2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 00:42:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JukI1qTm+fTsd3ykaxaJulNYF5Jkkv2zLHrMQWZ/pDE=; b=jNcxTusPXwab0k
	lwv9YkDZV6KKdnRU3ioyhjg/Oh716F1IkOET+6VpGvWKKv5gyE/iXjGDaM9Oo0j2ZRz1X0/eHjsaR
	ahXE3YFwQ9/eTJZ56hrtWQ1UNFo32ZnwM66SRxzNNeyQlUY11YbC3KhoVDDt40IThQPnouwrPRypJ
	s0xFbtWBaDzXK/KNhU87hYm44vfqCbJRl1VCUDiL5dm+2TmTHYQP42WU3nne+QlFpXn3TzBVZ/obC
	O0QMB0XF9k+ACS/r5oAY7LWktcgH2Xh2natxYkwuoG+IS8xMcuXA0ALkFaF4D4pbyf0DSt/e0C4lW
	mp8Wy1fHeuY1abJFUDtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkcKv-0006oN-Po; Mon, 08 Jul 2019 22:42:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkcDk-0004sW-QH; Mon, 08 Jul 2019 22:34:54 +0000
X-UUID: 632a10ef67a44fae9222bb46da88a7f8-20190708
X-UUID: 632a10ef67a44fae9222bb46da88a7f8-20190708
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2144415332; Mon, 08 Jul 2019 14:34:45 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 15:34:44 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 9 Jul 2019 06:34:37 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 9 Jul 2019 06:34:36 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v4, 19/33] drm/mediatek: add gmc_bits for ovl private data
Date: Tue, 9 Jul 2019 06:33:59 +0800
Message-ID: <1562625253-29254-20-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_153452_994520_9978040B 
X-CRM114-Status: GOOD (  12.87  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

This patch add gmc_bits for ovl private data
GMC register was set RDMA ultra and pre-ultra threshold.
10bit GMC register define is different with other SOC, gmc_thrshd_l not
used.

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index 28d1911..afb313c 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -39,7 +39,9 @@
 #define DISP_REG_OVL_ADDR_MT8173		0x0f40
 #define DISP_REG_OVL_ADDR(ovl, n)		((ovl)->data->addr + 0x20 * (n))
 
-#define	OVL_RDMA_MEM_GMC	0x40402020
+#define GMC_THRESHOLD_BITS	16
+#define GMC_THRESHOLD_HIGH	((1 << GMC_THRESHOLD_BITS) / 4)
+#define GMC_THRESHOLD_LOW	((1 << GMC_THRESHOLD_BITS) / 8)
 
 #define OVL_CON_BYTE_SWAP	BIT(24)
 #define OVL_CON_MTX_YUV_TO_RGB	(6 << 16)
@@ -57,6 +59,7 @@
 
 struct mtk_disp_ovl_data {
 	unsigned int addr;
+	unsigned int gmc_bits;
 	bool fmt_rgb565_is_0;
 };
 
@@ -140,9 +143,23 @@ static unsigned int mtk_ovl_layer_nr(struct mtk_ddp_comp *comp)
 static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx)
 {
 	unsigned int reg;
+	unsigned int gmc_thrshd_l;
+	unsigned int gmc_thrshd_h;
+	unsigned int gmc_value;
+	struct mtk_disp_ovl *ovl = comp_to_ovl(comp);
 
 	writel(0x1, comp->regs + DISP_REG_OVL_RDMA_CTRL(idx));
-	writel(OVL_RDMA_MEM_GMC, comp->regs + DISP_REG_OVL_RDMA_GMC(idx));
+
+	gmc_thrshd_l = GMC_THRESHOLD_LOW >>
+		      (GMC_THRESHOLD_BITS - ovl->data->gmc_bits);
+	gmc_thrshd_h = GMC_THRESHOLD_HIGH >>
+		      (GMC_THRESHOLD_BITS - ovl->data->gmc_bits);
+	if (ovl->data->gmc_bits == 10)
+		gmc_value = gmc_thrshd_h | gmc_thrshd_h << 16;
+	else
+		gmc_value = gmc_thrshd_l | gmc_thrshd_l << 8 |
+			    gmc_thrshd_h << 16 | gmc_thrshd_h << 24;
+	writel(gmc_value, comp->regs + DISP_REG_OVL_RDMA_GMC(idx));
 
 	reg = readl(comp->regs + DISP_REG_OVL_SRC_CON);
 	reg = reg | BIT(idx);
@@ -324,11 +341,13 @@ static int mtk_disp_ovl_remove(struct platform_device *pdev)
 
 static const struct mtk_disp_ovl_data mt2701_ovl_driver_data = {
 	.addr = DISP_REG_OVL_ADDR_MT2701,
+	.gmc_bits = 8,
 	.fmt_rgb565_is_0 = false,
 };
 
 static const struct mtk_disp_ovl_data mt8173_ovl_driver_data = {
 	.addr = DISP_REG_OVL_ADDR_MT8173,
+	.gmc_bits = 8,
 	.fmt_rgb565_is_0 = true,
 };
 
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
