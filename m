Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945EA976D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 12:19:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cZVyMtyJKeRajK3k/jvqIgIUJCb+r6kmjNpdlBRT5fw=; b=UCHlYfWjGLj7J54pDiI/Og/3i2
	98mUF1kwBIVrEB/DeNSCSPhYLmOqOsHizwkONQk67FGM30qNpepDHJI0b+RLfYFU86wsHwYByvfsk
	ApU6Sgdy/PWzsCylX88xsIZubGnPtaB+VGJYn/s8FWNPpKGuQHMZMevpkuX+0Kd5we8BvxPFobuMr
	awBrGP1uuiP+9vm1hqtnzdAyBPAs7mB91g6A4ggFPQZ3EelO4dUvBFn2oMaMwlPCeQHLDTrvNcK3D
	Dpob6tEv1OOPPpoCAZLKGxLV+2yA9me3fIWfQflp5UGSh+jVN9OUMn4ZmT18N22u8UyNptF2yA+RY
	94uuTxEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Nhq-0003dG-S5; Wed, 21 Aug 2019 10:19:06 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0NfC-00025w-FT
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 10:16:24 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 481221A00CC;
 Wed, 21 Aug 2019 12:16:21 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3B53E1A0045;
 Wed, 21 Aug 2019 12:16:21 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 8C2D7205D3;
 Wed, 21 Aug 2019 12:16:20 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 07/15] drm/mxsfb: Fix the vblank events
Date: Wed, 21 Aug 2019 13:15:47 +0300
Message-Id: <1566382555-12102-8-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566382555-12102-1-git-send-email-robert.chiras@nxp.com>
References: <1566382555-12102-1-git-send-email-robert.chiras@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_031622_680497_1C26B98E 
X-CRM114-Status: GOOD (  12.62  )
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

Currently, the vblank support is not correctly implemented in MXSFB_DRM
driver. The call to drm_vblank_init is made with mode_config.num_crtc
which at that time is 0. Because of this, vblank is not activated, so
there won't be any vblank event submitted.
For example, when running modetest with the '-v' parameter will result
in an astronomical refresh rate (10000+ Hz), because of that.

Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
---
 drivers/gpu/drm/mxsfb/mxsfb_drv.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_drv.c b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
index 2743975..78a2382 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_drv.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_drv.c
@@ -38,6 +38,9 @@
 #include "mxsfb_drv.h"
 #include "mxsfb_regs.h"
 
+/* The eLCDIF max possible CRTCs */
+#define MAX_CRTCS 1
+
 enum mxsfb_devtype {
 	MXSFB_V3,
 	MXSFB_V4,
@@ -138,6 +141,8 @@ static void mxsfb_pipe_enable(struct drm_simple_display_pipe *pipe,
 		mxsfb->connector = &mxsfb->panel_connector;
 	}
 
+	drm_crtc_vblank_on(&pipe->crtc);
+
 	pm_runtime_get_sync(drm->dev);
 	drm_panel_prepare(mxsfb->panel);
 	mxsfb_crtc_enable(mxsfb);
@@ -164,6 +169,8 @@ static void mxsfb_pipe_disable(struct drm_simple_display_pipe *pipe)
 	}
 	spin_unlock_irq(&drm->event_lock);
 
+	drm_crtc_vblank_off(&pipe->crtc);
+
 	if (mxsfb->connector != &mxsfb->panel_connector)
 		mxsfb->connector = NULL;
 }
@@ -246,7 +253,7 @@ static int mxsfb_load(struct drm_device *drm, unsigned long flags)
 
 	pm_runtime_enable(drm->dev);
 
-	ret = drm_vblank_init(drm, drm->mode_config.num_crtc);
+	ret = drm_vblank_init(drm, MAX_CRTCS);
 	if (ret < 0) {
 		dev_err(drm->dev, "Failed to initialise vblank\n");
 		goto err_vblank;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
