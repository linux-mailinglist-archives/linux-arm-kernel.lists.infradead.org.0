Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFA7F0800
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:15:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IlmxN6J3nzzY82AZLIRLgVqQQ9unPsFuwTnnPO70oc8=; b=N1e4swxNpltD0p
	waq8qak/w4RJ9hufg7uJmyweUSgsn3zZkK48I27SgSlUYnaeQ1C9eoshN+qV0FLyxugklZQR36/a5
	33lWQmyOZYF5UKYNDpMs6523sS6XcV57RBZtKIHXt1OFWNWM0jsFAwsRVQgeruT8wCfsJcHIyS88U
	lmdBSdxtg5sqe/iU00WlWwMT0polLdMm6ZB31W/btyudk5gayCVi+8OMMmFCvyW0/cZ4latiPStuC
	MhUHQ5sb2Z6Vs3DFvLmTwY5yzHmtSc4l5yaYu9K9JfYoNuG2lqS/an4uGxJs/Wj4afJggMBnlpt5u
	GFecP0maaDIwzoMd9xmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6Af-0000Ab-Hw; Tue, 05 Nov 2019 21:15:25 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS66J-0002xk-Ix
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:11:02 +0000
Received: by mail-yw1-xc42.google.com with SMTP id s6so8840134ywe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 13:10:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=47K5oOg7WLw5/3p9dwg+0DGsBD3xNcb5zwIbofYoaPA=;
 b=CWNIiMSHLVnAufWZgrmvlq1asdA7IwpWS/kZgw6NLjJTJTgeYxEfGOldA6SUYIn36/
 /XlzTYjXGfnqwPIlshx5rIUyuA210kV1lo+8QucYHMdWnRSGIXYOvA0Knm0op+7zFD1s
 nb/3HMlqMnYKEn8KKAcVudt1XHSAyRl2fbpsIehgiznPgxQfgf8grLlQipXhSnACYR87
 QmM1jNs5KHPflI2HM+s/W2tNhTjf0g2GltXN0UlTxDc9yyUYsgia56eXCwNEiTchzaA9
 q8Ozr+sw2Ric7EQ3d/lulCZyQz8W/oWYyrtDtc8cgQhyIXSA5fmHYQjgalMlgZ5cPgIe
 qTFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=47K5oOg7WLw5/3p9dwg+0DGsBD3xNcb5zwIbofYoaPA=;
 b=EqG2r0jRXnKxS2fUqgDapzUQVPdb7lVrm+Igf5/Y/h2HRNHxI7sYkhy2LFNMUJSjrv
 ONd1I48Hsk9nMzo/waQ7A6ePNuIBTC0+oXj6HiTrpVyI7m7PGXlfGF/Cwfcw2UWuc/Iv
 s8KciMCOeCp+vn/Rye4hGbox0bQkdZiol55tdd1Or5RGMBzw68GIEx3tAdBFuArOLRWb
 0U3tH5RbrVj9Sv45qt0wqs1/9GAz4S4bvay7X7EXfbIXTVas35XbHW90MWJXENrlyYHs
 Fjh/l7S17/JW0hDBZhdQ9q/hgy/jf34vQcwAXz23gF9Q8MTOXy8dqNV68p7Gc4wi3e6c
 gD7w==
X-Gm-Message-State: APjAAAWiDqY6+o+e5Czyx3wO0oV83Wg1vCDPVBebMj0Be37EXxxNOrB7
 049+S4wUi4/Zf9msvGCluCj03w==
X-Google-Smtp-Source: APXvYqwa5e6g0vw3L3tFhW0BtB4ETIxgip1pNsXJmRwcKlnn/4sNZ5kkBKbaTE9F2U4hGDttwHOBxg==
X-Received: by 2002:a81:db07:: with SMTP id u7mr4709820ywm.126.1572988253967; 
 Tue, 05 Nov 2019 13:10:53 -0800 (PST)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id j66sm1815216ywb.101.2019.11.05.13.10.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 13:10:53 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 3/7] drm/mediatek: Add plumbing for layer_check hook
Date: Tue,  5 Nov 2019 16:10:20 -0500
Message-Id: <20191105211034.123937-4-sean@poorly.run>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
In-Reply-To: <20191105211034.123937-1-sean@poorly.run>
References: <20191105211034.123937-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_131055_657932_700A3FF4 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
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

This allows components to implement a .layer_check callback for their
layers which is called during atomic_check.

Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_crtc.c     | 10 ++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_crtc.h     |  2 ++
 drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h | 12 ++++++++++++
 drivers/gpu/drm/mediatek/mtk_drm_plane.c    |  6 ++++++
 4 files changed, 30 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
index ccf395f17a99..04e7e4bdbdb5 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
@@ -394,6 +394,16 @@ static void mtk_crtc_ddp_config(struct drm_crtc *crtc)
 	}
 }
 
+int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
+			     struct mtk_plane_state *state)
+{
+	unsigned int local_layer;
+	struct mtk_ddp_comp *comp;
+
+	comp = mtk_drm_ddp_comp_for_plane(crtc, plane, &local_layer);
+	return mtk_ddp_comp_layer_check(comp, local_layer, state);
+}
+
 static void mtk_drm_crtc_atomic_enable(struct drm_crtc *crtc,
 				       struct drm_crtc_state *old_state)
 {
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
index fcc134eb00c9..6afe1c19557a 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.h
@@ -19,5 +19,7 @@ void mtk_crtc_ddp_irq(struct drm_crtc *crtc, struct mtk_ddp_comp *comp);
 int mtk_drm_crtc_create(struct drm_device *drm_dev,
 			const enum mtk_ddp_comp_id *path,
 			unsigned int path_len);
+int mtk_drm_crtc_plane_check(struct drm_crtc *crtc, struct drm_plane *plane,
+			     struct mtk_plane_state *state);
 
 #endif /* MTK_DRM_CRTC_H */
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
index 26441f4d1ad3..3de371e28bdf 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
@@ -80,6 +80,9 @@ struct mtk_ddp_comp_funcs {
 	unsigned int (*layer_nr)(struct mtk_ddp_comp *comp);
 	void (*layer_on)(struct mtk_ddp_comp *comp, unsigned int idx);
 	void (*layer_off)(struct mtk_ddp_comp *comp, unsigned int idx);
+	int (*layer_check)(struct mtk_ddp_comp *comp,
+			   unsigned int idx,
+			   struct mtk_plane_state *state);
 	void (*layer_config)(struct mtk_ddp_comp *comp, unsigned int idx,
 			     struct mtk_plane_state *state);
 	void (*gamma_set)(struct mtk_ddp_comp *comp,
@@ -152,6 +155,15 @@ static inline void mtk_ddp_comp_layer_off(struct mtk_ddp_comp *comp,
 		comp->funcs->layer_off(comp, idx);
 }
 
+static inline int mtk_ddp_comp_layer_check(struct mtk_ddp_comp *comp,
+					   unsigned int idx,
+					   struct mtk_plane_state *state)
+{
+	if (comp->funcs && comp->funcs->layer_check)
+		return comp->funcs->layer_check(comp, idx, state);
+	return 0;
+}
+
 static inline void mtk_ddp_comp_layer_config(struct mtk_ddp_comp *comp,
 					     unsigned int idx,
 					     struct mtk_plane_state *state)
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_plane.c b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
index 584a9ecadce6..58b02fffe321 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_plane.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_plane.c
@@ -84,6 +84,7 @@ static int mtk_plane_atomic_check(struct drm_plane *plane,
 {
 	struct drm_framebuffer *fb = state->fb;
 	struct drm_crtc_state *crtc_state;
+	int ret;
 
 	if (!fb)
 		return 0;
@@ -91,6 +92,11 @@ static int mtk_plane_atomic_check(struct drm_plane *plane,
 	if (!state->crtc)
 		return 0;
 
+	ret = mtk_drm_crtc_plane_check(state->crtc, plane,
+				       to_mtk_plane_state(state));
+	if (ret)
+		return ret;
+
 	crtc_state = drm_atomic_get_crtc_state(state->state, state->crtc);
 	if (IS_ERR(crtc_state))
 		return PTR_ERR(crtc_state);
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
