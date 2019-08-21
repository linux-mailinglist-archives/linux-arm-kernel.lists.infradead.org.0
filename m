Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEAD976D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 12:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zdxUcE28rOBwNnq98SdtmL0w66qOiGl/Dhonl6dDkWI=; b=fNojz0EMF/Awgl0Z8f8P+Pg/mA
	jlCQM07kX+8GVitFFbXDTXHInb2vLp1bhMIpmwZ79Mt4sOy/2xr+bWE3+/ELL2UiaQAzuj3M023UG
	7v82sXXgPufFRUdmxq4Gwrux9lbKaKnn920ZR5M59CSKpntBP0ngLlyU03eT/DR4eqtzT1gd4heRv
	UrnA5p8TSdp3Lbgaf3Hp7wN7vAgH49A3bRIyGihZ2gx9ALRDQ3uA/SZrQhMHdclTmTpLO1LYUIrUd
	oO3EqKgp21BYLw01fIGdokwkmvuoregLvMtBzMUEojVuZJiVNcO5UZzNDSVGWcqaNhBvbMC9RKVmF
	Du1vluqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0Nk4-0006eE-P2; Wed, 21 Aug 2019 10:21:25 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0NfH-000297-9P
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 10:16:28 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D296E1A01D9;
 Wed, 21 Aug 2019 12:16:25 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C5B5F1A007D;
 Wed, 21 Aug 2019 12:16:25 +0200 (CEST)
Received: from fsr-ub1664-120.ea.freescale.net
 (fsr-ub1664-120.ea.freescale.net [10.171.82.81])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 1574F205D3;
 Wed, 21 Aug 2019 12:16:25 +0200 (CEST)
From: Robert Chiras <robert.chiras@nxp.com>
To: =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
 Marek Vasut <marex@denx.de>, Stefan Agner <stefan@agner.ch>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 13/15] drm/mxsfb: Clear OUTSTANDING_REQS bits
Date: Wed, 21 Aug 2019 13:15:53 +0300
Message-Id: <1566382555-12102-14-git-send-email-robert.chiras@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1566382555-12102-1-git-send-email-robert.chiras@nxp.com>
References: <1566382555-12102-1-git-send-email-robert.chiras@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_031627_575627_643CF0D4 
X-CRM114-Status: UNSURE (   9.90  )
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

Bit 21 can alter the CTRL2_OUTSTANDING_REQS value right after the eLCDIF
is enabled, since it comes up with default value of 1 (this behaviour
has been seen on some imx8 platforms).
In order to fix this, clear CTRL2_OUTSTANDING_REQS bits before setting
its value.

Signed-off-by: Robert Chiras <robert.chiras@nxp.com>
---
 drivers/gpu/drm/mxsfb/mxsfb_crtc.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
index e727f5e..a12f53d 100644
--- a/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
+++ b/drivers/gpu/drm/mxsfb/mxsfb_crtc.c
@@ -225,6 +225,13 @@ static void mxsfb_enable_controller(struct mxsfb_drm_private *mxsfb)
 	clk_prepare_enable(mxsfb->clk);
 
 	if (mxsfb->devdata->ipversion >= 4) {
+		/*
+		 * On some platforms, bit 21 is defaulted to 1, which may alter
+		 * the below setting. So, to make sure we have the right setting
+		 * clear all the bits for CTRL2_OUTSTANDING_REQS.
+		 */
+		writel(CTRL2_OUTSTANDING_REQS(0x7),
+		       mxsfb->base + LCDC_V4_CTRL2 + REG_CLR);
 		writel(CTRL2_OUTSTANDING_REQS(REQ_16),
 		       mxsfb->base + LCDC_V4_CTRL2 + REG_SET);
 		/* Assert LCD Reset bit */
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
