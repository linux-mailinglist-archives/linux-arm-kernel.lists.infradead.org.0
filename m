Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CABD38D17A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:51:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xOllPoUUQlwnaDu6QfzRw5omRslDmaLp+E+GCjC/gUg=; b=PzBxOd1q2JB8fx8o83Ds34Isv4
	/FjbSGAyhaLitRven9zMHgf5HTk4ljEndUmy7Ap7Z2Yxv3ICW033MIkSSVVTRPMqHqH35wWn9eHVj
	1fxqiTJ6DKKUvgMAkOvZrXXUGOU+FnHYJg7V3I4//YGfMHj9L++2HfjaQZQwcQGg/y7Omf3lZZkgg
	OmhhXi/kdOKwCwrKogJrFjXiyTU8VbqC0ZJKGgtch4pUklRttJD46RMEU7RhwvPAqbNM7C0OG3ydq
	d7c4P19O121RO35lQUgfaj/Py5sOT5mW9XAfnN6Ko095y1fTR6/GBAtG9yK4p85qJ1fCgfnNDUA21
	w+ibX3jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqsg-0008Fr-D6; Wed, 14 Aug 2019 10:51:50 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqq9-0003vz-2f
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:49:15 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 9A5751A03B4;
 Wed, 14 Aug 2019 12:49:11 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8DCF91A03A4;
 Wed, 14 Aug 2019 12:49:11 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 87EC92060E;
 Wed, 14 Aug 2019 12:49:10 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 14/15] drm/mxsfb: Add support for horizontal stride
Date: Wed, 14 Aug 2019 13:48:50 +0300
Message-Id: <1565779731-1300-15-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com>
References: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_034913_415590_2EDB1008 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Besides the eLCDIF block, there is another IP block, used in the past
for EPDC panels. Since the iMX.8mq doesn't have an EPDC connector, this
block is not documented, but we can use it to do additional operations
on the frame buffer.
In this case, we can use the pigeon registers from this IP block in
order to do horizontal crop on the frame buffer processed by the eLCDIF
block.

Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
---
 drivers/gpu/drm/mxsfb/mxsfb_crtc.c | 79 ++++++++++++++++++++++++++++++++++++--
 drivers/gpu/drm/mxsfb/mxsfb_drv.c  | 26 ++++++++++++-
 drivers/gpu/drm/mxsfb/mxsfb_regs.h | 16 ++++++++
 3 files changed, 115 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
index a12f53d..317575e 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
@@ -15,6 +15,7 @@
 
 #include <video/videomode.h>
 
+#include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_fb_cma_helper.h>
@@ -435,13 +436,66 @@ void mxsfb_crtc_disable(struct mxsfb_drm_private *mxsfb)
 	clk_disable_unprepare(mxsfb->clk_axi);
 }
 
+void mxsfb_set_fb_hcrop(struct mxsfb_drm_private *mxsfb, u32 src_w, u32 fb_w)
+{
+	u32 mask_cnt, htotal, hcount;
+	u32 vdctrl2, vdctrl3, vdctrl4, transfer_count;
+	u32 pigeon_12_0, pigeon_12_1, pigeon_12_2;
+
+	if (src_w == fb_w) {
+		writel(0x0, mxsfb->base + HW_EPDC_PIGEON_12_0);
+		writel(0x0, mxsfb->base + HW_EPDC_PIGEON_12_1);
+
+		return;
+	}
+
+	transfer_count = readl(mxsfb->base + LCDC_V4_TRANSFER_COUNT);
+	hcount = TRANSFER_COUNT_GET_HCOUNT(transfer_count);
+
+	transfer_count &= ~TRANSFER_COUNT_SET_HCOUNT(0xffff);
+	transfer_count |= TRANSFER_COUNT_SET_HCOUNT(fb_w);
+	writel(transfer_count, mxsfb->base + LCDC_V4_TRANSFER_COUNT);
+
+	vdctrl2 = readl(mxsfb->base + LCDC_VDCTRL2);
+	htotal  = VDCTRL2_GET_HSYNC_PERIOD(vdctrl2);
+	htotal  += fb_w - hcount;
+	vdctrl2 &= ~VDCTRL2_SET_HSYNC_PERIOD(0x3ffff);
+	vdctrl2 |= VDCTRL2_SET_HSYNC_PERIOD(htotal);
+	writel(vdctrl2, mxsfb->base + LCDC_VDCTRL2);
+
+	vdctrl4 = readl(mxsfb->base + LCDC_VDCTRL4);
+	vdctrl4 &= ~SET_DOTCLK_H_VALID_DATA_CNT(0x3ffff);
+	vdctrl4 |= SET_DOTCLK_H_VALID_DATA_CNT(fb_w);
+	writel(vdctrl4, mxsfb->base + LCDC_VDCTRL4);
+
+	/* configure related pigeon registers */
+	vdctrl3  = readl(mxsfb->base + LCDC_VDCTRL3);
+	mask_cnt = GET_HOR_WAIT_CNT(vdctrl3) - 5;
+
+	pigeon_12_0 = PIGEON_12_0_SET_STATE_MASK(0x24)		|
+		      PIGEON_12_0_SET_MASK_CNT(mask_cnt)	|
+		      PIGEON_12_0_SET_MASK_CNT_SEL(0x6)		|
+		      PIGEON_12_0_POL_ACTIVE_LOW		|
+		      PIGEON_12_0_EN;
+	writel(pigeon_12_0, mxsfb->base + HW_EPDC_PIGEON_12_0);
+
+	pigeon_12_1 = PIGEON_12_1_SET_CLR_CNT(src_w) |
+		      PIGEON_12_1_SET_SET_CNT(0x0);
+	writel(pigeon_12_1, mxsfb->base + HW_EPDC_PIGEON_12_1);
+
+	pigeon_12_2 = 0x0;
+	writel(pigeon_12_2, mxsfb->base + HW_EPDC_PIGEON_12_2);
+}
+
 void mxsfb_plane_atomic_update(struct mxsfb_drm_private *mxsfb,
 			       struct drm_plane_state *state)
 {
 	struct drm_simple_display_pipe *pipe = &mxsfb->pipe;
 	struct drm_crtc *crtc = &pipe->crtc;
+	struct drm_plane_state *new_state = pipe->plane.state;
+	struct drm_framebuffer *fb = pipe->plane.state->fb;
 	struct drm_pending_vblank_event *event;
-	dma_addr_t paddr;
+	u32 fb_addr, src_off, src_w, stride, cpp = 0;
 
 	spin_lock_irq(&crtc->dev->event_lock);
 	event = crtc->state->event;
@@ -456,10 +510,27 @@ void mxsfb_plane_atomic_update(struct mxsfb_drm_private *mxsfb,
 	}
 	spin_unlock_irq(&crtc->dev->event_lock);
 
-	paddr = mxsfb_get_fb_paddr(mxsfb);
-	if (paddr) {
+	if (!fb)
+		return;
+
+	fb_addr = mxsfb_get_fb_paddr(mxsfb);
+	if (mxsfb->devdata->ipversion >= 4) {
+		cpp = fb->format->cpp[0];
+		src_off = (new_state->src_y >> 16) * fb->pitches[0] +
+			  (new_state->src_x >> 16) * cpp;
+		fb_addr += fb->offsets[0] + src_off;
+	}
+
+	if (fb_addr) {
 		clk_prepare_enable(mxsfb->clk_axi);
-		writel(paddr, mxsfb->base + mxsfb->devdata->next_buf);
+		writel(fb_addr, mxsfb->base + mxsfb->devdata->next_buf);
 		clk_disable_unprepare(mxsfb->clk_axi);
 	}
+
+	if (mxsfb->devdata->ipversion >= 4 &&
+	    unlikely(drm_atomic_crtc_needs_modeset(new_state->crtc->state))) {
+		stride = DIV_ROUND_UP(fb->pitches[0], cpp);
+		src_w = new_state->src_w >> 16;
+		mxsfb_set_fb_hcrop(mxsfb, src_w, stride);
+	}
 }
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
index 694b287..cc9c14f 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
@@ -136,6 +136,7 @@ static int mxsfb_atomic_helper_check(struct drm_device *dev,
 		if (old_bpp != new_bpp)
 			new_state->mode_changed = true;
 	}
+
 	return ret;
 }
 
@@ -149,6 +150,25 @@ static const struct drm_mode_config_helper_funcs mxsfb_mode_config_helpers = {
 	.atomic_commit_tail = drm_atomic_helper_commit_tail_rpm,
 };
 
+static int mxsfb_pipe_check(struct drm_simple_display_pipe *pipe,
+			    struct drm_plane_state *plane_state,
+			    struct drm_crtc_state *crtc_state)
+{
+	struct drm_framebuffer *fb = plane_state->fb;
+	struct drm_framebuffer *old_fb = pipe->plane.state->fb;
+
+	/* force 'mode_changed' when fb pitches changed, since
+	 * the pitch related registers configuration of LCDIF
+	 * can not be done when LCDIF is running.
+	 */
+	if (old_fb && likely(!crtc_state->mode_changed)) {
+		if (old_fb->pitches[0] != fb->pitches[0])
+			crtc_state->mode_changed = true;
+	}
+
+	return 0;
+}
+
 static void mxsfb_pipe_enable(struct drm_simple_display_pipe *pipe,
 			      struct drm_crtc_state *crtc_state,
 			      struct drm_plane_state *plane_state)
@@ -245,6 +265,7 @@ static void mxsfb_pipe_disable_vblank(struct drm_simple_display_pipe *pipe)
 }
 
 static struct drm_simple_display_pipe_funcs mxsfb_funcs = {
+	.check          = mxsfb_pipe_check,
 	.enable		= mxsfb_pipe_enable,
 	.disable	= mxsfb_pipe_disable,
 	.update		= mxsfb_pipe_update,
@@ -348,8 +369,9 @@ static int mxsfb_load(struct drm_device *drm, unsigned long flags)
 
 	drm->mode_config.min_width	= MXSFB_MIN_XRES;
 	drm->mode_config.min_height	= MXSFB_MIN_YRES;
-	drm->mode_config.max_width	= max_res[0];
-	drm->mode_config.max_height	= max_res[1];
+	/* Add additional 16 pixels for possible strides */
+	drm->mode_config.max_width	= max_res[0] + 16;
+	drm->mode_config.max_height	= max_res[1] + 16;
 	drm->mode_config.funcs		= &mxsfb_mode_config_funcs;
 	drm->mode_config.helper_private	= &mxsfb_mode_config_helpers;
 
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_regs.h b/drivers/gpu/drm/mxsfb/mxsfb_regs.h
index 0f63ba1..df3279b 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_regs.h
+++ b/drivers/gpu/drm/mxsfb/mxsfb_regs.h
@@ -145,6 +145,22 @@
 #define DEBUG0_HSYNC			BIT(26)
 #define DEBUG0_VSYNC			BIT(25)
 
+/* pigeon registers for crop */
+#define HW_EPDC_PIGEON_12_0		0xb00
+#define HW_EPDC_PIGEON_12_1		0xb10
+#define HW_EPDC_PIGEON_12_2		0xb20
+
+#define PIGEON_12_0_SET_STATE_MASK(x)	REG_PUT((x), 31, 24)
+#define PIGEON_12_0_SET_MASK_CNT(x)	REG_PUT((x), 23, 12)
+#define PIGEON_12_0_SET_MASK_CNT_SEL(x)	REG_PUT((x), 11,  8)
+#define PIGEON_12_0_SET_OFFSET(x)	REG_PUT((x),  7,  4)
+#define PIGEON_12_0_SET_INC_SEL(x)	REG_PUT((x),  3,  2)
+#define PIGEON_12_0_POL_ACTIVE_LOW	BIT(1)
+#define PIGEON_12_0_EN			BIT(0)
+
+#define PIGEON_12_1_SET_CLR_CNT(x)	REG_PUT((x), 31, 16)
+#define PIGEON_12_1_SET_SET_CNT(x)	REG_PUT((x), 15,  0)
+
 #define MXSFB_MIN_XRES			120
 #define MXSFB_MIN_YRES			120
 #define MXSFB_MAX_XRES			0xffff
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
