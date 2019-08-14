Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB678D178
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 12:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kFnycmUu16Gl88fbLCbBMqby6C0aThF5vFyJKIvKl8U=; b=D0IIQK02ji2SkIQeRWzFJyDRGO
	M/U2Ffvgu5foTc9y/YZSANOgG5v5m+eDMQ6KyjACe/sj0cwmE2bpf/IEKAYTROQ9Wk/ii0oL39VHW
	b0aXb9mpwURYNDsYUeQ8JaM8a0F/SDpVheXA5srzAE3FHOhdErRpVNd4nMRft+2Qnqf2SrzwIqkpA
	jTsvpi5HRzc7PnijUrSagYNj4Ct1sU8YJiu2MLAE0KukOef2L8bJ446AdD7Tf+otjJ2F1F//875p9
	5Vf8TkXaNOIFJstqB08OjcVDn32wo6CdDx+yugVYbCbr1KmpFoS1Jvhf6/mnW9hXawzgs6/FRNcIp
	0dKeHwQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxqsF-0007aS-0r; Wed, 14 Aug 2019 10:51:23 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxqq5-0003rf-Gf
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 10:49:11 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4AE281A039B;
 Wed, 14 Aug 2019 12:49:08 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 3E6821A039F;
 Wed, 14 Aug 2019 12:49:08 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 33F602060E;
 Wed, 14 Aug 2019 12:49:07 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 11/15] drm/mxsfb: Update mxsfb to support LCD reset
Date: Wed, 14 Aug 2019 13:48:47 +0300
Message-Id: <1565779731-1300-12-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com>
References: <1565779731-1300-1-git-send-email-robert.chiras@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_034909_724858_AB860DD3 
X-CRM114-Status: GOOD (  11.42  )
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

The eLCDIF controller has control pin for the external LCD reset pin.
Add support for it and assert this pin in enable and de-assert it in
disable.

Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
---
 drivers/gpu/drm/mxsfb/mxsfb_crtc.c | 14 ++++++++++----
 drivers/gpu/drm/mxsfb/mxsfb_regs.h |  2 ++
 2 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
index 1be29f5..a4ba368 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
@@ -224,9 +224,12 @@ static void mxsfb_enable_controller(struct mxsfb_drm_private *mxsfb)
 		clk_prepare_enable(mxsfb->clk_disp_axi);
 	clk_prepare_enable(mxsfb->clk);
 
-	if (mxsfb->devdata->ipversion >= 4)
+	if (mxsfb->devdata->ipversion >= 4) {
 		writel(CTRL2_OUTSTANDING_REQS(REQ_16),
 		       mxsfb->base + LCDC_V4_CTRL2 + REG_SET);
+		/* Assert LCD Reset bit */
+		writel(CTRL2_LCD_RESET, mxsfb->base + LCDC_V4_CTRL2 + REG_SET);
+	}
 
 	/* If it was disabled, re-enable the mode again */
 	writel(CTRL_DOTCLK_MODE, mxsfb->base + LCDC_CTRL + REG_SET);
@@ -244,11 +247,14 @@ static void mxsfb_disable_controller(struct mxsfb_drm_private *mxsfb)
 {
 	u32 reg;
 
-	if (mxsfb->devdata->ipversion >= 4)
+	writel(CTRL_RUN, mxsfb->base + LCDC_CTRL + REG_CLR);
+
+	if (mxsfb->devdata->ipversion >= 4) {
 		writel(CTRL2_OUTSTANDING_REQS(0x7),
 		       mxsfb->base + LCDC_V4_CTRL2 + REG_CLR);
-
-	writel(CTRL_RUN, mxsfb->base + LCDC_CTRL + REG_CLR);
+		/* De-assert LCD Reset bit */
+		writel(CTRL2_LCD_RESET, mxsfb->base + LCDC_V4_CTRL2 + REG_CLR);
+	}
 
 	/*
 	 * Even if we disable the controller here, it will still continue
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_regs.h b/drivers/gpu/drm/mxsfb/mxsfb_regs.h
index dc4daa0..0f63ba1 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_regs.h
+++ b/drivers/gpu/drm/mxsfb/mxsfb_regs.h
@@ -108,6 +108,8 @@
 #define CTRL2_LINE_PATTERN_BGR	5
 #define CTRL2_LINE_PATTERN_CLR	7
 
+#define CTRL2_LCD_RESET			BIT(0)
+
 #define TRANSFER_COUNT_SET_VCOUNT(x)	REG_PUT((x), 31, 16)
 #define TRANSFER_COUNT_GET_VCOUNT(x)	REG_GET((x), 31, 16)
 #define TRANSFER_COUNT_SET_HCOUNT(x)	REG_PUT((x), 15, 0)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
