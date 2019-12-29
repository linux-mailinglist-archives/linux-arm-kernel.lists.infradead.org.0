Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C6612C36A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 17:29:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SuMNaeKRg/isYz2LpRWB2KFfpLweN9xkxKHcGfUesEw=; b=t+RmdlCVCWmGQYrdnkbXT+NVul
	BjdbxvaDkG7OdTjdaShQamCgk5l+sngCotJYzrnBqIlR/OFnjTrOF/Ccle85crXy9J6srl0gTTPQw
	LfoW9ys1PDGEt1aTBlHJKsEhyam12SfJW/Hnw4lFkzO+glpSmwSX7lxTqeMFMf930XcAIhw3zk0PG
	uy0p2lGaDQFDPvLjbmkSYTf3Gj4U7+ZVejBvvLzc1tRNVeEjJ1mO48jH4XsjK5sHONdIkcb/eFR23
	F0AaKksKjVVDfyac8WHBM4po6S5AG4k7sMB565pipvywpWviuUu0pEBHHbHGixS+kveLHzSQq7LwG
	7txDCGHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilbQw-000610-KQ; Sun, 29 Dec 2019 16:28:50 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilbQn-0005zv-RV
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 16:28:43 +0000
Received: by mail-lj1-x244.google.com with SMTP id y6so23210310lji.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Dec 2019 08:28:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globallogic.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4GjLcnLAOH5ADEEQuRyqeGZSux8fXFgp4Xzc2adgfqk=;
 b=dDkneKR9lD+kK9916qjmFQsqFAkZxxEvuLdXWG97PK+WZAm62WGyeOEBaygYAVGhib
 G17nJGDBamUEtVd5ZS3Ll+K29JBdgCHvD7aXJEqo8yfkYI0FP6zTpxXfkmCk+qg3BbWG
 Np+BB104nvD89NAIXYC6UduUV24oDcATfpE5ew2IMeXokd5lnf44y51X0TxQEDit4bSr
 MBKP10P62BX7BGUhOr1XxzI/h44j87Lh6/W9PecmVfMKPdp03glsE4VTM4+j0J3+d+Ns
 p47qHMz4MkYe7KcNfdLqBj8t9T92Hw4h7tg1MQJgG2KD11EpzsHYIWDCFvzGkTStKEx+
 +T4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4GjLcnLAOH5ADEEQuRyqeGZSux8fXFgp4Xzc2adgfqk=;
 b=Fys7pVovRKbQD2IXlQhrHbsIcAXShyUPstf4DHnkLBkGiRZyHN4gOXbw3pPzTMGItO
 rGdBju9QqqJOQSEMDLOFHjCn+EPViZ28WYzmhOeUYUS8Loq1zfIZ2qiPRM6cbN8oLTch
 AWluZsO2l8CkZYGGCpa6fdtatFM4ebqyeaOdPAwnf7DrYFu89uZNXigm7HtMXTD8JoQ0
 5sMODWt7jIG/np1FxzCatWHRRZz3V8K8w2wB4/lNVtfPYS5Xido7kqtL9grVjpl+3az9
 TFLmOczAlPHEq5sBaHNftxAyb8Hlm20zZz4S/Q52oprg3iy6vo7AUA+sgqkSMpcC9kmB
 MoHQ==
X-Gm-Message-State: APjAAAXhdUaNEVtgG++L81sJD6Sfdip0UKa/fzJeCqle3S41Ua2OnsKD
 YwbbC537qV5wlx2/vd5i7DWtDg==
X-Google-Smtp-Source: APXvYqy3z1gRmQcjg3s055j6HK2dZEP8CF7dp5jiKbBb4zEmLwkxo3QWKDr/PFQU4NVxKH3sIMDGzg==
X-Received: by 2002:a05:651c:214:: with SMTP id
 y20mr33720931ljn.139.1577636920137; 
 Sun, 29 Dec 2019 08:28:40 -0800 (PST)
Received: from virtualhost-PowerEdge-R810.synapse.com ([195.238.92.107])
 by smtp.gmail.com with ESMTPSA id u13sm17284858lfq.19.2019.12.29.08.28.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Dec 2019 08:28:39 -0800 (PST)
From: roman.stratiienko@globallogic.com
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jernej.skrabec@siol.net
Subject: [PATCH v2 3/4] drm/sun4i: Use CRTC size instead of PRIMARY plane size
 as mixer frame.
Date: Sun, 29 Dec 2019 18:28:27 +0200
Message-Id: <20191229162828.3326-3-roman.stratiienko@globallogic.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191229162828.3326-1-roman.stratiienko@globallogic.com>
References: <20191229162828.3326-1-roman.stratiienko@globallogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_082841_888583_6DE043CF 
X-CRM114-Status: GOOD (  13.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Roman Stratiienko <roman.stratiienko@globallogic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Roman Stratiienko <roman.stratiienko@globallogic.com>

According to DRM documentation the only difference between PRIMARY
and OVERLAY plane is that each CRTC must have PRIMARY plane and
OVERLAY are optional.

Allow PRIMARY plane to have dimension different from full-screen.

Fixes: 90212fffa4fc ("drm/sun4i: Use values calculated by atomic check")
Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>
---
v2:
- Split commit in 2 parts
- Add Fixes line to the commit message
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c    | 35 ++++++++++++++++++++++++++
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 30 ----------------------
 2 files changed, 35 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index d306ad5dc093..5d90a95ff855 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -257,6 +257,40 @@ const struct de2_fmt_info *sun8i_mixer_format_info(u32 format)
 	return NULL;
 }
 
+static void sun8i_mode_set(struct sunxi_engine *engine,
+			   struct drm_display_mode *mode)
+{
+	u32 dst_w = mode->crtc_hdisplay;
+	u32 dst_h = mode->crtc_vdisplay;
+	u32 outsize = SUN8I_MIXER_SIZE(dst_w, dst_h);
+	bool interlaced = false;
+	u32 val;
+	struct sun8i_mixer *mixer = engine_to_sun8i_mixer(engine);
+	u32 bld_base = sun8i_blender_base(mixer);
+
+	DRM_DEBUG_DRIVER("Mode change, updating global size W: %u H: %u\n",
+			 dst_w, dst_h);
+	regmap_write(mixer->engine.regs,
+		     SUN8I_MIXER_GLOBAL_SIZE,
+		     outsize);
+	regmap_write(mixer->engine.regs,
+		     SUN8I_MIXER_BLEND_OUTSIZE(bld_base), outsize);
+
+	interlaced = mode->flags & DRM_MODE_FLAG_INTERLACE;
+
+	if (interlaced)
+		val = SUN8I_MIXER_BLEND_OUTCTL_INTERLACED;
+	else
+		val = 0;
+
+	regmap_update_bits(mixer->engine.regs,
+			   SUN8I_MIXER_BLEND_OUTCTL(bld_base),
+			   SUN8I_MIXER_BLEND_OUTCTL_INTERLACED,
+			   val);
+	DRM_DEBUG_DRIVER("Switching display mixer interlaced mode %s\n",
+			 interlaced ? "on" : "off");
+}
+
 static void sun8i_mixer_commit(struct sunxi_engine *engine)
 {
 	struct sun8i_mixer *mixer = engine_to_sun8i_mixer(engine);
@@ -356,6 +390,7 @@ static struct drm_plane **sun8i_layers_init(struct drm_device *drm,
 static const struct sunxi_engine_ops sun8i_engine_ops = {
 	.commit		= sun8i_mixer_commit,
 	.layers_init	= sun8i_layers_init,
+	.mode_set	= sun8i_mode_set,
 };
 
 static struct regmap_config sun8i_mixer_regmap_config = {
diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index ee7c13d8710f..23c2f4b68c89 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -72,36 +72,6 @@ static int sun8i_ui_layer_update_coord(struct sun8i_mixer *mixer, int channel,
 	insize = SUN8I_MIXER_SIZE(src_w, src_h);
 	outsize = SUN8I_MIXER_SIZE(dst_w, dst_h);
 
-	if (plane->type == DRM_PLANE_TYPE_PRIMARY) {
-		bool interlaced = false;
-		u32 val;
-
-		DRM_DEBUG_DRIVER("Primary layer, updating global size W: %u H: %u\n",
-				 dst_w, dst_h);
-		regmap_write(mixer->engine.regs,
-			     SUN8I_MIXER_GLOBAL_SIZE,
-			     outsize);
-		regmap_write(mixer->engine.regs,
-			     SUN8I_MIXER_BLEND_OUTSIZE(bld_base), outsize);
-
-		if (state->crtc)
-			interlaced = state->crtc->state->adjusted_mode.flags
-				& DRM_MODE_FLAG_INTERLACE;
-
-		if (interlaced)
-			val = SUN8I_MIXER_BLEND_OUTCTL_INTERLACED;
-		else
-			val = 0;
-
-		regmap_update_bits(mixer->engine.regs,
-				   SUN8I_MIXER_BLEND_OUTCTL(bld_base),
-				   SUN8I_MIXER_BLEND_OUTCTL_INTERLACED,
-				   val);
-
-		DRM_DEBUG_DRIVER("Switching display mixer interlaced mode %s\n",
-				 interlaced ? "on" : "off");
-	}
-
 	/* Set height and width */
 	DRM_DEBUG_DRIVER("Layer source offset X: %d Y: %d\n",
 			 state->src.x1 >> 16, state->src.y1 >> 16);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
