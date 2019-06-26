Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 819BE56AB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:35:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qkvz7S3c96lhYHIk7j9W6hp8TsM98qndKZron1izvAM=; b=iDC6nhV2qsQJn6p6IVdD+jx+i9
	sDU8IPGbLvqIugWrZ+YI5ozVq+ezP+WbzZS8YVyC9DYHganDqiqpRNO2RVHLMvVJ9YW99bxGLYi+N
	MdqXPMnOmgrNQK+9YOfL5X4ayuA9aCTzVOvNCWzplq+Nbw72vyl+tUbjMWZ53kb6wZ2k7/3pI2kXE
	O9WgPBuUsqrv6RBwEBZOgvzzFvmtOEFveo/TT59ceZ3ItkxnkDMWVj40ifxoLmv1V37Qv80kXKeZ9
	ptrRtQbWLc917XDMk+4GncIJkQjxD4H6/1BpTL0obDDf45/p3zgdkGntWUAwnszMfqZElFE+tlLNp
	QujSDILg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg85L-0004Bt-Do; Wed, 26 Jun 2019 13:35:39 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg82G-0001Bn-Jt
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:32:31 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5D97E1A0A37;
 Wed, 26 Jun 2019 15:32:27 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 517681A0A32;
 Wed, 26 Jun 2019 15:32:27 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id A25EA205DB;
 Wed, 26 Jun 2019 15:32:26 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 07/10] drm/mxsfb: Update mxsfb to support LCD reset
Date: Wed, 26 Jun 2019 16:32:15 +0300
Message-Id: <1561555938-21595-8-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1561555938-21595-1-git-send-email-robert.chiras@nxp.com>
References: <1561555938-21595-1-git-send-email-robert.chiras@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_063228_915932_984EC355 
X-CRM114-Status: GOOD (  10.60  )
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
 Robert Chiras <robert.chiras@nxp.com>, linux-arm-kernel@lists.infradead.org
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
 drivers/gpu/drm/mxsfb/mxsfb_crtc.c | 10 ++++++++--
 drivers/gpu/drm/mxsfb/mxsfb_regs.h |  1 +
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
index e48396d..d9429fc 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
@@ -222,9 +222,12 @@ static void mxsfb_enable_controller(struct mxsfb_drm_private *mxsfb)
 		clk_prepare_enable(mxsfb->clk_disp_axi);
 	clk_prepare_enable(mxsfb->clk);
 
-	if (mxsfb->devdata->ipversion >= 4)
+	if (mxsfb->devdata->ipversion >= 4) {
 		writel(CTRL2_OUTSTANDING_REQS__REQ_16,
 		       mxsfb->base + LCDC_V4_CTRL2 + REG_SET);
+		/* Assert LCD Reset bit */
+		writel(CTRL2_LCD_RESET, mxsfb->base + LCDC_V4_CTRL2 + REG_SET);
+	}
 
 	/* If it was disabled, re-enable the mode again */
 	writel(CTRL_DOTCLK_MODE, mxsfb->base + LCDC_CTRL + REG_SET);
@@ -242,9 +245,12 @@ static void mxsfb_disable_controller(struct mxsfb_drm_private *mxsfb)
 {
 	u32 reg;
 
-	if (mxsfb->devdata->ipversion >= 4)
+	if (mxsfb->devdata->ipversion >= 4) {
 		writel(CTRL2_OUTSTANDING_REQS(0x7),
 		       mxsfb->base + LCDC_V4_CTRL2 + REG_CLR);
+		/* De-assert LCD Reset bit */
+		writel(CTRL2_LCD_RESET, mxsfb->base + LCDC_V4_CTRL2 + REG_CLR);
+	}
 
 	writel(CTRL_RUN, mxsfb->base + LCDC_CTRL + REG_CLR);
 
diff --git a/drivers/gpu/drm/mxsfb/mxsfb_regs.h b/drivers/gpu/drm/mxsfb/mxsfb_regs.h
index 9ee0d3c7..2583a69 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_regs.h
+++ b/drivers/gpu/drm/mxsfb/mxsfb_regs.h
@@ -87,6 +87,7 @@
 #define CTRL2_OUTSTANDING_REQS(x)	REG_PUT((x), 23, 21)
 #define CTRL2_ODD_LINE_PATTERN(x)	REG_PUT((x), 18, 16)
 #define CTRL2_EVEN_LINE_PATTERN(x)	REG_PUT((x), 14, 12)
+#define CTRL2_LCD_RESET			BIT(0)
 
 #define TRANSFER_COUNT_SET_VCOUNT(x)	(((x) & 0xffff) << 16)
 #define TRANSFER_COUNT_GET_VCOUNT(x)	(((x) >> 16) & 0xffff)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
