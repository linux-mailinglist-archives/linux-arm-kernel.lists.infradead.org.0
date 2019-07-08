Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A19D62BC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 00:36:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9IDVIAtso5eXl/BSNLVNuNyudlhghXBQxGtsJKZ3EiM=; b=GvqwgCJNKOEZCa
	1TGWMyTCVeuLRgPinix9GnmbRaBwiimwdX8GNqjIfXhbQp5ZXb2dSnQfeT8AF1ViowbzZZCXaBXZb
	CYdpPXSme4hSFsBxWVPgqBlwu909cqNP7umWFmzn6lg9oGIJ2XejFsxr43agiD0+Z4g28ocu1H7d4
	4bwTuvtOvs2D1qfqEgW2RJrqdXxsaw7Dc8NZpmus//Oe9AftIUPrKQz5OFRasC3sOdxuCm0MazUCK
	NKsKC+9CiSQB6p5gZ9/+mpMX9vhjgB12TYDlYnGqIkyeKYMrU3jIFNisM2L9SNEsquKLPZ/Z9VU1I
	jXJl3hmfH6lU/CHwLyqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkcFd-0007H3-Tj; Mon, 08 Jul 2019 22:36:49 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkcDc-0004sb-JH; Mon, 08 Jul 2019 22:34:46 +0000
X-UUID: abf393294fd14cbba48c6a24749ca6f2-20190708
X-UUID: abf393294fd14cbba48c6a24749ca6f2-20190708
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1770287952; Mon, 08 Jul 2019 14:34:40 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 15:34:39 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 9 Jul 2019 06:34:28 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 9 Jul 2019 06:34:28 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v4,
 09/33] drm/mediatek: add mutex mod register offset into ddp private
 data
Date: Tue, 9 Jul 2019 06:33:49 +0800
Message-ID: <1562625253-29254-10-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1562625253-29254-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_153444_636858_3EC9E31D 
X-CRM114-Status: GOOD (  11.45  )
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

mutex mod register offset will be private data of ddp.

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 24 ++++++++++++++++--------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
index 412b82f..8bde2cf 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
@@ -41,12 +41,14 @@
 #define DISP_REG_CONFIG_DSI_SEL			0x050
 #define DISP_REG_CONFIG_DPI_SEL			0x064
 
-#define DISP_REG_MUTEX_EN(n)	(0x20 + 0x20 * (n))
-#define DISP_REG_MUTEX(n)	(0x24 + 0x20 * (n))
-#define DISP_REG_MUTEX_RST(n)	(0x28 + 0x20 * (n))
-#define DISP_REG_MUTEX_MOD(n)	(0x2c + 0x20 * (n))
-#define DISP_REG_MUTEX_SOF(n)	(0x30 + 0x20 * (n))
-#define DISP_REG_MUTEX_MOD2(n)	(0x34 + 0x20 * (n))
+#define MT2701_DISP_MUTEX0_MOD0			0x2c
+
+#define DISP_REG_MUTEX_EN(n)			(0x20 + 0x20 * (n))
+#define DISP_REG_MUTEX(n)			(0x24 + 0x20 * (n))
+#define DISP_REG_MUTEX_RST(n)			(0x28 + 0x20 * (n))
+#define DISP_REG_MUTEX_MOD(mutex_mod_reg, n)	(mutex_mod_reg + 0x20 * (n))
+#define DISP_REG_MUTEX_SOF(n)			(0x30 + 0x20 * (n))
+#define DISP_REG_MUTEX_MOD2(n)			(0x34 + 0x20 * (n))
 
 #define INT_MUTEX				BIT(1)
 
@@ -149,6 +151,7 @@ struct mtk_disp_mutex {
 
 struct mtk_ddp_data {
 	const unsigned int *mutex_mod;
+	const unsigned int mutex_mod_reg;
 };
 
 struct mtk_ddp {
@@ -208,14 +211,17 @@ struct mtk_ddp {
 
 static const struct mtk_ddp_data mt2701_ddp_driver_data = {
 	.mutex_mod = mt2701_mutex_mod,
+	.mutex_mod_reg = MT2701_DISP_MUTEX0_MOD0,
 };
 
 static const struct mtk_ddp_data mt2712_ddp_driver_data = {
 	.mutex_mod = mt2712_mutex_mod,
+	.mutex_mod_reg = MT2701_DISP_MUTEX0_MOD0,
 };
 
 static const struct mtk_ddp_data mt8173_ddp_driver_data = {
 	.mutex_mod = mt8173_mutex_mod,
+	.mutex_mod_reg = MT2701_DISP_MUTEX0_MOD0,
 };
 
 static unsigned int mtk_ddp_mout_en(enum mtk_ddp_comp_id cur,
@@ -481,7 +487,8 @@ void mtk_disp_mutex_add_comp(struct mtk_disp_mutex *mutex,
 		break;
 	default:
 		if (ddp->data->mutex_mod[id] < 32) {
-			offset = DISP_REG_MUTEX_MOD(mutex->id);
+			offset = DISP_REG_MUTEX_MOD(ddp->data->mutex_mod_reg,
+						    mutex->id);
 			reg = readl_relaxed(ddp->regs + offset);
 			reg |= 1 << ddp->data->mutex_mod[id];
 			writel_relaxed(reg, ddp->regs + offset);
@@ -519,7 +526,8 @@ void mtk_disp_mutex_remove_comp(struct mtk_disp_mutex *mutex,
 		break;
 	default:
 		if (ddp->data->mutex_mod[id] < 32) {
-			offset = DISP_REG_MUTEX_MOD(mutex->id);
+			offset = DISP_REG_MUTEX_MOD(ddp->data->mutex_mod_reg,
+						    mutex->id);
 			reg = readl_relaxed(ddp->regs + offset);
 			reg &= ~(1 << ddp->data->mutex_mod[id]);
 			writel_relaxed(reg, ddp->regs + offset);
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
