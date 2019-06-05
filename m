Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0019935BAA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:45:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JBUi4Yuoc5/Yp4OJQQQG064PEYXHCErp63lZSLG497w=; b=Zp3fHqondqjyvv
	LMzOssKja18SI5E0CnI2ZczwGU3PLb4d+fP8DTvoPH6KqvM+pe+7nzjc8Fwdj1dyBPdSEXHH/w7Dy
	lxzocG+4tEEJQ0IrDFLpvGLHNqM4SrG0cnZlnv+L5j37+so4HMAPHXYsldc4uqalB3s5/0qSLFTwa
	htXnvQVXo9KqQeOKx+tzkd/FX6ZgXZnAmE1PCrvNMbjTyP8XflixH1/a4aQL6vgl2IlHDMg0lwbQ/
	K2S41R0qUm9W0U7p7/3H35olGnBnZnKxxrK5Kyzl0rdncTJmegeFPTAV3pZ2yvWTxAmclmmVAsIl5
	Rz0FcO+xeCUe3IP5Lk9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYULu-0005V1-Uq; Wed, 05 Jun 2019 11:45:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYUKd-0004E0-45; Wed, 05 Jun 2019 11:44:12 +0000
X-UUID: b75859b7e18147638aeeaf442220f34e-20190605
X-UUID: b75859b7e18147638aeeaf442220f34e-20190605
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 745778344; Wed, 05 Jun 2019 03:43:46 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 04:43:45 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 19:43:43 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 5 Jun 2019 19:43:42 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3,
 07/27] drm/mediatek: add mutex mod register offset into ddp private
 data
Date: Wed, 5 Jun 2019 19:42:46 +0800
Message-ID: <1559734986-7379-8-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 48601DB269F65FAEFC1C49303F9239FAB7DC8461D5EECD2BC6C07EF2F365449E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_044351_822329_3BE2C653 
X-CRM114-Status: GOOD (  10.77  )
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
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
index ae94d44..8bde2cf 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
@@ -41,10 +41,12 @@
 #define DISP_REG_CONFIG_DSI_SEL			0x050
 #define DISP_REG_CONFIG_DPI_SEL			0x064
 
+#define MT2701_DISP_MUTEX0_MOD0			0x2c
+
 #define DISP_REG_MUTEX_EN(n)			(0x20 + 0x20 * (n))
 #define DISP_REG_MUTEX(n)			(0x24 + 0x20 * (n))
 #define DISP_REG_MUTEX_RST(n)			(0x28 + 0x20 * (n))
-#define DISP_REG_MUTEX_MOD(n)			(0x2c + 0x20 * (n))
+#define DISP_REG_MUTEX_MOD(mutex_mod_reg, n)	(mutex_mod_reg + 0x20 * (n))
 #define DISP_REG_MUTEX_SOF(n)			(0x30 + 0x20 * (n))
 #define DISP_REG_MUTEX_MOD2(n)			(0x34 + 0x20 * (n))
 
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
