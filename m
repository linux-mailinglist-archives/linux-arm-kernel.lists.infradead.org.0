Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B833D1E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bnf+XHrpCpu4TjiOXN7EaEK3UkMvSPl5wJxlo6I3e+s=; b=Um8nHkZ9GPC7/h
	Wg3+CjhZHMr9AzxTty4G7kw5jSxm++l28hg9l//NuBwGzPO9tUNfUDuIWxr8qFwbp22PBhIGIjODd
	UrBc6gRv5Y9yWVF37wmWVLzxoiYFWJEAnt/rqrFX4OlvxB8bLfgkH0E+DtuDttwOKNv3SPmMvG++6
	U5VRusyJTR9uBTO9vmBA6e4Ry/SbI4qNA4C6h5ySarTgp48iei98UmlBW6yN7H0Lr+PrVMh367gp7
	SSXic9tjAOUdgcaB4bU+4X4boCszWDa9h3611DQ3kWWnCMCLgf4Y6JYNctOnSxrUrR/glBjWNOsYe
	XMBJgn5B2Z0Sx1oW/lUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajMX-0006Te-Cy; Tue, 11 Jun 2019 16:11:05 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajLh-0005w3-1R
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:10:17 +0000
Received: by mail-qt1-x841.google.com with SMTP id i34so15193288qta.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 11 Jun 2019 09:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y0ji3mKIAYcSnIWYhM5qOS31Zm4Q2kAhyujo/uy/6OQ=;
 b=fM3KZbrpaFihyjRRXhQ0f28oOq0IjYkGF+uxYZU4Q5nzMuDevEJzTpIBsTCpetx0JG
 KIwuDEXjPUETg16u13Fi1o/o2tSRmY08FEa4NVp/CfvYB128jFlhMFh/eTCGNqf1+tuI
 LePTBxK5gJRFZo06jtNR+HfmtBszYL3cy7fdmxIERnMhDov4Z4iv4fnqQq554U50tqx2
 ZvepiqoolL3BNq3DoJwiCERsH7XYFjoqbzLFwTNL+UvXXqYOEAHgiiJRVYoCcaaoXR+u
 tdxXWVyq+155asFBinX7tbF4zSJB5FHJl2B7A1rWEG72LWu6O4/59I5lPxDyr1UryyEr
 Rn6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y0ji3mKIAYcSnIWYhM5qOS31Zm4Q2kAhyujo/uy/6OQ=;
 b=qPiaKluw8CAfRxugWYarjSm2g6wEygMiFsMFv4OP+rHrjR86nww+qmzOs60/CtFRsQ
 ZDR3EF0Qfu7Ww6Zt5bE8f9MR1xtyucX8bT7torjJKnTUHpTI037kRXbqTt43TKBl/n3n
 OZHigsJ+HnZtWfm8KvZNE7aCuHp9xpgtqKBmgd5XYiFumUa642bfUghTnIzyQQbc0Lxd
 05Dxw5/zDrRlDDYP46V7MzFGTRN+nlJCawLHIhxyjB9OsB1VVQpMqCeyuPuKEgQhW0WW
 gqpPj4Fc5e9jcYmnJKVibqgLHNYStP04ZMUpcWtnfSSojgiDC3IqaEzX+4ETjMx/T+zg
 /N0A==
X-Gm-Message-State: APjAAAVb1/yTZu+M46KSqrWWYXPpfPYJ8d39VuEigP3DOPAhbKisW6JZ
 dNzqzJ5PI+o1CGrhYPe2XDU5GA==
X-Google-Smtp-Source: APXvYqyHMF+ZJxzYd8cMw/QOp3PUxz7ml6n+jLON30GeWk/Yh7Dvy6bfD8J91b1quglXDDS+ZAXpZQ==
X-Received: by 2002:ac8:6895:: with SMTP id m21mr50345039qtq.295.1560269411808; 
 Tue, 11 Jun 2019 09:10:11 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id d188sm6755094qkf.40.2019.06.11.09.10.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 11 Jun 2019 09:10:11 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v5 09/11] drm/rockchip: Use vop_win in vop_win_disable instead
 of vop_win_data
Date: Tue, 11 Jun 2019 12:08:23 -0400
Message-Id: <20190611160844.257498-10-sean@poorly.run>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
In-Reply-To: <20190611160844.257498-1-sean@poorly.run>
References: <20190611160844.257498-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_091013_110685_7C65C100 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Sean Paul <seanpaul@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Change the argument to vop_win_disable to vop_win to accomodate future
changes to the function.

Changes in v4:
- Added to the patchset
Changes in v5:
- None

Link to v4: https://patchwork.freedesktop.org/patch/msgid/20190508160920.144739-10-sean@poorly.run

Tested-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 1ff79b2f9afa8..83c6884f558d5 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -538,8 +538,10 @@ static void vop_core_clks_disable(struct vop *vop)
 	clk_disable(vop->hclk);
 }
 
-static void vop_win_disable(struct vop *vop, const struct vop_win_data *win)
+static void vop_win_disable(struct vop *vop, const struct vop_win *vop_win)
 {
+	const struct vop_win_data *win = vop_win->data;
+
 	if (win->phy->scl && win->phy->scl->ext) {
 		VOP_SCL_SET_EXT(vop, win, yrgb_hor_scl_mode, SCALE_NONE);
 		VOP_SCL_SET_EXT(vop, win, yrgb_ver_scl_mode, SCALE_NONE);
@@ -598,9 +600,8 @@ static int vop_enable(struct drm_crtc *crtc, struct drm_crtc_state *old_state)
 	if (!old_state || !old_state->self_refresh_active) {
 		for (i = 0; i < vop->data->win_size; i++) {
 			struct vop_win *vop_win = &vop->win[i];
-			const struct vop_win_data *win = vop_win->data;
 
-			vop_win_disable(vop, win);
+			vop_win_disable(vop, vop_win);
 		}
 	}
 	spin_unlock(&vop->reg_lock);
@@ -748,7 +749,6 @@ static void vop_plane_atomic_disable(struct drm_plane *plane,
 				     struct drm_plane_state *old_state)
 {
 	struct vop_win *vop_win = to_vop_win(plane);
-	const struct vop_win_data *win = vop_win->data;
 	struct vop *vop = to_vop(old_state->crtc);
 
 	if (!old_state->crtc)
@@ -756,7 +756,7 @@ static void vop_plane_atomic_disable(struct drm_plane *plane,
 
 	spin_lock(&vop->reg_lock);
 
-	vop_win_disable(vop, win);
+	vop_win_disable(vop, vop_win);
 
 	spin_unlock(&vop->reg_lock);
 }
@@ -1587,7 +1587,6 @@ static void vop_destroy_crtc(struct vop *vop)
 
 static int vop_initial(struct vop *vop)
 {
-	const struct vop_data *vop_data = vop->data;
 	struct reset_control *ahb_rst;
 	int i, ret;
 
@@ -1654,12 +1653,13 @@ static int vop_initial(struct vop *vop)
 	VOP_REG_SET(vop, misc, global_regdone_en, 1);
 	VOP_REG_SET(vop, common, dsp_blank, 0);
 
-	for (i = 0; i < vop_data->win_size; i++) {
-		const struct vop_win_data *win = &vop_data->win[i];
+	for (i = 0; i < vop->data->win_size; i++) {
+		struct vop_win *vop_win = &vop->win[i];
+		const struct vop_win_data *win = vop_win->data;
 		int channel = i * 2 + 1;
 
 		VOP_WIN_SET(vop, win, channel, (channel + 1) << 4 | channel);
-		vop_win_disable(vop, win);
+		vop_win_disable(vop, vop_win);
 		VOP_WIN_SET(vop, win, gate, 1);
 	}
 
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
