Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD82DFFE4D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 07:18:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hn7QxnJvjHu1+Zq8tjD480FAQnKLbYsLJbcJvg0jRS8=; b=WpDOmVPvlo/gvr
	2d2hQfx5hFdgwUrWak0I+b1tfGuV0N1ph/JnYDChUBr3+eZKUk6h8Va/57MdEdKooTDvq0exhdSHX
	slxy+uC52tpeY/wbltaCUEFL9Y6G5Hze+dDro7b+taD6grjsuEzxCoqjWO6azxDXBOO/edK9w+S4j
	FuHSMsTANlEsG4hArJzs3AJWGofXRUOeY7jPg63CpVmg0mCJ/72QFijstNb3Ffh6gp2+bEOjd84Xh
	KGypyFa+B2uLplJEwPNtcxw0uJB4iSSz6R2ptecn/2ukYcMgmRfDEEYCdjc7gttyIC6XViLJ4fWYd
	i/ee4LTZN/u7wK74YMTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWaN6-0000u0-T2; Mon, 18 Nov 2019 06:18:48 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWaMy-0000sS-7g
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 06:18:41 +0000
Received: by mail-pl1-x644.google.com with SMTP id d7so9169941pls.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 17 Nov 2019 22:18:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=In3dXboSGxSDc4571/sMxtCG8no6hvyudyiC85O5ndo=;
 b=BXpHZhA/xlBopIauk0uUtCcrKTLJpeohwqpkdx+pyeB6cHC23OkMv5szao3WoFQgWG
 bpGQhs8COapoRUFUUwCikZIhzDyoPIVni7BgFnJxCR8+nXcXKRftiZoiC0dq8IG2LBaL
 aXBBWuLKQw+ZwkDv48ctSYKopX322s7+2kZLY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=In3dXboSGxSDc4571/sMxtCG8no6hvyudyiC85O5ndo=;
 b=jsZyiXiJcSOUI72z634HWvtjGOo9ju/YbZJn4mLhIqWKu1NCbD7zs6mWqtX3ja7ycv
 CjLYgMV1ALZ93PqtJncE0XMv9Gs1JC+qad4cAY3qGX8MvP5kCOG5V1TMZCEaIuC5VX25
 eA4htVSj0LG+rSOwyODBDtGp6pUPEmJAMfjHpTdbu0YRzqd+7fs1ursa8JI8ck38NW+W
 HNGkbFCkhXoY2UvelDBJFgA+ie6Lv+0qKEZtW4gxi5uxbJWAbnEdQ0ITw/XdDFnW1P07
 TnNykNKNh63UeMr7DwduALg56cyG/Oae/7LIMhValYPuNFLDRaMrpkhXWbnKFIL86/TY
 aRmQ==
X-Gm-Message-State: APjAAAWsV3RW0lg4UKWMYreOcfYTGyMKEsTHslHYZhz/C2UXRyHUDVln
 1hWZhukfL+V5LgpJZgemVsnFlg==
X-Google-Smtp-Source: APXvYqxnGeAgTQrGlxhEM7cTtw/taIbeaI+NICqi0AiVOjf/RFlGTltFPJg8umDnYkhUrvkNVqGXOw==
X-Received: by 2002:a17:902:8f98:: with SMTP id
 z24mr21453839plo.35.1574057915737; 
 Sun, 17 Nov 2019 22:18:35 -0800 (PST)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id g4sm18589682pfh.172.2019.11.17.22.18.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 Nov 2019 22:18:35 -0800 (PST)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH] drm/mediatek: Check return value of
 mtk_drm_ddp_comp_for_plane.
Date: Mon, 18 Nov 2019 14:18:05 +0800
Message-Id: <20191118061806.52781-1-pihsun@chromium.org>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191117_221840_304796_A837C816 
X-CRM114-Status: GOOD (  10.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-mediatek@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS FOR MEDIATEK" <dri-devel@lists.freedesktop.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Pi-Hsun Shih <pihsun@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, CK Hu <ck.hu@mediatek.com>,
 Sean Paul <seanpaul@chromium.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The mtk_drm_ddp_comp_for_plane can return NULL, but the usage doesn't
check for it. Add check for it.

Fixes: d6b53f68356f ("drm/mediatek: Add helper to get component for a plane")
Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index f80a8ba75977..4c4f976c994e 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -310,7 +310,9 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 
 		plane_state = to_mtk_plane_state(plane->state);
 		comp = mtk_drm_ddp_comp_for_plane(crtc, plane, &local_layer);
-		mtk_ddp_comp_layer_config(comp, local_layer, plane_state);
+		if (comp)
+			mtk_ddp_comp_layer_config(comp, local_layer,
+						  plane_state);
 	}
 
 	return 0;
@@ -386,8 +388,9 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 			comp = mtk_drm_ddp_comp_for_plane(crtc, plane,
 							  &local_layer);
 
-			mtk_ddp_comp_layer_config(comp, local_layer,
-						  plane_state);
+			if (comp)
+				mtk_ddp_comp_layer_config(comp, local_layer,
+							  plane_state);
 			plane_state->pending.config = false;
 		}
 		mtk_crtc->pending_planes = false;
@@ -401,7 +404,9 @@ int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
 	struct mtk_ddp_comp *comp;
 
 	comp = mtk_drm_ddp_comp_for_plane(crtc, plane, &local_layer);
-	return mtk_ddp_comp_layer_check(comp, local_layer, state);
+	if (comp)
+		return mtk_ddp_comp_layer_check(comp, local_layer, state);
+	return 0;
 }
 
 static void mtk_drm_crtc_atomic_enable(struct drm_crtc *crtc,

base-commit: 5a6fcbeabe3e20459ed8504690b2515dacc5246f
-- 
2.24.0.432.g9d3f5f5b63-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
