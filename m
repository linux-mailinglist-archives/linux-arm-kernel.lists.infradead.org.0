Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6E635BD2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:46:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ycnMyThpPI3vBlla1/GmDjblgF52eROX1gKXpw+aTmM=; b=hRy5HQn2L9RHD7
	xWNNHlSJ327EtjJXjGU1Fw62sR4BnO/IH4iRrvEBdtinCbuf6lbA7SRvhip/r6wE/TYHqpkKu+TeK
	xPsgCIDRgsz8hkFb8LlxvYCYJLUPd2ju2WMS5cm6tDo0qIJTpBKEGmBCQS30Kp2ZkbFfF5duD1AKF
	OmZ+SXKLFu4+I+kull6WIXSEsTPGhDKO31ue0DXFUG9Yb9e4HkP9pOjbua6Wp/7M8T0gRop9h9RAs
	6JfS64UC7FL6lVkdH65mhRPhnrPWfFZZNTMXTiRXTUpw+Umb9Dmb2bIj2HfI0XSjpnstVrVPv0Vmq
	d+oIpB7+0VVOWVH9h63A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYUN7-0008N3-Rx; Wed, 05 Jun 2019 11:46:25 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYULP-0004E0-Fs; Wed, 05 Jun 2019 11:44:58 +0000
X-UUID: 603fd4d5ffb4488db3fe832c99164a82-20190605
X-UUID: 603fd4d5ffb4488db3fe832c99164a82-20190605
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 472664290; Wed, 05 Jun 2019 03:43:47 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 04:43:46 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 19:43:44 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 5 Jun 2019 19:43:44 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3,
 09/27] drm/mediatek: add mutex sof register offset into ddp private
 data
Date: Wed, 5 Jun 2019 19:42:48 +0800
Message-ID: <1559734986-7379-10-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1559734986-7379-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_044439_643344_F2633E2B 
X-CRM114-Status: GOOD (  10.97  )
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

mutex sof register offset will be private data of ddp

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
index e1a510f..717609d 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
@@ -42,12 +42,13 @@
 #define DISP_REG_CONFIG_DPI_SEL			0x064
 
 #define MT2701_DISP_MUTEX0_MOD0			0x2c
+#define MT2701_DISP_MUTEX0_SOF0			0x2c
 
 #define DISP_REG_MUTEX_EN(n)			(0x20 + 0x20 * (n))
 #define DISP_REG_MUTEX(n)			(0x24 + 0x20 * (n))
 #define DISP_REG_MUTEX_RST(n)			(0x28 + 0x20 * (n))
 #define DISP_REG_MUTEX_MOD(mutex_mod_reg, n)	(mutex_mod_reg + 0x20 * (n))
-#define DISP_REG_MUTEX_SOF(n)			(0x30 + 0x20 * (n))
+#define DISP_REG_MUTEX_SOF(mutex_sof_reg, n)	(mutex_sof_reg + 0x20 * (n))
 #define DISP_REG_MUTEX_MOD2(n)			(0x34 + 0x20 * (n))
 
 #define INT_MUTEX				BIT(1)
@@ -164,6 +165,7 @@ struct mtk_ddp_data {
 	const unsigned int *mutex_mod;
 	const unsigned int *mutex_sof;
 	const unsigned int mutex_mod_reg;
+	const unsigned int mutex_sof_reg;
 };
 
 struct mtk_ddp {
@@ -235,18 +237,21 @@ struct mtk_ddp {
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
@@ -528,7 +533,8 @@ void mtk_disp_mutex_add_comp(struct mtk_disp_mutex *mutex,
 	}
 
 	writel_relaxed(ddp->data->mutex_sof[sof_id],
-		       ddp->regs + DISP_REG_MUTEX_SOF(mutex->id));
+		       ddp->regs +
+		       DISP_REG_MUTEX_SOF(ddp->data->mutex_sof_reg, mutex->id));
 }
 
 void mtk_disp_mutex_remove_comp(struct mtk_disp_mutex *mutex,
@@ -550,7 +556,8 @@ void mtk_disp_mutex_remove_comp(struct mtk_disp_mutex *mutex,
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
