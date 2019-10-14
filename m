Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0355D62D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 14:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6P62ccxUlfjTRwIeaNEUh+yCtOjeltrPYK99/b7cqo=; b=tHkVttqtvv18cI
	+t4H83XJ7yVrBW4AVHSCxs9PlAMsERG3P/uVRCfDT7FnlFxtfSIczOXjU41lvX3QdulJ2HcZqgKd3
	7O0O2G6+fVQzM8F8SoSxNHYg8eLxltyrvj9LzUqo4ZSNlzDWp9aadp0vaqcQeb1YViB2r3UMg+aXn
	fIdZeG1AupwEpcx6iofcwLqVeW+Vsg4YvAgrlHnatQN03Ja4GeZJBf2X3YxENAuIp5HF+kXyVjOJr
	I69SNgHmeIKSqHxRhOPvjfG4IKHPyuCmSdKLVwjLsc6Es0UO+H+YPkzmlUEqYSD/5GNDdvIp32pyF
	gQDqYHsCLTgMdQ0PtjYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJzfV-0003BH-0G; Mon, 14 Oct 2019 12:41:45 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJzcU-00086q-LS
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 12:38:47 +0000
Received: by mail-wm1-x343.google.com with SMTP id b24so16589263wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 05:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=EiSsjXYdZZOyYEr4Sge65wETKP2xlBLGlhOiCPBSXkE=;
 b=RnrWUEFN8vlpvLRfCehFrxjuaM3ZPHu283UjOXmJxLbT1c8e8xMrzbwKmim6fENpYj
 dTuRcMey7nMCXj3OUJneBs0DWVuZFw4EQXcPj40zn+DHdsMHNHCFKIVIvkuXNMAubGTj
 UEDWW8Q6PmJtaQBK+rkcLks46jxJyiA0euIKb2QShBqK7KiFwBDxNeKaywxhWRCXZvuo
 +4oKJXllMlVPe1FU26JJnKQ71pKGKGC3TW8Fzb0GYbA7NhK0+/YCdzhImKBod+LUHyM+
 4CuY+nEX456JhK4nYKgoSzdlSI6Hk6DNIjnnGYH0vGnRtVsB4tf71iTpA3pvA4a9ggVP
 nwsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=EiSsjXYdZZOyYEr4Sge65wETKP2xlBLGlhOiCPBSXkE=;
 b=FovQFbvOIR92aRxxxpcgt/N30MedrSCiBr5K2Du66i4BShQptZIkIqjOaCyyT79sdq
 XS+7PN1P/GDsS5nFpFvUxo+hcVKVhvIKdKexEFo+H5+twccbai4h8tcUqovhalMaXYWJ
 1QGWgkSwFmPsCYPikVPf/LAqEGrNW4vRiPdYAxO1y7GDFG/uhtDbzF5EWT9oPc0agllD
 Y6gti9T04gYTAsp7reFdGD/IoEpwyMlQwKEwaccR0RFa8NHhOOVOFNRPzLG+LFFbUEdQ
 vCe9fzEtdlBNfDPgdFOZi/QojtUI0dTbMOJRsKirhD3XcDoVMj2aFbHlsrg9cGhLKM50
 MYDg==
X-Gm-Message-State: APjAAAV2HyI9LF5foNn9/mcmi/Rq3C4Szpn8GCAUtElsalusOMmI+M8/
 4seDXRvKpcXxwBMypytvIm+5hBMcoTx5SQ==
X-Google-Smtp-Source: APXvYqzQsEvFHjzDzBZg9POutNu7rB/rrGxvWic5J6WlC0lB4yoepYEDP1Wv+bO14FoAwTG3v7zvaQ==
X-Received: by 2002:a05:600c:2308:: with SMTP id
 8mr14332978wmo.73.1571056716969; 
 Mon, 14 Oct 2019 05:38:36 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id 3sm19171203wmo.22.2019.10.14.05.38.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 05:38:35 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v2 7/7] drm/meson: crtc: add OSD1 plane AFBC commit
Date: Mon, 14 Oct 2019 14:38:26 +0200
Message-Id: <20191014123826.27629-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20191014123826.27629-1-narmstrong@baylibre.com>
References: <20191014123826.27629-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_053838_806609_82CCB13E 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>, khilman@baylibre.com,
 linux-amlogic@lists.infradead.org, ayan.halder@arm.com, Brian.Starkey@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Finally, setup the VIU registers and start the AFBC decoder at each
vsync IRQ to support displaying AFBC encoded buffers on Amlogic GXM
and G12A SoCs.

Since the DRM core will stop the vsync IRQ after a few interrupts,
we need to keep the IRQ enabled while using the AFBC decoder.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_crtc.c | 79 ++++++++++++++++++++++++++++--
 1 file changed, 74 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
index d478fa232951..d28efd0dbf11 100644
--- a/drivers/gpu/drm/meson/meson_crtc.c
+++ b/drivers/gpu/drm/meson/meson_crtc.c
@@ -24,6 +24,7 @@
 #include "meson_venc.h"
 #include "meson_viu.h"
 #include "meson_vpp.h"
+#include "meson_osd_afbcd.h"
 
 #define MESON_G12A_VIU_OFFSET	0x5ec0
 
@@ -35,7 +36,11 @@ struct meson_crtc {
 	struct meson_drm *priv;
 	void (*enable_osd1)(struct meson_drm *priv);
 	void (*enable_vd1)(struct meson_drm *priv);
+	void (*enable_osd1_afbc)(struct meson_drm *priv);
+	void (*disable_osd1_afbc)(struct meson_drm *priv);
 	unsigned int viu_offset;
+	bool vsync_forced;
+	bool vsync_disabled;
 };
 #define to_meson_crtc(x) container_of(x, struct meson_crtc, base)
 
@@ -46,6 +51,7 @@ static int meson_crtc_enable_vblank(struct drm_crtc *crtc)
 	struct meson_crtc *meson_crtc = to_meson_crtc(crtc);
 	struct meson_drm *priv = meson_crtc->priv;
 
+	meson_crtc->vsync_disabled = false;
 	meson_venc_enable_vsync(priv);
 
 	return 0;
@@ -56,7 +62,10 @@ static void meson_crtc_disable_vblank(struct drm_crtc *crtc)
 	struct meson_crtc *meson_crtc = to_meson_crtc(crtc);
 	struct meson_drm *priv = meson_crtc->priv;
 
-	meson_venc_disable_vsync(priv);
+	if (!meson_crtc->vsync_forced) {
+		meson_crtc->vsync_disabled = true;
+		meson_venc_disable_vsync(priv);
+	}
 }
 
 static const struct drm_crtc_funcs meson_crtc_funcs = {
@@ -236,6 +245,26 @@ static void meson_crtc_enable_osd1(struct meson_drm *priv)
 			    priv->io_base + _REG(VPP_MISC));
 }
 
+static void meson_crtc_g12a_enable_osd1_afbc(struct meson_drm *priv)
+{
+	writel_relaxed(priv->viu.osd1_blk2_cfg4,
+		       priv->io_base + _REG(VIU_OSD1_BLK2_CFG_W4));
+
+	writel_bits_relaxed(OSD_MEM_LINEAR_ADDR, OSD_MEM_LINEAR_ADDR,
+			    priv->io_base + _REG(VIU_OSD1_CTRL_STAT));
+
+	writel_relaxed(priv->viu.osd1_blk1_cfg4,
+		       priv->io_base + _REG(VIU_OSD1_BLK1_CFG_W4));
+
+	meson_viu_g12a_enable_osd1_afbc(priv);
+
+	writel_bits_relaxed(OSD_MEM_LINEAR_ADDR, OSD_MEM_LINEAR_ADDR,
+			    priv->io_base + _REG(VIU_OSD1_CTRL_STAT));
+
+	writel_bits_relaxed(OSD_MALI_SRC_EN, OSD_MALI_SRC_EN,
+			    priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W0));
+}
+
 static void meson_g12a_crtc_enable_osd1(struct meson_drm *priv)
 {
 	writel_relaxed(priv->viu.osd_blend_din0_scope_h,
@@ -293,6 +322,19 @@ void meson_crtc_irq(struct meson_drm *priv)
 				priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W3));
 		writel_relaxed(priv->viu.osd1_blk0_cfg[4],
 				priv->io_base + _REG(VIU_OSD1_BLK0_CFG_W4));
+
+		if (priv->viu.osd1_afbcd) {
+			if (meson_crtc->enable_osd1_afbc)
+				meson_crtc->enable_osd1_afbc(priv);
+		} else {
+			if (meson_crtc->disable_osd1_afbc)
+				meson_crtc->disable_osd1_afbc(priv);
+			if (priv->afbcd.ops) {
+				priv->afbcd.ops->reset(priv);
+				priv->afbcd.ops->disable(priv);
+			}
+		}
+
 		writel_relaxed(priv->viu.osd_sc_ctrl0,
 				priv->io_base + _REG(VPP_OSD_SC_CTRL0));
 		writel_relaxed(priv->viu.osd_sc_i_wh_m1,
@@ -314,15 +356,23 @@ void meson_crtc_irq(struct meson_drm *priv)
 		writel_relaxed(priv->viu.osd_sc_v_ctrl0,
 				priv->io_base + _REG(VPP_OSD_VSC_CTRL0));
 
-		meson_canvas_config(priv->canvas, priv->canvas_id_osd1,
-				priv->viu.osd1_addr, priv->viu.osd1_stride,
-				priv->viu.osd1_height, MESON_CANVAS_WRAP_NONE,
-				MESON_CANVAS_BLKMODE_LINEAR, 0);
+		if (!priv->viu.osd1_afbcd)
+			meson_canvas_config(priv->canvas, priv->canvas_id_osd1,
+					    priv->viu.osd1_addr,
+					    priv->viu.osd1_stride,
+					    priv->viu.osd1_height,
+					    MESON_CANVAS_WRAP_NONE,
+					    MESON_CANVAS_BLKMODE_LINEAR, 0);
 
 		/* Enable OSD1 */
 		if (meson_crtc->enable_osd1)
 			meson_crtc->enable_osd1(priv);
 
+		if (priv->viu.osd1_afbcd)
+			meson_crtc->vsync_forced = true;
+		else
+			meson_crtc->vsync_forced = false;
+
 		priv->viu.osd1_commit = false;
 	}
 
@@ -545,6 +595,15 @@ void meson_crtc_irq(struct meson_drm *priv)
 		priv->viu.vd1_commit = false;
 	}
 
+	if (meson_crtc->vsync_forced && priv->viu.osd1_afbcd) {
+		priv->afbcd.ops->reset(priv);
+		priv->afbcd.ops->setup(priv);
+		priv->afbcd.ops->enable(priv);
+	}
+
+	if (meson_crtc->vsync_disabled)
+		return;
+
 	drm_crtc_handle_vblank(priv->crtc);
 
 	spin_lock_irqsave(&priv->drm->event_lock, flags);
@@ -581,10 +640,20 @@ int meson_crtc_create(struct meson_drm *priv)
 		meson_crtc->enable_osd1 = meson_g12a_crtc_enable_osd1;
 		meson_crtc->enable_vd1 = meson_g12a_crtc_enable_vd1;
 		meson_crtc->viu_offset = MESON_G12A_VIU_OFFSET;
+		meson_crtc->enable_osd1_afbc =
+					meson_crtc_g12a_enable_osd1_afbc;
+		meson_crtc->disable_osd1_afbc =
+					meson_viu_g12a_disable_osd1_afbc;
 		drm_crtc_helper_add(crtc, &meson_g12a_crtc_helper_funcs);
 	} else {
 		meson_crtc->enable_osd1 = meson_crtc_enable_osd1;
 		meson_crtc->enable_vd1 = meson_crtc_enable_vd1;
+		if (meson_vpu_is_compatible(priv, VPU_COMPATIBLE_GXM)) {
+			meson_crtc->enable_osd1_afbc =
+					meson_viu_gxm_enable_osd1_afbc;
+			meson_crtc->disable_osd1_afbc =
+					meson_viu_gxm_disable_osd1_afbc;
+		}
 		drm_crtc_helper_add(crtc, &meson_crtc_helper_funcs);
 	}
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
