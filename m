Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C933B10A7E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 02:18:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRv3s4qzFrBL19TVEyVFhsOMQcTooEYqQz7tLYJmW8g=; b=Fn7ryKlmvcyw3v
	sTI3/E/LwuNBoNnYpkp4UGE8FgD6iDLVaWb4zk/bVqvdwaRM8lcRVTz1uFQOQd9B8TZYTmMoqNN9L
	ZD0YCdw6vx5R+RV2fh1yrxU6umjLOzVYKgt569wjviNJBB7bqWzq6dVSfqxzX/EsIkDkGtocigkzR
	daeJhASMgFsykCPU61M+sIBGworbsjoMMqQ4uFeQXBwiVqE7tpzGpzgQkcz3VT/iZUmQzQwbhOnvK
	2tp8ygP3VxOlowXYuUHPx6DIyD8qiNwNYORVpcJCmLmt6H2hr0nn1kdX5rw68aCx4KrUwEa9Y5i5w
	rcd4j3MCzVljiuWR2Q5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZlyb-0006bz-S9; Wed, 27 Nov 2019 01:18:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZly6-0006M3-LD; Wed, 27 Nov 2019 01:18:12 +0000
X-UUID: a45640faeb9449fc93359b8a40ae8e24-20191126
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=ukDKw46dJ6kUKB8fK1XW/KSDkxflYgyotMjPJ393R3U=; 
 b=JxAsfkmYsU7GZwD1SjwJD3VODWVjmdz0BDgX2HXzPJ3BNq1bl5aN1gnVaW3q4ClflHxAAYeQmHskIWtjV5ON/xca9ecOf2WklWWlpUspMG2oOn/hdOnd5AtrBgUQYmuH2bJhLy70tUhbVFMps9X/Eb+JEEqW/vS8M1iRIIDoALw=;
X-UUID: a45640faeb9449fc93359b8a40ae8e24-20191126
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1781169808; Tue, 26 Nov 2019 17:18:04 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 17:18:33 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 27 Nov 2019 09:17:49 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 27 Nov 2019 09:17:10 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v1,
 1/2] drm/mediatek: Fixup external display black screen issue
Date: Wed, 27 Nov 2019 09:17:54 +0800
Message-ID: <1574817475-22378-2-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1574817475-22378-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1574817475-22378-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_171810_710178_0748CF42 
X-CRM114-Status: GOOD (  12.84  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Problem:
overlay hangup when external display hotplut test

Fix:
disable overlay when crtc disable

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 39 +++++++++++++++++++++------------
 1 file changed, 25 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 4fb346c..7eca02f 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -369,6 +369,20 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 	mtk_disp_mutex_add_comp(mtk_crtc->mutex, mtk_crtc->ddp_comp[i]->id);
 	mtk_disp_mutex_enable(mtk_crtc->mutex);
 
+	/* Initially configure all planes */
+	for (i = 0; i < mtk_crtc->layer_nr; i++) {
+		struct drm_plane *plane = &mtk_crtc->planes[i];
+		struct mtk_plane_state *plane_state;
+		struct mtk_ddp_comp *comp;
+		unsigned int local_layer;
+
+		plane_state = to_mtk_plane_state(plane->state);
+		comp = mtk_drm_ddp_comp_for_plane(crtc, plane, &local_layer);
+		if (comp)
+			mtk_ddp_comp_layer_config(comp, local_layer,
+						  plane_state, NULL);
+	}
+
 	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
 		struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[i];
 		enum mtk_ddp_comp_id prev;
@@ -385,20 +399,6 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 		mtk_ddp_comp_start(comp);
 	}
 
-	/* Initially configure all planes */
-	for (i = 0; i < mtk_crtc->layer_nr; i++) {
-		struct drm_plane *plane = &mtk_crtc->planes[i];
-		struct mtk_plane_state *plane_state;
-		struct mtk_ddp_comp *comp;
-		unsigned int local_layer;
-
-		plane_state = to_mtk_plane_state(plane->state);
-		comp = mtk_drm_ddp_comp_for_plane(crtc, plane, &local_layer);
-		if (comp)
-			mtk_ddp_comp_layer_config(comp, local_layer,
-						  plane_state, NULL);
-	}
-
 	return 0;
 
 err_mutex_unprepare:
@@ -607,10 +607,21 @@ static void mtk_drm_crtc_atomic_disable(struct drm_crtc *crtc,
 	for (i = 0; i < mtk_crtc->layer_nr; i++) {
 		struct drm_plane *plane = &mtk_crtc->planes[i];
 		struct mtk_plane_state *plane_state;
+		struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
+		unsigned int comp_layer_nr = mtk_ddp_comp_layer_nr(comp);
+		unsigned int local_layer;
 
 		plane_state = to_mtk_plane_state(plane->state);
 		plane_state->pending.enable = false;
 		plane_state->pending.config = true;
+
+		if (i >= comp_layer_nr) {
+			comp = mtk_crtc->ddp_comp[1];
+			local_layer = i - comp_layer_nr;
+		} else
+			local_layer = i;
+		mtk_ddp_comp_layer_config(comp, local_layer,
+					  plane_state, NULL);
 	}
 	mtk_crtc->pending_planes = true;
 
-- 
1.8.1.1.dirty
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
