Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92497113E32
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 10:38:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIUG3uZtxT2Vxd1fYVZobg7U5Cw0u/5x0BDEB0pvDmI=; b=F6Mc4a7oGIMlyY
	AxunybyQrF9v4IfSaXAHq6ARFN5IUxa0VHxFFrGKKrDYz/ofFPxVRya6eWUaxKrOcECQ2QpKzfEfD
	zmg9aS+rnuiiIMGWHQM+bxOP0caS/9c+D0bghnyjdEohKCctufwfmwGQ+xaJrNA50KoSmpEdRK5Kk
	i7JAC/q7t7jzhDAzg/LnWndZBGauT8UZsh3qA9Vx9rou8+qvm4j6NsvxCpiA9mdqgIpPahe7mr3N5
	7HBHj8WkhPpmpAadVQeCaSWq/kAYuioM49xyIV0IudOm9Kj49SAHwf85PM4Sa29ACb6UD0YDHOP2g
	t6vklTzdtmMgcXaU8Xxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icnb2-0002ab-SS; Thu, 05 Dec 2019 09:38:52 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icnaC-0001kp-65; Thu, 05 Dec 2019 09:38:01 +0000
X-UUID: 4d707bbecda24113930e2be4908b0c0c-20191205
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=sT8+poW4EDti9+9WpBz/VV2F6sEiz5U6298aIszT21w=; 
 b=gkiabQWxPxWYD8F5BmkvGXmiJysOuGrLedcLsPNv10+zRrAEHwClWXZ9tsFB7Wkz0TtuNnnMylTcyFd/J2woQsHqO4U7DKITgiBW5NCEBw9Y9VHkOvMBJiMkZQQjfwVvXiwBpWtIYaNhtzZoXvnryZ1LAf5thAqMeRF+eyFiPpk=;
X-UUID: 4d707bbecda24113930e2be4908b0c0c-20191205
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1205919883; Thu, 05 Dec 2019 01:37:52 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Dec 2019 01:28:45 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Dec 2019 17:27:46 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 5 Dec 2019 17:26:52 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: David Airlie <airlied@linux.ie>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH v4 5/7] drm/mediatek: remove unused external function
Date: Thu, 5 Dec 2019 17:27:47 +0800
Message-ID: <20191205092749.4021-6-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191205092749.4021-1-bibby.hsieh@mediatek.com>
References: <20191205092749.4021-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_013800_230639_E6F8AD8E 
X-CRM114-Status: UNSURE (   7.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: CK Hu <ck.hu@mediatek.com>
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
index 19a955ab0748..dbfb90e9b9cf 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
@@ -81,8 +81,6 @@ struct mtk_ddp_comp_funcs {
 	void (*unprepare)(struct mtk_ddp_comp *comp);
 	unsigned int (*supported_rotations)(struct mtk_ddp_comp *comp);
 	unsigned int (*layer_nr)(struct mtk_ddp_comp *comp);
-	void (*layer_on)(struct mtk_ddp_comp *comp, unsigned int idx);
-	void (*layer_off)(struct mtk_ddp_comp *comp, unsigned int idx);
 	int (*layer_check)(struct mtk_ddp_comp *comp,
 			   unsigned int idx,
 			   struct mtk_plane_state *state);
@@ -165,20 +163,6 @@ static inline unsigned int mtk_ddp_comp_layer_nr(struct mtk_ddp_comp *comp)
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
