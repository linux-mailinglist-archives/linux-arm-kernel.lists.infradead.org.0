Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D862F07FB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:14:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7MmvBBua/GvjyRBoyB0/Z1lXmwuKe3oDvQvWUhXEDUE=; b=o7zrHXnLJ8EkVi
	wvAFaNCCLO2n+UxcVw52Q5l+fRbXwCkeL9iDZERSufKeUD9KM2JJGcYkzVk5jF3h9/oAJ5sK22Nc7
	00QlmZzQWqFtRFbpGriRHpsrMsIhkUfsMd4O4hCMumL6c4ltBbLHJXIP6nBhqFDhMNMCLoRFEtVcc
	kpsHNrWkGGW9tS5SYcUUnvzYY68OHTizNf1Vuyg2gLrCriXaDz4drBix99BJ20q7YRb6A7NlSEZTA
	HzEM34dT8rwbEZZxHAyw4xTHZd2rnuanWtzxChjfudbCkjCH+/ZYLV+Eh/s7a8C8zykqSWLN3sxe1
	tHzZZ7dhjiFwf2d35rbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS69u-0006zM-Fz; Tue, 05 Nov 2019 21:14:38 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS66F-0002sj-JU
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:10:53 +0000
Received: by mail-yb1-xb42.google.com with SMTP id i12so3964318ybg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 13:10:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wV4eozP5loNQwYGwTBZjo7fjHegUFd2KeaLBGEk3hXA=;
 b=G7Z/3RjJH8MhJ9aRUpU58OK1kicWtOfm3WtQLcKX1elIQ+JQ/825WwFnfTx4QpN0R5
 /qz307oDAZfzYxFCewWZ6HZAx5GKfnNPQPZJw852kLB84ojf24fkweH7Mql1ilO/efva
 16no+9TaJtrLwAejmjAg168sSggFqN5IP5HAJLd1LDvbs7ICGLkHKbAEbx9Q+m/Hjbge
 wgDh+5WQN2fFFuG9iTJfXU2Oe8fE9gFFXyr7zSyuv8loygbB+7NHsZL1cKNzuKhhDaSE
 Yyj2G5EB6Ivy6uimax0FkY71FYWlYKILN1Mia76WZgswL4pnibiWzvwRC9K/gJRbn9kN
 zqVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wV4eozP5loNQwYGwTBZjo7fjHegUFd2KeaLBGEk3hXA=;
 b=lkyGYugDKPhUwXdbjsxk13d8YkOQwwZVzrCGPD0KKnhxMCPHvDNdg4kLhm17S2zGYr
 tF0gF/rNXwLLRk5YcCeMALJC2WV7EiAl7OqovlPzZVTEDIU5zRnyiKI5hEAYZz0vHuTQ
 0hMP69StadsIF2aXTvxEr+6AI7CGqhM+SX7lQpCANYyL+1zj0gHaXZ6FSAU6MDsslK+i
 qjjJ9Ctaa91QcbdRhcUtanS2ubsBVHmdwWXeH+I+E1pU5pa59wbrYY6secCqenLirLm7
 LtBD5aKJA3+3Pcxv2VZ+1mzhcMDPkYr74tf0y4K9gLlhLBdSSt2PKZXLdfvEBGEe2UOx
 AGBw==
X-Gm-Message-State: APjAAAUeAqnZuXmadBc6LdjIAllKMCo2X1s0dIG5NRM4QgzRqgC6frsr
 1MuV3WgDlulJWkneFI3ivn347A==
X-Google-Smtp-Source: APXvYqzU0qqs+85NekuoYN3av0T/6sjs3A+/t1dcUDPS/GuqvBVMdxP+0PxcpfW0TVgNQIEIHKU3cw==
X-Received: by 2002:a25:c281:: with SMTP id s123mr29226020ybf.92.1572988250491; 
 Tue, 05 Nov 2019 13:10:50 -0800 (PST)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id j66sm1815216ywb.101.2019.11.05.13.10.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 13:10:50 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 1/7] drm/mediatek: Refactor plane init
Date: Tue,  5 Nov 2019 16:10:18 -0500
Message-Id: <20191105211034.123937-2-sean@poorly.run>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
In-Reply-To: <20191105211034.123937-1-sean@poorly.run>
References: <20191105211034.123937-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_131051_656933_FDAD7826 
X-CRM114-Status: GOOD (  14.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dcastagna@chromium.org, matthias.bgg@gmail.com, mcasas@chromium.org,
 Sean Paul <seanpaul@chromium.org>, p.zabel@pengutronix.de,
 frkoenig@chromium.org, ck.hu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, markyacoub@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Add a couple of functions which enumerate the number of planes for a
component and initialize the planes for a component.

No functional changes in this patch, but it will allow us to selectively
support rotation if the component supports it.

Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 77 +++++++++++++++++++------
 1 file changed, 59 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index b841d3706d8b..7d0f50da8e40 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -543,14 +543,63 @@ void mtk_crtc_ddp_irq(struct drm_crtc *crtc, struct mtk_ddp_comp *comp)
 	mtk_drm_finish_page_flip(mtk_crtc);
 }
 
+static int mtk_drm_crtc_num_comp_planes(struct mtk_drm_crtc *mtk_crtc,
+					int comp_idx)
+{
+	struct mtk_ddp_comp *comp;
+
+	if (comp_idx > 1)
+		return 0;
+
+	comp = mtk_crtc->ddp_comp[comp_idx];
+	if (!comp->funcs)
+		return 0;
+
+	if (comp_idx == 1 && !comp->funcs->bgclr_in_on)
+		return 0;
+
+	return mtk_ddp_comp_layer_nr(comp);
+}
+
+static inline
+enum drm_plane_type mtk_drm_crtc_plane_type(unsigned int plane_idx)
+{
+	if (plane_idx == 0)
+		return DRM_PLANE_TYPE_PRIMARY;
+	else if (plane_idx == 1)
+		return DRM_PLANE_TYPE_CURSOR;
+	else
+		return DRM_PLANE_TYPE_OVERLAY;
+
+}
+
+static int mtk_drm_crtc_init_comp_planes(struct drm_device *drm_dev,
+					 struct mtk_drm_crtc *mtk_crtc,
+					 int comp_idx, int pipe)
+{
+	int num_planes = mtk_drm_crtc_num_comp_planes(mtk_crtc, comp_idx);
+	int i, ret;
+
+	for (i = 0; i < num_planes; i++) {
+		ret = mtk_plane_init(drm_dev,
+				&mtk_crtc->planes[mtk_crtc->layer_nr],
+				BIT(pipe),
+				mtk_drm_crtc_plane_type(mtk_crtc->layer_nr));
+		if (ret)
+			return ret;
+
+		mtk_crtc->layer_nr++;
+	}
+	return 0;
+}
+
 int mtk_drm_crtc_create(struct drm_device *drm_dev,
 			const enum mtk_ddp_comp_id *path, unsigned int path_len)
 {
 	struct mtk_drm_private *priv = drm_dev->dev_private;
 	struct device *dev = drm_dev->dev;
 	struct mtk_drm_crtc *mtk_crtc;
-	enum drm_plane_type type;
-	unsigned int zpos;
+	unsigned int num_comp_planes = 0;
 	int pipe = priv->num_pipes;
 	int ret;
 	int i;
@@ -606,23 +655,15 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
 		mtk_crtc->ddp_comp[i] = comp;
 	}
 
-	mtk_crtc->layer_nr = mtk_ddp_comp_layer_nr(mtk_crtc->ddp_comp[0]);
-	if (mtk_crtc->ddp_comp_nr > 1) {
-		struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[1];
+	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++)
+		num_comp_planes += mtk_drm_crtc_num_comp_planes(mtk_crtc, i);
+
+	mtk_crtc->planes = devm_kcalloc(dev, num_comp_planes,
+					sizeof(struct drm_plane), GFP_KERNEL);
 
-		if (comp->funcs->bgclr_in_on)
-			mtk_crtc->layer_nr += mtk_ddp_comp_layer_nr(comp);
-	}
-	mtk_crtc->planes = devm_kcalloc(dev, mtk_crtc->layer_nr,
-					sizeof(struct drm_plane),
-					GFP_KERNEL);
-
-	for (zpos = 0; zpos < mtk_crtc->layer_nr; zpos++) {
-		type = (zpos == 0) ? DRM_PLANE_TYPE_PRIMARY :
-				(zpos == 1) ? DRM_PLANE_TYPE_CURSOR :
-						DRM_PLANE_TYPE_OVERLAY;
-		ret = mtk_plane_init(drm_dev, &mtk_crtc->planes[zpos],
-				     BIT(pipe), type);
+	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
+		ret = mtk_drm_crtc_init_comp_planes(drm_dev, mtk_crtc, i,
+						    pipe);
 		if (ret)
 			return ret;
 	}
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
