Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 262AA43832
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:04:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YrkmRxL4c0tmLVKUAitU61j7S4qLE44pov3RM+Sb6sg=; b=Apq4ehpwjw35sd
	YLUeNewjdRP/ksn71EbCNkgQLdDLGdEH2akTSJ2CoOUopg1TXP2gaYnaX03WKtbA/6TTfuOzcNcL7
	YiSjEhjGM6rboMzFFliyZcH7kxMO25egINCZGD9yZpcj34/zzYmbMhhFSIezkFeFtnOFDBnSSU15q
	KNq6dgHvJiiPIOne/T4CCQOg/m5ZvEHvKVSRZeKc8tsx8drW6zgVs3+iYvk9U22/qaoxa2gUOSx9k
	IwOBw0/Rhz7L79fJa7UgPwYsRGJdmmDpQYZU+JuVfWXnP1AjJKm6n+PfS0KWByzshvP76s/h1sbey
	bmz5ev4kud+pk+PRoFbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRHI-0003oI-2Z; Thu, 13 Jun 2019 15:04:36 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRFU-0002RL-HQ
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:02:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JeVMX6aI1+Z/tyR4St48w2936SMKwWSxzsX8PHJe/6Q=; b=JYlJSLreO6FEFhxPxQUz+FRx5/
 ckVhvqsmvlPjSFc0IeZWl7NqTgTwKfGUNm2NR/5tY9/PFlhPhZ6BCq8G73ky6bbfsDIsa1iiDlP4G
 xXorB146z0EnseekxNdhjAE7MXPZlhpb2iSFbYu6YB8eMDFFREgSz2jcCisN4WR277aKFwOAEutrl
 xu4msBGwd+nW5SmTQTC2RPg3ggAQxrQcQP9di3LboA+xk4byQZc3LtDWBcyHSetczu/SyM9j+BiKC
 uuSLEREl+Ml7R1oYrctn1PR0ePM+kDgaTy+2zFsSd50i0PB2Gm9QjgRg8JBkesvnkrEk/SFAFX4Xj
 yWJQ2t9g==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:44836 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRF6-0003jy-Kb; Thu, 13 Jun 2019 16:02:20 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRF3-00007S-Rr; Thu, 13 Jun 2019 16:02:17 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 07/18] drm/armada: add support for setting gamma
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbRF3-00007S-Rr@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:02:17 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080245_707209_3FB8E467 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for setting gamma through both the legacy interfaces and
the atomic interfaces.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_crtc.c  | 63 +++++++++++++++++++++++++++++++++++
 drivers/gpu/drm/armada/armada_hw.h    |  4 +++
 drivers/gpu/drm/armada/armada_plane.c |  2 +-
 3 files changed, 68 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/armada/armada_crtc.c b/drivers/gpu/drm/armada/armada_crtc.c
index 09bade15f51c..5991feb1bcc9 100644
--- a/drivers/gpu/drm/armada/armada_crtc.c
+++ b/drivers/gpu/drm/armada/armada_crtc.c
@@ -130,6 +130,44 @@ static void armada_drm_crtc_queue_state_event(struct drm_crtc *crtc)
 	}
 }
 
+static void armada_drm_update_gamma(struct drm_crtc *crtc)
+{
+	struct drm_property_blob *blob = crtc->state->gamma_lut;
+	void __iomem *base = drm_to_armada_crtc(crtc)->base;
+	int i;
+
+	if (blob) {
+		struct drm_color_lut *lut = blob->data;
+
+		armada_updatel(CFG_CSB_256x8, CFG_CSB_256x8 | CFG_PDWN256x8,
+			       base + LCD_SPU_SRAM_PARA1);
+
+		for (i = 0; i < 256; i++) {
+			writel_relaxed(drm_color_lut_extract(lut[i].red, 8),
+				       base + LCD_SPU_SRAM_WRDAT);
+			writel_relaxed(i | SRAM_WRITE | SRAM_GAMMA_YR,
+				       base + LCD_SPU_SRAM_CTRL);
+			readl_relaxed(base + LCD_SPU_HWC_OVSA_HPXL_VLN);
+			writel_relaxed(drm_color_lut_extract(lut[i].green, 8),
+				       base + LCD_SPU_SRAM_WRDAT);
+			writel_relaxed(i | SRAM_WRITE | SRAM_GAMMA_UG,
+				       base + LCD_SPU_SRAM_CTRL);
+			readl_relaxed(base + LCD_SPU_HWC_OVSA_HPXL_VLN);
+			writel_relaxed(drm_color_lut_extract(lut[i].blue, 8),
+				       base + LCD_SPU_SRAM_WRDAT);
+			writel_relaxed(i | SRAM_WRITE | SRAM_GAMMA_VB,
+				       base + LCD_SPU_SRAM_CTRL);
+			readl_relaxed(base + LCD_SPU_HWC_OVSA_HPXL_VLN);
+		}
+		armada_updatel(CFG_GAMMA_ENA, CFG_GAMMA_ENA,
+			       base + LCD_SPU_DMA_CTRL0);
+	} else {
+		armada_updatel(0, CFG_GAMMA_ENA, base + LCD_SPU_DMA_CTRL0);
+		armada_updatel(CFG_PDWN256x8, CFG_CSB_256x8 | CFG_PDWN256x8,
+			       base + LCD_SPU_SRAM_PARA1);
+	}
+}
+
 /* The mode_config.mutex will be held for this call */
 static bool armada_drm_crtc_mode_fixup(struct drm_crtc *crtc,
 	const struct drm_display_mode *mode, struct drm_display_mode *adj)
@@ -338,6 +376,20 @@ static void armada_drm_crtc_mode_set_nofb(struct drm_crtc *crtc)
 	spin_unlock_irqrestore(&dcrtc->irq_lock, flags);
 }
 
+static int armada_drm_crtc_atomic_check(struct drm_crtc *crtc,
+					struct drm_crtc_state *state)
+{
+	DRM_DEBUG_KMS("[CRTC:%d:%s]\n", crtc->base.id, crtc->name);
+
+	if (state->gamma_lut && drm_color_lut_size(state->gamma_lut) != 256)
+		return -EINVAL;
+
+	if (state->color_mgmt_changed)
+		state->planes_changed = true;
+
+	return 0;
+}
+
 static void armada_drm_crtc_atomic_begin(struct drm_crtc *crtc,
 					 struct drm_crtc_state *old_crtc_state)
 {
@@ -345,6 +397,9 @@ static void armada_drm_crtc_atomic_begin(struct drm_crtc *crtc,
 
 	DRM_DEBUG_KMS("[CRTC:%d:%s]\n", crtc->base.id, crtc->name);
 
+	if (crtc->state->color_mgmt_changed)
+		armada_drm_update_gamma(crtc);
+
 	dcrtc->regs_idx = 0;
 	dcrtc->regs = dcrtc->atomic_regs;
 }
@@ -439,6 +494,7 @@ static void armada_drm_crtc_atomic_enable(struct drm_crtc *crtc,
 static const struct drm_crtc_helper_funcs armada_crtc_helper_funcs = {
 	.mode_fixup	= armada_drm_crtc_mode_fixup,
 	.mode_set_nofb	= armada_drm_crtc_mode_set_nofb,
+	.atomic_check	= armada_drm_crtc_atomic_check,
 	.atomic_begin	= armada_drm_crtc_atomic_begin,
 	.atomic_flush	= armada_drm_crtc_atomic_flush,
 	.atomic_disable	= armada_drm_crtc_atomic_disable,
@@ -702,6 +758,7 @@ static const struct drm_crtc_funcs armada_crtc_funcs = {
 	.cursor_set	= armada_drm_crtc_cursor_set,
 	.cursor_move	= armada_drm_crtc_cursor_move,
 	.destroy	= armada_drm_crtc_destroy,
+	.gamma_set	= drm_atomic_helper_legacy_gamma_set,
 	.set_config	= drm_atomic_helper_set_config,
 	.page_flip	= drm_atomic_helper_page_flip,
 	.atomic_duplicate_state = drm_atomic_helper_crtc_duplicate_state,
@@ -793,6 +850,12 @@ static int armada_drm_crtc_create(struct drm_device *drm, struct device *dev,
 
 	drm_crtc_helper_add(&dcrtc->crtc, &armada_crtc_helper_funcs);
 
+	ret = drm_mode_crtc_set_gamma_size(&dcrtc->crtc, 256);
+	if (ret)
+		return ret;
+
+	drm_crtc_enable_color_mgmt(&dcrtc->crtc, 0, false, 256);
+
 	return armada_overlay_plane_create(drm, 1 << dcrtc->num);
 
 err_crtc_init:
diff --git a/drivers/gpu/drm/armada/armada_hw.h b/drivers/gpu/drm/armada/armada_hw.h
index 345dc4d0851e..babfca71c4db 100644
--- a/drivers/gpu/drm/armada/armada_hw.h
+++ b/drivers/gpu/drm/armada/armada_hw.h
@@ -169,6 +169,10 @@ enum {
 	SRAM_READ	= 0 << 14,
 	SRAM_WRITE	= 2 << 14,
 	SRAM_INIT	= 3 << 14,
+	SRAM_GAMMA_YR	= 0x0 << 8,
+	SRAM_GAMMA_UG	= 0x1 << 8,
+	SRAM_GAMMA_VB	= 0x2 << 8,
+	SRAM_PALETTE	= 0x3 << 8,
 	SRAM_HWC32_RAM1	= 0xc << 8,
 	SRAM_HWC32_RAM2	= 0xd << 8,
 	SRAM_HWC32_RAMR	= SRAM_HWC32_RAM1,
diff --git a/drivers/gpu/drm/armada/armada_plane.c b/drivers/gpu/drm/armada/armada_plane.c
index 45092fc3598e..dbd4d52e8a32 100644
--- a/drivers/gpu/drm/armada/armada_plane.c
+++ b/drivers/gpu/drm/armada/armada_plane.c
@@ -265,7 +265,7 @@ static void armada_drm_primary_plane_atomic_disable(struct drm_plane *plane,
 	/* Disable plane and power down most RAMs and FIFOs */
 	armada_reg_queue_mod(regs, idx, 0, CFG_GRA_ENA, LCD_SPU_DMA_CTRL0);
 	armada_reg_queue_mod(regs, idx, CFG_PDWN256x32 | CFG_PDWN256x24 |
-			     CFG_PDWN256x8 | CFG_PDWN32x32 | CFG_PDWN64x66,
+			     CFG_PDWN32x32 | CFG_PDWN64x66,
 			     0, LCD_SPU_SRAM_PARA1);
 
 	dcrtc->regs_idx += idx;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
