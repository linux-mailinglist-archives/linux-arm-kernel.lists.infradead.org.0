Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94907153F06
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 08:00:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2l3nLogEoDYyqyp3HsiiAUdyVg4pO+kwhPgCU2bY6Q=; b=eaMtnB08p8Y3CT
	81M+SlyQ5HwiVSoJBoOokD69A/I82rrhBoBlROIr0Ut3cKxLbXNwH31U4XadhhB1GuKZ8fb22MIGa
	DQU7gwAddl35bAOsIZAptR5S9AOEXNcpEOQPnOFFAnlLrmpOwBAv6CZ/9aY8cDkwvXdv4zTHE+Wgg
	OAn2PUmX8t3L0sd0yPBcXOh3F8dHOiXaDuruBzcYFXNjwhHnTr3e7CCNP5wO7Y/ZJ4kCtj8fiTlk/
	XKYJ2bgpjvU80QP4g3jZMqtkLsP5az8yZo211FL+pAd6zno+VXQ4YjOKt45RiVyl24kgGKup8W7Gt
	AZh4FAMDWWNYDnrcEYTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izb95-0004Rd-IE; Thu, 06 Feb 2020 07:00:15 +0000
Received: from mail-yb1-xb49.google.com ([2607:f8b0:4864:20::b49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izb8s-0003rG-93
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 07:00:04 +0000
Received: by mail-yb1-xb49.google.com with SMTP id j3so742330ybo.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Feb 2020 23:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ohRhPi8BaP2Hr5/3y3n5V3DWtzBXMkpjbXzBGyXAhaU=;
 b=T8vIBTEH7afCvW+9MUnm3Xu5qubD8B7doR+wav2Hn7tW5+4oB/z325sG00l+sCcS+X
 yL6qM0XJQbM91UAUaKh1UheNVC8HLx/dl79+LO9U7yIErEcjvLu5EjRn84kGCr3AcAQL
 9sYCBAMrrlpOsjfKC7ib6Eko0iteLNSqhotbMmvj8R/cCJdvDyIOjyzo2dHXAYj7338j
 l8208YxZh63z2FS2sF9g5y8f0OBuYXwxklcKHfpTn0ec2hmeN0fuUKTIWl6jq/FyZBdj
 ZLbZr9A/ZEwHZpfIT/46CypnfZMUGIo8/q68daXNfYfnF2GLHuSfILI5S5sfbym00jb0
 7Rew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ohRhPi8BaP2Hr5/3y3n5V3DWtzBXMkpjbXzBGyXAhaU=;
 b=WoohTL7EV0Gd4yeNfGD/kIRltvS40RObSGCXsRHqN1EPjK7AE+ise1b2dyElWrmuVi
 CeBLTHfhUW9TfkOPNtA5wlb733iciJE+o1H4+4bTucZQkQVGksk2CJavrMK+L4v1QJ6Z
 ujw65vetJwBjvbWsZ3Yp8c3UWq94q2AknObu1bV3j8r/uWjHhDkTrCy7WZoIj5HzEtkh
 y/ktAbGII8ebJt411Cb1OqnQ7bYmioDuGAqC40mAXv9M82F/UA7NsahNOXZl53CpF+i8
 kXsQaSAp4vfdLjePno9YnTVCwFcziMToQvH/kTSxpvzblJOZPKMm3ZRO+WPDB4lgiIRT
 ybLA==
X-Gm-Message-State: APjAAAU7aFu2zqgK5iMYwfmI/oFJVTJxReRgXLmrwEDti8V05HK85ofc
 CqChg3bFlTPBIqnpDta0LYajcd8K3Xwtpg==
X-Google-Smtp-Source: APXvYqy/T41MypaRkzpvorQCzz5aeOT5d2jGXM9FxIb64m0CZleygIGtHIdFFMdtLCPoL8RkWNY4GAeVDW7YJQ==
X-Received: by 2002:a81:2608:: with SMTP id m8mr1874539ywm.259.1580972400426; 
 Wed, 05 Feb 2020 23:00:00 -0800 (PST)
Date: Thu,  6 Feb 2020 17:59:51 +1100
In-Reply-To: <1580441226.9516.1.camel@mtksdaap41>
Message-Id: <20200206065951.213862-1-evanbenn@google.com>
Mime-Version: 1.0
References: <1580441226.9516.1.camel@mtksdaap41>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH] drm/mediatek: Ensure the cursor plane is on top of other
 overlays
From: evanbenn@google.com
To: ck.hu@mediatek.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_230002_408033_40FA3F09 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b49 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: dcastagna@chromium.org, evanbenn@gmail.com, evanbenn@google.com,
 evanbenn@chromium.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, p.zabel@pengutronix.de,
 matthias.bgg@gmail.com, seanpaul@chromium.org, sean@poorly.run,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Currently the cursor is placed on the first overlay plane, which means
it will be at the bottom of the stack when the hw does the compositing
with anything other than primary plane. Since mtk doesn't support plane
zpos, change the cursor location to the top-most plane.

Signed-off-by: Evan Benn <evanbenn@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 29 +++++++++++++++++--------
 1 file changed, 20 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 7b392d6c71cc..d4078c2089e0 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -658,10 +658,21 @@ static const struct drm_crtc_helper_funcs mtk_crtc_helper_funcs = {
 
 static int mtk_drm_crtc_init(struct drm_device *drm,
 			     struct mtk_drm_crtc *mtk_crtc,
-			     struct drm_plane *primary,
-			     struct drm_plane *cursor, unsigned int pipe)
+			     unsigned int pipe)
 {
-	int ret;
+	int i, ret;
+
+	struct drm_plane *primary = NULL;
+	struct drm_plane *cursor = NULL;
+
+	for (i = 0; i < mtk_crtc->layer_nr; ++i) {
+		if (!primary && mtk_crtc->planes[i].type ==
+				DRM_PLANE_TYPE_PRIMARY)
+			primary = &mtk_crtc->planes[i];
+		if (!cursor && mtk_crtc->planes[i].type ==
+				DRM_PLANE_TYPE_CURSOR)
+			cursor = &mtk_crtc->planes[i];
+	}
 
 	ret = drm_crtc_init_with_planes(drm, &mtk_crtc->base, primary, cursor,
 					&mtk_crtc_funcs, NULL);
@@ -711,11 +722,12 @@ static int mtk_drm_crtc_num_comp_planes(struct mtk_drm_crtc *mtk_crtc,
 }
 
 static inline
-enum drm_plane_type mtk_drm_crtc_plane_type(unsigned int plane_idx)
+enum drm_plane_type mtk_drm_crtc_plane_type(unsigned int plane_idx,
+					    unsigned int num_planes)
 {
 	if (plane_idx == 0)
 		return DRM_PLANE_TYPE_PRIMARY;
-	else if (plane_idx == 1)
+	else if (plane_idx == (num_planes - 1))
 		return DRM_PLANE_TYPE_CURSOR;
 	else
 		return DRM_PLANE_TYPE_OVERLAY;
@@ -734,7 +746,8 @@ static int mtk_drm_crtc_init_comp_planes(struct drm_device *drm_dev,
 		ret = mtk_plane_init(drm_dev,
 				&mtk_crtc->planes[mtk_crtc->layer_nr],
 				BIT(pipe),
-				mtk_drm_crtc_plane_type(mtk_crtc->layer_nr),
+				mtk_drm_crtc_plane_type(mtk_crtc->layer_nr,
+							num_planes),
 				mtk_ddp_comp_supported_rotations(comp));
 		if (ret)
 			return ret;
@@ -830,9 +843,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 			return ret;
 	}
 
-	ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, &mtk_crtc->planes[0],
-				mtk_crtc->layer_nr > 1 ? &mtk_crtc->planes[1] :
-				NULL, pipe);
+	ret = mtk_drm_crtc_init(drm_dev, mtk_crtc, pipe);
 	if (ret < 0)
 		return ret;
 
-- 
2.25.0.341.g760bfbb309-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
