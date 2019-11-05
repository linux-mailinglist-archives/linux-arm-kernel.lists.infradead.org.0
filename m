Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31899F0802
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:15:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pY/l+hsNI96v2Ubx/QFuYBX2k9Thfsw2Fn4J/pZVn8I=; b=ghdJPQA9cYQ9Kw
	C127NNGB6kkB+9UKJZ4Rneq+KV9BcAc09RcJV7mf5F0GCnoluXdP2lgk31Ne/etQWhBhe+odXJfyF
	tMLTwaE1j902Ct1oF9senSFR8lH4e+TzvT69tjDb38/iHi6du5QNjYKSRWopl1uBdZk8Q1GjtBgoB
	Sl9hZV+9k2h1iSWymGEr3UJ5q1oj6hhSY/QneSoENX45amyVilUSwsmMfooCgF7+Zug5BePqhhksx
	doqWiD9BI6Q2Kv1cr9kto7OrZQ8hrmqZsw6u1M4KFAKCcV43UHIXHoGWsfjFgHthaFhj0Ib7PNJow
	f8HxGieOu6cUMMKlqcxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6Aq-0000ju-Fn; Tue, 05 Nov 2019 21:15:36 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS66M-00030g-6b
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:11:02 +0000
Received: by mail-yw1-xc43.google.com with SMTP id a67so8836083ywg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 13:10:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9rSYARhN3b2F7BmOpE2cXjpPtSaFQKmzVCGOumhcuwg=;
 b=SOht2ohCjqLrlZPq55rZ3anuMMKFp/QgaSmJhUWGEFjcZ3/AAFfFKH7iOkzM0vgcv3
 W1J6H42pEnK3h94IuJb/CT9RHm5BVz3cAqXX97FID9YTw/D9vO6XoOKwNnFgNiRtdBrT
 ATE0IH8Ay+I9ekaK7yQVtxWDauagErUrCz7Qz5ZUCLhHxtEN8dls/5g4POuA+ug136/H
 MTabTceDtlw2hfiztNZM4KLFVDzh5/zGY4dWp4Owzf7Su0VcbzRxEoPmOlgbsXuy8FCO
 B8RGeds9Qd3QlnkdC7ACFgZPu7XOuk0KOeTmXx3lanPTLV1UrVKtS3PZu/O2wdJjM41B
 6KOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9rSYARhN3b2F7BmOpE2cXjpPtSaFQKmzVCGOumhcuwg=;
 b=j6twk84ZqWplFnrJge/HPCol1NDrJYfbYtbcVdFpousHgZM4hlaaY/YkqcmlCMVZoV
 aSOrhYF1YJirTDpPQKkTZ5XZAiJkow0EvTjFnFAXifg1Q5t2KnfpxAW9bW0Xl7ed/9+w
 uharO9spNXzDCE4WdpfG0TPm/8+UDkqma3OOSNwdbNrGK1m0Sup+1zXsPoMeJP048GKB
 4nCiS7Hjbwj3UfUYZCgjrBiHH8gVi/u9Hmu1Efvhfps0u6BDoQZpc3ZitDq2B+c3C8rw
 NjzmQrH9vJDbGs5UkDkzkDB1E2JnJtISdQW5rXbPTWmv1QLPPYDVzYqIAXE7oFqPLK17
 SZYw==
X-Gm-Message-State: APjAAAXbXaqFU7j43aEhWMyv0vLVb2EnoCac8n0rrWrH6YBklwvdvmoW
 sFq631uWRlbWfbe/C0fqIKFfNA==
X-Google-Smtp-Source: APXvYqwk0F8Xq86aLEEo6QvW5jscZPzVRTRYEBQOJjXehNuiMOKQ4SUnYGK0LLbYQDo3+77/8w4Jtw==
X-Received: by 2002:a0d:f8c6:: with SMTP id
 i189mr24531710ywf.411.1572988255960; 
 Tue, 05 Nov 2019 13:10:55 -0800 (PST)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id j66sm1815216ywb.101.2019.11.05.13.10.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 13:10:55 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 4/7] drm/mediatek: Plumb supported rotation values from
 components to plane init
Date: Tue,  5 Nov 2019 16:10:21 -0500
Message-Id: <20191105211034.123937-5-sean@poorly.run>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
In-Reply-To: <20191105211034.123937-1-sean@poorly.run>
References: <20191105211034.123937-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_131058_301048_57B3911C 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
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

This patch adds the ability for components to expose supported rotations
which will be exposed to userspace via a plane rotation property.

No functional changes in this patch.

Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c     |  4 +++-
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h | 10 ++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_plane.c    | 12 +++++++++++-
 drivers/gpu/drm/mediatek/mtk_drm_plane.h    |  4 +++-
 4 files changed, 27 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index 04e7e4bdbdb5..f80a8ba75977 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -600,13 +600,15 @@ static int mtk_drm_crtc_init_comp_planes(struct drm_device *drm_dev,
 					 int comp_idx, int pipe)
 {
 	int num_planes = mtk_drm_crtc_num_comp_planes(mtk_crtc, comp_idx);
+	struct mtk_ddp_comp *comp = mtk_crtc->ddp_comp[comp_idx];
 	int i, ret;
 
 	for (i = 0; i < num_planes; i++) {
 		ret = mtk_plane_init(drm_dev,
 				&mtk_crtc->planes[mtk_crtc->layer_nr],
 				BIT(pipe),
-				mtk_drm_crtc_plane_type(mtk_crtc->layer_nr));
+				mtk_drm_crtc_plane_type(mtk_crtc->layer_nr),
+				mtk_ddp_comp_supported_rotations(comp));
 		if (ret)
 			return ret;
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
index 3de371e28bdf..2f1e9e75b8da 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
@@ -77,6 +77,7 @@ struct mtk_ddp_comp_funcs {
 	void (*stop)(struct mtk_ddp_comp *comp);
 	void (*enable_vblank)(struct mtk_ddp_comp *comp, struct drm_crtc *crtc);
 	void (*disable_vblank)(struct mtk_ddp_comp *comp);
+	unsigned int (*supported_rotations)(struct mtk_ddp_comp *comp);
 	unsigned int (*layer_nr)(struct mtk_ddp_comp *comp);
 	void (*layer_on)(struct mtk_ddp_comp *comp, unsigned int idx);
 	void (*layer_off)(struct mtk_ddp_comp *comp, unsigned int idx);
@@ -133,6 +134,15 @@ static inline void mtk_ddp_comp_disable_vblank(struct mtk_ddp_comp *comp)
 		comp->funcs->disable_vblank(comp);
 }
 
+static inline
+unsigned int mtk_ddp_comp_supported_rotations(struct mtk_ddp_comp *comp)
+{
+	if (comp->funcs && comp->funcs->supported_rotations)
+		return comp->funcs->supported_rotations(comp);
+
+	return 0;
+}
+
 static inline unsigned int mtk_ddp_comp_layer_nr(struct mtk_ddp_comp *comp)
 {
 	if (comp->funcs && comp->funcs->layer_nr)
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index 58b02fffe321..cd7c97eb7ee6 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -138,6 +138,7 @@ static void mtk_plane_atomic_update(struct drm_plane *plane,
 	state->pending.y = plane->state->dst.y1;
 	state->pending.width = drm_rect_width(&plane->state->dst);
 	state->pending.height = drm_rect_height(&plane->state->dst);
+	state->pending.rotation = plane->state->rotation;
 	wmb(); /* Make sure the above parameters are set before update */
 	state->pending.dirty = true;
 }
@@ -160,7 +161,8 @@ static const struct drm_plane_helper_funcs mtk_plane_helper_funcs = {
 };
 
 int mtk_plane_init(struct drm_device *dev, struct drm_plane *plane,
-		   unsigned long possible_crtcs, enum drm_plane_type type)
+		   unsigned long possible_crtcs, enum drm_plane_type type,
+		   unsigned int supported_rotations)
 {
 	int err;
 
@@ -172,6 +174,14 @@ int mtk_plane_init(struct drm_device *dev, struct drm_plane *plane,
 		return err;
 	}
 
+	if (supported_rotations & ~DRM_MODE_ROTATE_0) {
+		err = drm_plane_create_rotation_property(plane,
+							 DRM_MODE_ROTATE_0,
+							 supported_rotations);
+		if (err)
+			DRM_INFO("Create rotation property failed\n");
+	}
+
 	drm_plane_helper_add(plane, &mtk_plane_helper_funcs);
 
 	return 0;
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.h b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
index 6f842df722c7..760885e35b27 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.h
@@ -20,6 +20,7 @@ struct mtk_plane_pending_state {
 	unsigned int			y;
 	unsigned int			width;
 	unsigned int			height;
+	unsigned int			rotation;
 	bool				dirty;
 };
 
@@ -35,6 +36,7 @@ to_mtk_plane_state(struct drm_plane_state *state)
 }
 
 int mtk_plane_init(struct drm_device *dev, struct drm_plane *plane,
-		   unsigned long possible_crtcs, enum drm_plane_type type);
+		   unsigned long possible_crtcs, enum drm_plane_type type,
+		   unsigned int supported_rotations);
 
 #endif
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
