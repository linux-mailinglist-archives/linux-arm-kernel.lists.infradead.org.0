Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F8710AD2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 11:04:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LgMWkai0wK+fnVFMfp6W9J2UNO+z37Hqap2vAvPOWzA=; b=JWzCH5lNqd7ySX
	lA1sx9CJERJyRUPsMONfptUYnJyCc2VsPU4Hfd4pgRtJY8AqLXwPEmBRPd07ZwuX/zyyr9zqQqCa4
	CzHul4xnVpb/PY6Ir1xQfkSAyzqomBo7iku9tpagytm1YWOPNRVG6khdyAqjrnbHv69+Mm+E1QolB
	wKy7IU7Uhfw0fM6PThanMNryEelVMCiMTVieuC9EDiQedAHAvIbJtmTFZLnsQGrxYyNf1BnzMqtHu
	eTK6s92Gg+mSNAnIB30DMrWnXFr6niwIhhq3CHmmwlRtvi1WK63rIV8YzYoh3Y+9gmQXCQy/LLj+d
	TQvVMf6eM/wmvgxJjnQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZuBe-0003hB-Cw; Wed, 27 Nov 2019 10:04:42 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZuBQ-0003gA-Ol
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 10:04:30 +0000
Received: by mail-pf1-x441.google.com with SMTP id z4so10725842pfn.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 02:04:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Fla0mLE3kPARMpuw52rBb145CpRIcrUfv5y6FZzfYow=;
 b=RwOyeu/bPVGltW59qJ4ylCblmR5cOGkzUq9UNiaKHpWvfQPMChAxhON+4bSUJovU8n
 zUPQsv3tpq+x4Lwhx4KaW+DIEzK+DzY9Kc7Cg5Lh4sj0Tgu9zIi8ibZ8YPn58QTJuUO+
 G4lekg7BfIooWsOH7uQR0q7Y9LKF4gHyFwK9A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Fla0mLE3kPARMpuw52rBb145CpRIcrUfv5y6FZzfYow=;
 b=CNjtnFc6vxnoBr5njWOSYwRqMrl13o72WNkgJScVmvxs1r68ed63mI8a4oCN5SQTMs
 qvTIGYxY9o+TJuFdZ45dZmOpbFacq1h88WPRUq70v2fZ6OrQrGrau0h74gVSdeBPEdGV
 VpA31JTrAHuxl6CJLv4uz2Y0dzKesbqZy1IniAl04N81LOsrbyjpMZoPYjKn4cHMKwpB
 +zqX7MLvCJWGhhdCNF6iIguPZfZ6UzcdsKCBo3RVLDxsByKrA/4combH2LByMaIZdzH7
 HlZ0lzMx0a3drP3krvfgpInH8CfzAB4ZE7m78BV4FJontJqVaVDO6D3byS7OrlYkFJ5r
 s8OA==
X-Gm-Message-State: APjAAAV+mkGF4PlAi841aWSk+PI3LYK/dX+oPS/CjupADZbAH2kiR8I5
 oBBrj8LOAq8qne0Y7jge0HF/xQ==
X-Google-Smtp-Source: APXvYqzXspCMDcVbYgH/6lgSpThq/u782otjCOXgjkwhYm6xw8BQ13uACOi72z9Q3T6FJKzNAto7hg==
X-Received: by 2002:a65:4809:: with SMTP id h9mr3814513pgs.265.1574849067339; 
 Wed, 27 Nov 2019 02:04:27 -0800 (PST)
Received: from pihsun-z840.tpe.corp.google.com
 ([2401:fa00:1:10:7889:7a43:f899:134c])
 by smtp.googlemail.com with ESMTPSA id
 n18sm16063907pff.152.2019.11.27.02.04.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Nov 2019 02:04:26 -0800 (PST)
From: Pi-Hsun Shih <pihsun@chromium.org>
To: 
Subject: [PATCH] drm/mediatek: Fix can't get component for external display
 plane.
Date: Wed, 27 Nov 2019 18:04:19 +0800
Message-Id: <20191127100419.130300-1-pihsun@chromium.org>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_020428_831377_50CBB5D9 
X-CRM114-Status: GOOD (  12.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-mediatek@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS FOR MEDIATEK" <dri-devel@lists.freedesktop.org>,
 Yongqiang Niu <yongqiang.niu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Pi-Hsun Shih <pihsun@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, CK Hu <ck.hu@mediatek.com>,
 Sean Paul <seanpaul@chromium.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

The original logic is ok for primary display, but will not find out
component for external display.

For example, plane->index is 6 for external display, but there are only
2 layer nr in external display, and this condition will never happen:
if (plane->index < (count + mtk_ddp_comp_layer_nr(comp)))

Fix this by using the offset of the plane to mtk_crtc->planes as index,
instead of plane->index.

Fixes: d6b53f68356f ("drm/mediatek: Add helper to get component for a plane")
Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index f80a8ba75977..b34e7d70702a 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -215,11 +215,12 @@ struct mtk_ddp_comp *mtk_drm_ddp_comp_for_plane(struct drm_crtc *crtc,
 	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
 	struct mtk_ddp_comp *comp;
 	int i, count = 0;
+	unsigned int local_index = plane - mtk_crtc->planes;
 
 	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
 		comp = mtk_crtc->ddp_comp[i];
-		if (plane->index < (count + mtk_ddp_comp_layer_nr(comp))) {
-			*local_layer = plane->index - count;
+		if (local_index < (count + mtk_ddp_comp_layer_nr(comp))) {
+			*local_layer = local_index - count;
 			return comp;
 		}
 		count += mtk_ddp_comp_layer_nr(comp);

base-commit: 1875ff320f14afe21731a6e4c7b46dd33e45dfaa
-- 
2.24.0.393.g34dc348eaf-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
