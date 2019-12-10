Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B46117F69
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 06:09:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SIUG3uZtxT2Vxd1fYVZobg7U5Cw0u/5x0BDEB0pvDmI=; b=oS3rLnF7XXDUbI
	93ROVBH1JIIfT/vRUvXziL25M8PgJue9QUNPDBbUJIWjkxBRb9otlU+hrJWSSjEzZWAt8uYwL7y0P
	jOvY0k5q+uaJBAI0UXsij3xEPYOyU8UdKVxx85B0HjL5YDwMQD6p56bmdOxm8k169yVy1LPrsgeGX
	KgPvQX2jSeh8UUb+REmnV5sQwnVO8hQWtB3pwWgyeR0W8MUgo32TNzX85dAmnsEUn414LHLGGyPvj
	kZVgo2sBC8euhHWJgJcREIYcmFyksY+eX7Yty7YuatNbL7P+hFCjMxOUohEaBvEKW7K1uLag4F3/3
	JFpm9orkwaD7UDmjuxTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieXlT-0003h3-Pp; Tue, 10 Dec 2019 05:08:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieXlF-0003g9-71; Tue, 10 Dec 2019 05:08:38 +0000
X-UUID: ece98303e15841b9b2873021a218cebd-20191209
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=sT8+poW4EDti9+9WpBz/VV2F6sEiz5U6298aIszT21w=; 
 b=oeZ0H330g3Z0V18yP7I8H7HT3NYeC/eK4dphDLxq6hkycAsffVFzEqBd/pR13e129i714yleVluMtbtTcC7bXwL73uJK6aUCP/ZQYMyhzvtCeUVf110s/iolQQMaxvC2t7Sq26ea1FzCGaV8cJb6hOZkRqMHQB0SwHg8ZVbrIcw=;
X-UUID: ece98303e15841b9b2873021a218cebd-20191209
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 461012858; Mon, 09 Dec 2019 21:08:35 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 9 Dec 2019 21:06:33 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 10 Dec 2019 13:04:33 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 10 Dec 2019 13:05:22 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: David Airlie <airlied@linux.ie>, Matthias Brugger
 <matthias.bgg@gmail.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 <dri-devel@lists.freedesktop.org>, <linux-mediatek@lists.infradead.org>
Subject: [PATCH v5 5/7] drm/mediatek: remove unused external function
Date: Tue, 10 Dec 2019 13:05:24 +0800
Message-ID: <20191210050526.4437-6-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191210050526.4437-1-bibby.hsieh@mediatek.com>
References: <20191210050526.4437-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3BED7911B5E72A5DB3D8D69959DACA4986BBACF8E45FEFE2C4DBD378933972382000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_210837_262002_5E8DCA5A 
X-CRM114-Status: UNSURE (   8.83  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
