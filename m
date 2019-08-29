Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C07BA1E2B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:00:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RL5poyAhqtQYF1qYSD06s7Ihv7DoETNMGoMIpJg8SIg=; b=VH4SOBjegMM6pE
	5qahKAO31lIJxWa6MIOccHZv6vPA1sqEj1z9DbR8pX2jlyO9lulIJhWuzl41VymwKeTNgfJiUkeHr
	LbSA79T3G82J1uVAfmEmRY9c/X6OI4yn5P5TzuaJtSfuQ0RMpYEU2fpuT8M9abunmd6egYb8PNQMG
	D1swD291eJ8Of8sYPhClCCJcVmz8g7LGHTzUdBdgmMieu0xp1l6j8O5xG2zw85apm9YqwVAtEOtlO
	UnfFxUUUjWkYYWhLmZB9uxJfs6/vl34oyjoiUHO8cK+skMuxLIf+bH+2m8n1afpuzTXEobhnW2kPJ
	A5XbxKJ1gMnNG6MJiYLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3LuM-0001aF-T0; Thu, 29 Aug 2019 15:00:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Llf-0005jT-Kf; Thu, 29 Aug 2019 14:51:21 +0000
X-UUID: 139b930a766f43bba8e4c3387d14dff5-20190829
X-UUID: 139b930a766f43bba8e4c3387d14dff5-20190829
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 591490924; Thu, 29 Aug 2019 06:51:18 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 07:51:18 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 22:51:16 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 29 Aug 2019 22:51:15 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v5,
 10/32] drm/mediatek: add mutex sof register offset into ddp private
 data
Date: Thu, 29 Aug 2019 22:50:32 +0800
Message-ID: <1567090254-15566-11-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D33B4E8515851DCFAA612D8C61321D8956F5891A8DF27C9B420DBD700CFDBA552000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_075120_049924_A8399E30 
X-CRM114-Status: GOOD (  10.91  )
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

mutex sof register offset will be private data of ddp

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
index 9bdbd8d..4866a9b 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
@@ -34,12 +34,13 @@
 #define DISP_REG_CONFIG_DPI_SEL			0x064
 
 #define MT2701_DISP_MUTEX0_MOD0			0x2c
+#define MT2701_DISP_MUTEX0_SOF0			0x30
 
 #define DISP_REG_MUTEX_EN(n)			(0x20 + 0x20 * (n))
 #define DISP_REG_MUTEX(n)			(0x24 + 0x20 * (n))
 #define DISP_REG_MUTEX_RST(n)			(0x28 + 0x20 * (n))
 #define DISP_REG_MUTEX_MOD(mutex_mod_reg, n)	(mutex_mod_reg + 0x20 * (n))
-#define DISP_REG_MUTEX_SOF(n)			(0x30 + 0x20 * (n))
+#define DISP_REG_MUTEX_SOF(mutex_sof_reg, n)	(mutex_sof_reg + 0x20 * (n))
 #define DISP_REG_MUTEX_MOD2(n)			(0x34 + 0x20 * (n))
 
 #define INT_MUTEX				BIT(1)
@@ -155,6 +156,7 @@ struct mtk_ddp_data {
 	const unsigned int *mutex_mod;
 	const unsigned int *mutex_sof;
 	const unsigned int mutex_mod_reg;
+	const unsigned int mutex_sof_reg;
 };
 
 struct mtk_ddp {
@@ -226,18 +228,21 @@ struct mtk_ddp {
 	.mutex_mod = mt2701_mutex_mod,
 	.mutex_sof = mt2712_mutex_sof,
 	.mutex_mod_reg = MT2701_DISP_MUTEX0_MOD0,
+	.mutex_sof_reg = MT2701_DISP_MUTEX0_SOF0,
 };
 
 static const struct mtk_ddp_data mt2712_ddp_driver_data = {
 	.mutex_mod = mt2712_mutex_mod,
 	.mutex_sof = mt2712_mutex_sof,
 	.mutex_mod_reg = MT2701_DISP_MUTEX0_MOD0,
+	.mutex_sof_reg = MT2701_DISP_MUTEX0_SOF0,
 };
 
 static const struct mtk_ddp_data mt8173_ddp_driver_data = {
 	.mutex_mod = mt8173_mutex_mod,
 	.mutex_sof = mt2712_mutex_sof,
 	.mutex_mod_reg = MT2701_DISP_MUTEX0_MOD0,
+	.mutex_sof_reg = MT2701_DISP_MUTEX0_SOF0,
 };
 
 static unsigned int mtk_ddp_mout_en(enum mtk_ddp_comp_id cur,
@@ -519,7 +524,8 @@ void mtk_disp_mutex_add_comp(struct mtk_disp_mutex *mutex,
 	}
 
 	writel_relaxed(ddp->data->mutex_sof[sof_id],
-		       ddp->regs + DISP_REG_MUTEX_SOF(mutex->id));
+		       ddp->regs +
+		       DISP_REG_MUTEX_SOF(ddp->data->mutex_sof_reg, mutex->id));
 }
 
 void mtk_disp_mutex_remove_comp(struct mtk_disp_mutex *mutex,
@@ -541,7 +547,8 @@ void mtk_disp_mutex_remove_comp(struct mtk_disp_mutex *mutex,
 	case DDP_COMPONENT_DPI1:
 		writel_relaxed(MUTEX_SOF_SINGLE_MODE,
 			       ddp->regs +
-			       DISP_REG_MUTEX_SOF(mutex->id));
+			       DISP_REG_MUTEX_SOF(ddp->data->mutex_sof_reg,
+						  mutex->id));
 		break;
 	default:
 		if (ddp->data->mutex_mod[id] < 32) {
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
