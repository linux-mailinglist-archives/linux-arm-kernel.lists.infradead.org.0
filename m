Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5CF17DDC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 18:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ORMQzds+W63I1ahAAqar19qFfBpva6cr+MD/4qXwowU=; b=m2cTeZdtMyyPrk
	sgGSsnxfeSY0LTSU3AczEetJ0ce6wHY/keMgjamohJ58wRWHQ0rtTeJjRQYtYiYcDAgm4r47wBjaI
	m6/rt/vN4dkJsEfzOpcV0M8PpDvrN92tgNpNJkT3PbncAmZzP5GGZ90nucOvGuQ96nZ4EjWh81V0s
	uB3bvgaRjEjGON1AN85fIukgnwN0S379NqlJx2yStSS+s6nrSEQckQP6cexxAYqwDjg+2JwmLSOqy
	xQtq3Get/GXDE8yNQkr1U5XybKk5knNjriwbnUvRPjWA3OcEnjIWAJft9s7Hho4bqXpBlOHckHob9
	nnqUnNZg5P4ZVa2Idp4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOP9S-0002tp-VD; Wed, 08 May 2019 16:10:38 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOP8a-0000wt-Vp
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 16:09:53 +0000
Received: by mail-qt1-x841.google.com with SMTP id y42so4372332qtk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 09:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LMYs8c+Tum5RlcWDu+Yjp2ss6Gwc93s4y2RXr302wBc=;
 b=V9GXqoO00IQawyAit26xGWHY+niy9Pe4noR5ZtzE7XaUhHzxNPBhX6heQEDbjay49Z
 xkJ4IzbsvL8tEUDZoydoxCXl2A9z/GZI5D5jWIzNq8f3wfhKb07n49CTcw8WlLhmXMtE
 TaEB3wvfBZKMhqCGoDaugHZvUVad3S96FLtKafp69w1aw539RLitBbFVlZhg1uN/Ethv
 oezSDrd7k0BCVmzekKQ4H0oXS5udyTb5739nCq6lBAD8iunjYSYceo+T696JaZhqljb8
 sSiHZGUhexQhh6g0lxTburkg/6oM8Tp9x5F1Ovd9Unwn4cBJsbGBX5eJJWQGCDPeZGL5
 hKNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LMYs8c+Tum5RlcWDu+Yjp2ss6Gwc93s4y2RXr302wBc=;
 b=EnAyV5F+gjuolThAguK9kvdC0IX+bvB6hBBO5smqaOC1JjuVAFB5l4DtStHexj4p7g
 bZajD31L/85HskhBijlwXhwZQDEEpv9JGjEShppqt1m3eXE65KKEk6lreMNWfvjRtp47
 6lUVB9urHC6ZJ3U7L7cJVWWK46cDeEyN4UScCRonCFZkKhjyBrilyW0mn2ZaXqMoOYJv
 84oKnLdkiC/UZfhm/F9q/wOpOIwQ1iiIbZIGCC1Svj0Rq4FoKSlZ+/SQo2pgWGpNnBn+
 l3qAYTYatNO8BrVyI2yi4D1CWdaxj3JQD9fVUOrtlVFJOXKQcwXoRbKfI9hhD47/UMw4
 NMkA==
X-Gm-Message-State: APjAAAUMzChmzncP9OQIuJZVL/7CrVSvbkXVftZyDbzcuqlteC+g6GAF
 JZqFiIBQTDFBtYSPhJCOouSVUg==
X-Google-Smtp-Source: APXvYqxEXJQfeSOuHsS9Kxc7CZkRGu6Bnk5tH6UETK9HU4JMYas/R8DIjUhhkcfh/hFGdmsGaq/udw==
X-Received: by 2002:a0c:bec4:: with SMTP id f4mr30829373qvj.17.1557331783753; 
 Wed, 08 May 2019 09:09:43 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id s50sm10936877qts.39.2019.05.08.09.09.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 09:09:43 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v4 10/11] drm/rockchip: Don't fully disable vop on self refresh
Date: Wed,  8 May 2019 12:09:15 -0400
Message-Id: <20190508160920.144739-11-sean@poorly.run>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190508160920.144739-1-sean@poorly.run>
References: <20190508160920.144739-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_090945_573115_B9B38C61 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Zain Wang <wzz@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, linux-kernel@vger.kernel.org,
 Sandy Huang <hjc@rock-chips.com>, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org, Sean Paul <seanpaul@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "Kristian H . Kristensen" <hoegsberg@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Instead of fully disabling and re-enabling the vop on self refresh
transitions, only disable the active windows. This will speed up
self refresh exits substantially and is still a power-savings win.

This patch integrates portions of Zain's patch from here:
https://patchwork.kernel.org/patch/9615063/

Changes in v2:
- None
Changes in v3:
- None
Changes in v4:
- Adjust for preceding vop_win_disable changes

Link to v1: https://patchwork.freedesktop.org/patch/msgid/20190228210939.83386-5-sean@poorly.run
Link to v2: https://patchwork.freedesktop.org/patch/msgid/20190326204509.96515-4-sean@poorly.run
Link to v3: https://patchwork.freedesktop.org/patch/msgid/20190502194956.218441-10-sean@poorly.run

Cc: Zain Wang <wzz@rock-chips.com>
Cc: Tomasz Figa <tfiga@chromium.org>
Cc: Kristian H. Kristensen <hoegsberg@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 41 ++++++++++++++++++---
 1 file changed, 36 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 15a5b44eb7e7..acdc86a9144b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -134,6 +134,7 @@ struct vop {
 	bool is_enabled;
 
 	struct completion dsp_hold_completion;
+	unsigned int win_enabled;
 
 	/* protected by dev->event_lock */
 	struct drm_pending_vblank_event *event;
@@ -555,6 +556,7 @@ static void vop_win_disable(struct vop *vop, const struct vop_win *vop_win)
 	}
 
 	VOP_WIN_SET(vop, win, enable, 0);
+	vop->win_enabled &= ~BIT(VOP_WIN_TO_INDEX(vop_win));
 }
 
 static int vop_enable(struct drm_crtc *crtc, struct drm_crtc_state *old_state)
@@ -637,6 +639,25 @@ static int vop_enable(struct drm_crtc *crtc, struct drm_crtc_state *old_state)
 	return ret;
 }
 
+static void rockchip_drm_set_win_enabled(struct drm_crtc *crtc, bool enabled)
+{
+        struct vop *vop = to_vop(crtc);
+        int i;
+
+        spin_lock(&vop->reg_lock);
+
+        for (i = 0; i < vop->data->win_size; i++) {
+                struct vop_win *vop_win = &vop->win[i];
+                const struct vop_win_data *win = vop_win->data;
+
+                VOP_WIN_SET(vop, win, enable,
+                            enabled && (vop->win_enabled & BIT(i)));
+        }
+        vop_cfg_done(vop);
+
+        spin_unlock(&vop->reg_lock);
+}
+
 static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 				    struct drm_crtc_state *old_state)
 {
@@ -644,15 +665,16 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 
 	WARN_ON(vop->event);
 
-	mutex_lock(&vop->vop_lock);
+	if (crtc->state->self_refresh_active)
+		rockchip_drm_set_win_enabled(crtc, false);
 
-	if (!vop->is_enabled) {
-		mutex_unlock(&vop->vop_lock);
-		return;
-	}
+	mutex_lock(&vop->vop_lock);
 
 	drm_crtc_vblank_off(crtc);
 
+	if (crtc->state->self_refresh_active)
+		goto out;
+
 	/*
 	 * Vop standby will take effect at end of current frame,
 	 * if dsp hold valid irq happen, it means standby complete.
@@ -683,6 +705,8 @@ static void vop_crtc_atomic_disable(struct drm_crtc *crtc,
 	clk_disable(vop->dclk);
 	vop_core_clks_disable(vop);
 	pm_runtime_put(vop->dev);
+
+out:
 	mutex_unlock(&vop->vop_lock);
 
 	if (crtc->state->event && !crtc->state->active) {
@@ -900,6 +924,7 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 	}
 
 	VOP_WIN_SET(vop, win, enable, 1);
+	vop->win_enabled |= BIT(win_index);
 	spin_unlock(&vop->reg_lock);
 }
 
@@ -1056,6 +1081,12 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
 	int dither_bpc = s->output_bpc ? s->output_bpc : 10;
 	int ret;
 
+	if (old_state && old_state->self_refresh_active) {
+		drm_crtc_vblank_on(crtc);
+		rockchip_drm_set_win_enabled(crtc, true);
+		return;
+	}
+
 	mutex_lock(&vop->vop_lock);
 
 	WARN_ON(vop->event);
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
