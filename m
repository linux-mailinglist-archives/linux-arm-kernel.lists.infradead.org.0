Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBFF56AB1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:36:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4PyWSFqrrAnvjeswbRxMc6+R3TTyGQ7FBTLHuXFmk04=; b=j67jD0tExM7jaXEOdmu2klOJEv
	srvdh2iWtDpnHgfMHkN0PMStW8j8/+qB6ESIQFhP8kVYasFp165TrLkNBp6BSf7+OiUNLcuSHGnP8
	oKcLzB4EJY6V5d7jcUeRDj9p3/Bq6AnVRfe//Wup497Qxx97lFS2eH+63xKLVNWrYK9NxDu9F/dmC
	utKE3v7wag1v159aVV+sJZrrbP9V5166sY11sxLP8tm2G6h7sOEnaZ3e9reE4ueWcoT6tj7C0ZfB+
	QV3pLEbECevOrku2zy5vUgVyoLB2nw5sZzgLfZjRRZh8cjoy/Zd+ig2QgcTuJMhHgRS3j2SaotzwI
	w0Zq47rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg85c-0004T9-OP; Wed, 26 Jun 2019 13:35:56 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg82H-0001CS-Dv
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:32:33 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 233C42009AB;
 Wed, 26 Jun 2019 15:32:28 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 13DDB2009A9;
 Wed, 26 Jun 2019 15:32:28 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 62881205DB;
 Wed, 26 Jun 2019 15:32:27 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 08/10] drm/mxsfb: Improve the axi clock usage
Date: Wed, 26 Jun 2019 16:32:16 +0300
Message-Id: <1561555938-21595-9-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561555938-21595-1-git-send-email-robert.chiras@nxp.com>
References: <1561555938-21595-1-git-send-email-robert.chiras@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_063229_817307_6576AE7B 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
 Robert Chiras <robert.chiras@nxp.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, the enable of the axi clock return status is ignored, causing
issues when the enable fails then we try to disable it. Therefore, it is
better to check the return status and disable it only when enable
succeeded.
Also, remove the helper functions around clk_axi, since we can directly
use the clk API function for enable/disable the clock. Those functions
are already checking for NULL clk and returning 0 if that's the case.

Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
Acked-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/gpu/drm/mxsfb/mxsfb_crtc.c |  8 ++++----
 drivers/gpu/drm/mxsfb/mxsfb_drv.c  | 32 +++++++++++++-------------------
 drivers/gpu/drm/mxsfb/mxsfb_drv.h  |  3 ---
 3 files changed, 17 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
index d9429fc..45ca16b 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
@@ -403,7 +403,7 @@ void mxsfb_crtc_enable(struct mxsfb_drm_private *mxsfb)
 {
 	dma_addr_t paddr;
 
-	mxsfb_enable_axi_clk(mxsfb);
+	clk_prepare_enable(mxsfb->clk_axi);
 	writel(0, mxsfb->base + LCDC_CTRL);
 	mxsfb_crtc_mode_set_nofb(mxsfb);
 
@@ -420,7 +420,7 @@ void mxsfb_crtc_enable(struct mxsfb_drm_private *mxsfb)
 void mxsfb_crtc_disable(struct mxsfb_drm_private *mxsfb)
 {
 	mxsfb_disable_controller(mxsfb);
-	mxsfb_disable_axi_clk(mxsfb);
+	clk_disable_unprepare(mxsfb->clk_axi);
 }
 
 void mxsfb_plane_atomic_update(struct mxsfb_drm_private *mxsfb,
@@ -448,9 +448,9 @@ void mxsfb_plane_atomic_update(struct mxsfb_drm_private *mxsfb,
 
 	paddr = mxsfb_get_fb_paddr(mxsfb);
 	if (paddr) {
-		mxsfb_enable_axi_clk(mxsfb);
+		clk_prepare_enable(mxsfb->clk_axi);
 		writel(paddr, mxsfb->base + mxsfb->devdata->next_buf);
-		mxsfb_disable_axi_clk(mxsfb);
+		clk_disable_unprepare(mxsfb->clk_axi);
 	}
 
 	if (!fb || !old_fb)
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
index 9a1ee70..a164f4d 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
@@ -93,18 +93,6 @@ drm_pipe_to_mxsfb_drm_private(struct drm_simple_display_pipe *pipe)
 	return container_of(pipe, struct mxsfb_drm_private, pipe);
 }
 
-void mxsfb_enable_axi_clk(struct mxsfb_drm_private *mxsfb)
-{
-	if (mxsfb->clk_axi)
-		clk_prepare_enable(mxsfb->clk_axi);
-}
-
-void mxsfb_disable_axi_clk(struct mxsfb_drm_private *mxsfb)
-{
-	if (mxsfb->clk_axi)
-		clk_disable_unprepare(mxsfb->clk_axi);
-}
-
 /**
  * mxsfb_atomic_helper_check - validate state object
  * @dev: DRM device
@@ -225,25 +213,31 @@ static void mxsfb_pipe_update(struct drm_simple_display_pipe *pipe,
 static int mxsfb_pipe_enable_vblank(struct drm_simple_display_pipe *pipe)
 {
 	struct mxsfb_drm_private *mxsfb = drm_pipe_to_mxsfb_drm_private(pipe);
+	int ret = 0;
+
+	ret = clk_prepare_enable(mxsfb->clk_axi);
+	if (ret)
+		return ret;
 
 	/* Clear and enable VBLANK IRQ */
-	mxsfb_enable_axi_clk(mxsfb);
 	writel(CTRL1_CUR_FRAME_DONE_IRQ, mxsfb->base + LCDC_CTRL1 + REG_CLR);
 	writel(CTRL1_CUR_FRAME_DONE_IRQ_EN, mxsfb->base + LCDC_CTRL1 + REG_SET);
-	mxsfb_disable_axi_clk(mxsfb);
+	clk_disable_unprepare(mxsfb->clk_axi);
 
-	return 0;
+	return ret;
 }
 
 static void mxsfb_pipe_disable_vblank(struct drm_simple_display_pipe *pipe)
 {
 	struct mxsfb_drm_private *mxsfb = drm_pipe_to_mxsfb_drm_private(pipe);
 
+	if (clk_prepare_enable(mxsfb->clk_axi))
+		return;
+
 	/* Disable and clear VBLANK IRQ */
-	mxsfb_enable_axi_clk(mxsfb);
 	writel(CTRL1_CUR_FRAME_DONE_IRQ_EN, mxsfb->base + LCDC_CTRL1 + REG_CLR);
 	writel(CTRL1_CUR_FRAME_DONE_IRQ, mxsfb->base + LCDC_CTRL1 + REG_CLR);
-	mxsfb_disable_axi_clk(mxsfb);
+	clk_disable_unprepare(mxsfb->clk_axi);
 }
 
 static struct drm_simple_display_pipe_funcs mxsfb_funcs = {
@@ -409,7 +403,7 @@ static irqreturn_t mxsfb_irq_handler(int irq, void *data)
 	struct mxsfb_drm_private *mxsfb = drm->dev_private;
 	u32 reg;
 
-	mxsfb_enable_axi_clk(mxsfb);
+	clk_prepare_enable(mxsfb->clk_axi);
 
 	reg = readl(mxsfb->base + LCDC_CTRL1);
 
@@ -418,7 +412,7 @@ static irqreturn_t mxsfb_irq_handler(int irq, void *data)
 
 	writel(CTRL1_CUR_FRAME_DONE_IRQ, mxsfb->base + LCDC_CTRL1 + REG_CLR);
 
-	mxsfb_disable_axi_clk(mxsfb);
+	clk_disable_unprepare(mxsfb->clk_axi);
 
 	return IRQ_HANDLED;
 }
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.h b/drivers/gpu/drm/mxsfb/mxsfb_drv.h
index 8fb65d3..d6df8fe 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_drv.h
+++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.h
@@ -37,9 +37,6 @@ struct mxsfb_drm_private {
 int mxsfb_setup_crtc(struct drm_device *dev);
 int mxsfb_create_output(struct drm_device *dev);
 
-void mxsfb_enable_axi_clk(struct mxsfb_drm_private *mxsfb);
-void mxsfb_disable_axi_clk(struct mxsfb_drm_private *mxsfb);
-
 void mxsfb_crtc_enable(struct mxsfb_drm_private *mxsfb);
 void mxsfb_crtc_disable(struct mxsfb_drm_private *mxsfb);
 void mxsfb_plane_atomic_update(struct mxsfb_drm_private *mxsfb,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
