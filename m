Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6DCF07FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:14:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dKR1s/ImZZHX9k7ZcoKwpHz03V0fuZXY93g0F6kJRnM=; b=DGDfP0kiUFwLwX
	C0ZJysGHATD6EDHfnOTNnhY7OhJFUlWhs3k9jR2sB67eTk3Z8sAlIzt53pr0i7X4lgJktFFoEwNMe
	QH4FEYSjQJ5OmWMlntSF3dorOe9CDOZlaROPUKtEhCTXw1rgotyWG2FDENcCiLh5tpyBmNXYV1dJB
	0QGYZ3tHOiSieCehEwmSHvJkFuk//GkTmVpL3S8DICgwMUAslJ+XKlkgJmOlL96IXJo+j9955SsHY
	RFoBX4EgluGoXej9BSiBxFas07IgEKA2yg6low33/MGapZYFRGu0p6oMmL9b60f5URgPpkdyPqBt1
	PLlKpG27EjYNHQIessKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6A5-0007DT-Ua; Tue, 05 Nov 2019 21:14:49 +0000
Received: from mail-yb1-xb41.google.com ([2607:f8b0:4864:20::b41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS66H-0002uW-ME
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:10:55 +0000
Received: by mail-yb1-xb41.google.com with SMTP id w6so8431823ybj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 13:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ta1Xwfa+QeAgFSaukNPJQ5uJyx0Z9KTcb0vCHsmGyFQ=;
 b=XA/fs7qgEdfJZML+yaAQj0RuclIsRF7Ra54ebOTOISjSJsvFenImCTBE6H+Tya5FKp
 YlAwTnFfG8ezZMDaqA0HJZikqdEHYac7VFwjzlzBpKZ4sG3lqdDZqtpWWJiMkD/T6x3X
 EFSD8vOEyexf+Odjr1tXCZa9CX35E54Jm5ooFUlPNOVyFOSa9IljuapxUFX2L2ySKvlw
 8AZp/urnvC+xMC+E0XaBzF2do4tcNa1YV+RS2fyLicN1Biz6DJQ019Cj8AHzPAnMGFeS
 PGwJf4Rmu/viUbcl2eIoqpebK0yG/Xg5GgEryWs7INnvw46teyCbUNsZuZj8S1dKmTSD
 MCsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ta1Xwfa+QeAgFSaukNPJQ5uJyx0Z9KTcb0vCHsmGyFQ=;
 b=Tn8tLDJaOUiSpn/OSFpZySrG2jDhejqFkiu8oy4sqUdpxeCH1mkQBF3BvUCQTJNzf/
 9T1THJpWscE8pCq5LEAkHLbbSPvaSrDSpsi0L9pDaxE7Q0BRJBBC6RM+xHpbB5adG6sc
 dEHoJDQhVdQuL++yuGdKfutzxfvcsgzdj4KQvytmbZ6hHTpm+8Gz79IPjQaJQlf5fNVS
 gR12GMnK7rrnLsWK6HipiyQ+l/6VDim0rgMgYWLzybBLzQk4ihvm8U0Ip//uKdisjYCK
 2J1WCH5Yfad02nI3Ntt8giCZragwq4Zii65jq3RVPgnfNM0fnGMnt7mQ2naSMfIngffn
 rHRg==
X-Gm-Message-State: APjAAAVYuvA9ZhzUdla0ol0Mgsa38Nn1HL6lrgmJgynmUlIwIQST7Ce3
 +/HreE4Ze+aMqRz1uK1pjaMqft8fyZ0=
X-Google-Smtp-Source: APXvYqylGH6ZNkY6K1tLbHFtvCxKxcHMgw9PDG6CbQLvQSvJUEARUn/PSgkolxKP8MpBrxfh0FKWzw==
X-Received: by 2002:a25:cc84:: with SMTP id
 l126mr28076860ybf.249.1572988252193; 
 Tue, 05 Nov 2019 13:10:52 -0800 (PST)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id j66sm1815216ywb.101.2019.11.05.13.10.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 13:10:51 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 2/7] drm/mediatek: Add helper to get component for a plane
Date: Tue,  5 Nov 2019 16:10:19 -0500
Message-Id: <20191105211034.123937-3-sean@poorly.run>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
In-Reply-To: <20191105211034.123937-1-sean@poorly.run>
References: <20191105211034.123937-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_131053_762067_162D1DDF 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b41 listed in]
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

Instead of hard-coding which components have planes, add a helper
function to walk the components and map a plane index to a component
layer.

Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c | 56 +++++++++++++++----------
 1 file changed, 34 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 7d0f50da8e40..ccf395f17a99 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -207,6 +207,28 @@ static void mtk_crtc_ddp_clk_disable(struct mtk_drm_crtc *mtk_crtc)
 		clk_disable_unprepare(mtk_crtc->ddp_comp[i]->clk);
 }
 
+static
+struct mtk_ddp_comp *mtk_drm_ddp_comp_for_plane(struct drm_crtc *crtc,
+						struct drm_plane *plane,
+						unsigned int *local_layer)
+{
+	struct mtk_drm_crtc *mtk_crtc = to_mtk_crtc(crtc);
+	struct mtk_ddp_comp *comp;
+	int i, count = 0;
+
+	for (i = 0; i < mtk_crtc->ddp_comp_nr; i++) {
+		comp = mtk_crtc->ddp_comp[i];
+		if (plane->index < (count + mtk_ddp_comp_layer_nr(comp))) {
+			*local_layer = plane->index - count;
+			return comp;
+		}
+		count += mtk_ddp_comp_layer_nr(comp);
+	}
+
+	WARN(1, "Failed to find component for plane %d\n", plane->index);
+	return NULL;
+}
+
 static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 {
 	struct drm_crtc *crtc = &mtk_crtc->base;
@@ -283,19 +305,12 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
 	for (i = 0; i < mtk_crtc->layer_nr; i++) {
 		struct drm_plane *plane = &mtk_crtc->planes[i];
 		struct mtk_plane_state *plane_state;
-		struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
-		unsigned int comp_layer_nr = mtk_ddp_comp_layer_nr(comp);
+		struct mtk_ddp_comp *comp;
 		unsigned int local_layer;
 
 		plane_state = to_mtk_plane_state(plane->state);
-
-		if (i >= comp_layer_nr) {
-			comp = mtk_crtc->ddp_comp[1];
-			local_layer = i - comp_layer_nr;
-		} else
-			local_layer = i;
-		mtk_ddp_comp_layer_config(comp, local_layer,
-					  plane_state);
+		comp = mtk_drm_ddp_comp_for_plane(crtc, plane, &local_layer);
+		mtk_ddp_comp_layer_config(comp, local_layer, plane_state);
 	}
 
 	return 0;
@@ -343,7 +358,6 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 	struct mtk_crtc_state *state = to_mtk_crtc_state(mtk_crtc->base.state);
 	struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[0];
 	unsigned int i;
-	unsigned int comp_layer_nr = mtk_ddp_comp_layer_nr(comp);
 	unsigned int local_layer;
 
 	/*
@@ -366,17 +380,15 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 
 			plane_state = to_mtk_plane_state(plane->state);
 
-			if (plane_state->pending.config) {
-				if (i >= comp_layer_nr) {
-					comp = mtk_crtc->ddp_comp[1];
-					local_layer = i - comp_layer_nr;
-				} else
-					local_layer = i;
-
-				mtk_ddp_comp_layer_config(comp, local_layer,
-							  plane_state);
-				plane_state->pending.config = false;
-			}
+			if (!plane_state->pending.config)
+				continue;
+
+			comp = mtk_drm_ddp_comp_for_plane(crtc, plane,
+							  &local_layer);
+
+			mtk_ddp_comp_layer_config(comp, local_layer,
+						  plane_state);
+			plane_state->pending.config = false;
 		}
 		mtk_crtc->pending_planes = false;
 	}
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
