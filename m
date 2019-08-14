Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883578D15A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:50:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=WEG/uLCBGpaAB28ATR30dvrE0PI2dFAflARLVVVnAkw=; b=J/dq23s9X8l4IqIm7ExsZi297M
	k9teI/6bzwQoqmnAdlRq3ivhLvWs+4SsK8//7QfltYqcT6XalRWRmenv3nEIGZHwmr9yDNhF2PMQ9
	8G2lToCiog4vsVSpL0mF2gFnpZ3Ypb6b5PbTO+9effQHdszq9jwf1si+amTAixk2ciZoNNslHI+R3
	c82JPLDvPVjDb4Yzy0d6KZPj4RQs06Zj2zFzgHDBvnadWN1SGPv5dllns5ATV15/rnKgs7sZ9p70Y
	vp/XW/zyaTZOnb+492ToBGUDunjJlZ4cONhVF9fDInwdKTopTV6LOXxvwNermasCFX3kHk83nmm/f
	yfOVFT+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqrA-0005gX-LU; Wed, 14 Aug 2019 10:50:16 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqpz-0003kc-Hz
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:49:07 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 72C651A038F;
 Wed, 14 Aug 2019 12:49:00 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 65B801A0389;
 Wed, 14 Aug 2019 12:49:00 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 6221A2060E;
 Wed, 14 Aug 2019 12:48:59 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 04/15] drm/mxsfb: Reset vital register for a proper
 initialization
Date: Wed, 14 Aug 2019 13:48:40 +0300
Message-Id: <1565779731-1300-5-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com>
References: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_034903_737845_A2E84F8F 
X-CRM114-Status: UNSURE (   9.94  )
X-CRM114-Notice: Please train this message.
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

Some of the regiters need, like LCDC_CTRL and CTRL2_OUTSTANDING_REQS
needs to be properly cleared and initialized for a better start and stop
routine.

Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
---
 drivers/gpu/drm/mxsfb/mxsfb_crtc.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
index b69ace8..5e44f57 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
@@ -127,6 +127,10 @@ static void mxsfb_enable_controller(struct mxsfb_drm_private *mxsfb)
 		clk_prepare_enable(mxsfb->clk_disp_axi);
 	clk_prepare_enable(mxsfb->clk);
 
+	if (mxsfb->devdata->ipversion >= 4)
+		writel(CTRL2_OUTSTANDING_REQS(REQ_16),
+		       mxsfb->base + LCDC_V4_CTRL2 + REG_SET);
+
 	/* If it was disabled, re-enable the mode again */
 	writel(CTRL_DOTCLK_MODE, mxsfb->base + LCDC_CTRL + REG_SET);
 
@@ -136,12 +140,19 @@ static void mxsfb_enable_controller(struct mxsfb_drm_private *mxsfb)
 	writel(reg, mxsfb->base + LCDC_VDCTRL4);
 
 	writel(CTRL_RUN, mxsfb->base + LCDC_CTRL + REG_SET);
+	writel(CTRL1_RECOVERY_ON_UNDERFLOW, mxsfb->base + LCDC_CTRL1 + REG_SET);
 }
 
 static void mxsfb_disable_controller(struct mxsfb_drm_private *mxsfb)
 {
 	u32 reg;
 
+	if (mxsfb->devdata->ipversion >= 4)
+		writel(CTRL2_OUTSTANDING_REQS(0x7),
+		       mxsfb->base + LCDC_V4_CTRL2 + REG_CLR);
+
+	writel(CTRL_RUN, mxsfb->base + LCDC_CTRL + REG_CLR);
+
 	/*
 	 * Even if we disable the controller here, it will still continue
 	 * until its FIFOs are running out of data
@@ -295,6 +306,7 @@ void mxsfb_crtc_enable(struct mxsfb_drm_private *mxsfb)
 	dma_addr_t paddr;
 
 	mxsfb_enable_axi_clk(mxsfb);
+	writel(0, mxsfb->base + LCDC_CTRL);
 	mxsfb_crtc_mode_set_nofb(mxsfb);
 
 	/* Write cur_buf as well to avoid an initial corrupt frame */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
