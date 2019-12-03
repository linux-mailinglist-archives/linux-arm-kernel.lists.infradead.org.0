Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AE510F86E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 08:12:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iuw8FgnV183QUMlG23VKy7c+y3c5zZ4SKZoKZdf2zcA=; b=oWFuwFSzNnV7sD
	NQ9x3qCZpUu7yfI6Fxxg2CwX0C55ofAnvKp8eCNCUHC3gib8+wS6lEvBrCGdfUvv673kyDx7mtYUo
	sVTDDDqCIKHBT55/iRIiNBYql3M8wHKkC4H1O793nwWcUVNMAYjFqOhUow3720sLFKEWeNEsJxzjx
	VJPwbvqk7ljOWOLeAEf1klDWCqNwYcsxwdtLws4PUa85d/15SVrwMBbH+HwZqlGe52+l/8R0hFg96
	DpCa9Z4gxM/KGyFF5pWcBsVrC9bYEUgk/HG4skbX6aOPSuNo73KxqukmJe8C+gLuaTrvWzMZxWwdB
	tnp+zrkLPGne/S+Dth+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2M5-00068M-UI; Tue, 03 Dec 2019 07:12:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic2Kf-00050O-W4; Tue, 03 Dec 2019 07:10:51 +0000
X-UUID: c795760dedd747af895bd02f580857bb-20191202
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=1r+UsnH1G/Cjf6k9hcifXRG1NUK52vTics2/q0qiWz0=; 
 b=BwcOnIKITl8DKBgw7ZhWTqy6HFkvbvwE3m10ebrBIk1o6Up1A63EIAx3MCEFfshoO3HqIefUg20ZbM4/+FKSUQfB6f+8lO6a9UrKwIMV+OeK4PWhR19gfIJFjgKZwHSB+o36gzfgcgN2M5YfG/j/UogWpMxWqVL9cieBrZ3UB3Y=;
X-UUID: c795760dedd747af895bd02f580857bb-20191202
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 359761858; Mon, 02 Dec 2019 23:10:46 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 2 Dec 2019 23:10:57 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Dec 2019 15:10:38 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 3 Dec 2019 15:10:20 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: David Airlie <airlied@linux.ie>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH v2 4/6] drm/mediatek: remove unused external function
Date: Tue, 3 Dec 2019 15:10:34 +0800
Message-ID: <20191203071036.14158-5-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191203071036.14158-1-bibby.hsieh@mediatek.com>
References: <20191203071036.14158-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_231050_092104_88EC602E 
X-CRM114-Status: UNSURE (   9.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: drinkcat@chromium.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org, tfiga@chromium.org,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, YT Shen <yt.shen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

layer_on and layer_off both are unused external function,
remove them from mtk_ddp_comp_funcs structure.

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  2 --
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h | 16 ----------------
 2 files changed, 18 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index 722a5adb79dc..8a32248671c3 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -314,8 +314,6 @@ static const struct mtk_ddp_comp_funcs mtk_disp_ovl_funcs = {
 	.disable_vblank = mtk_ovl_disable_vblank,
 	.supported_rotations = mtk_ovl_supported_rotations,
 	.layer_nr = mtk_ovl_layer_nr,
-	.layer_on = mtk_ovl_layer_on,
-	.layer_off = mtk_ovl_layer_off,
 	.layer_check = mtk_ovl_layer_check,
 	.layer_config = mtk_ovl_layer_config,
 	.bgclr_in_on = mtk_ovl_bgclr_in_on,
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
index ec55c7488cc3..653ef1cb3748 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
@@ -79,8 +79,6 @@ struct mtk_ddp_comp_funcs {
 	void (*disable_vblank)(struct mtk_ddp_comp *comp);
 	unsigned int (*supported_rotations)(struct mtk_ddp_comp *comp);
 	unsigned int (*layer_nr)(struct mtk_ddp_comp *comp);
-	void (*layer_on)(struct mtk_ddp_comp *comp, unsigned int idx);
-	void (*layer_off)(struct mtk_ddp_comp *comp, unsigned int idx);
 	int (*layer_check)(struct mtk_ddp_comp *comp,
 			   unsigned int idx,
 			   struct mtk_plane_state *state);
@@ -151,20 +149,6 @@ static inline unsigned int mtk_ddp_comp_layer_nr(struct mtk_ddp_comp *comp)
 	return 0;
 }
 
-static inline void mtk_ddp_comp_layer_on(struct mtk_ddp_comp *comp,
-					 unsigned int idx)
-{
-	if (comp->funcs && comp->funcs->layer_on)
-		comp->funcs->layer_on(comp, idx);
-}
-
-static inline void mtk_ddp_comp_layer_off(struct mtk_ddp_comp *comp,
-					  unsigned int idx)
-{
-	if (comp->funcs && comp->funcs->layer_off)
-		comp->funcs->layer_off(comp, idx);
-}
-
 static inline int mtk_ddp_comp_layer_check(struct mtk_ddp_comp *comp,
 					   unsigned int idx,
 					   struct mtk_plane_state *state)
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
