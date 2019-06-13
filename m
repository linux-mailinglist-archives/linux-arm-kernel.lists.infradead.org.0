Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CDB43892
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:06:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tFLA3A/KbAA7Slp4lkY/OUJVXewiy49lVrgkwewN1M=; b=a8f/w/1nnLEKSc
	q1y0VYouUeK6U8e7JLoiJjt4an9TeAMnhbw4zUXA9GowEKjm8yoU4+tw5/qZPmxl8hdPzPmOWngIP
	yXiCnAr0PKytYnE/4MmI6Kvnn7BBOEw6/otWQW6hDB/RgGmFr3UNuZTmDNX0RIx06jjP5ZsCdKEHz
	J5brLDabGu8JTW7zPUOxB+GyuZVgsrdroVK0LORU+Jrdx8CnotPwV0OFu2HGSWPdUN5PZxVCAYVrm
	t0yyvKDtAb9GB4fT/ME+I3xQVG88f6qaz61F3OhUOWbixSTZWEnIuDilU3gqcbqQR6pPMofr0XQny
	rciRFPv3DW+Zukn4Tdkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRJW-00075L-9E; Thu, 13 Jun 2019 15:06:54 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRGM-00035x-J3
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:03:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VdHoZhjdglNvGZZLS/THTRLcnp1kH8tvv7PiZLbCcbM=; b=DT8Wgy6/J16400/zTVbzORgcay
 T8jq3O2aIK8X24oEM3jhPOhw1hjG7ipBJFD0k38wSvOLqZeAW1FpgaqrwWfojzvlOoCyhdAkmGrX4
 yl1kXcHPbi89D0bFIbEH2IjasM49GXtOt+mfOHypQY7dhH9OkRgG4kirHQosiw/Z5XWRM5xwsYYgw
 mzzDkPeCW0CAOuR4CZ1vsxbTIQiawKEIwqfin5ZUTUUrHwDPlYuibwk3jL0CvOKH8zq7cdxa4B5iG
 wtodRAg5p0QjA6yDXW5R2aW93Af3yLkAYuPb/WXjwZQJLNhkzyKJIaIryJaQfHcgcs6F9Ps79ZEPD
 lrDqqdhg==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:35426 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFl-0003kw-4t; Thu, 13 Jun 2019 16:03:01 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFe-00008U-6F; Thu, 13 Jun 2019 16:02:54 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 14/18] drm/armada: use mode_valid to validate the adjusted mode
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbRFe-00008U-6F@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:02:54 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080338_706156_8148A85D 
X-CRM114-Status: GOOD (  13.85  )
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

Validate the adjusted mode in the CRTC mode_fixup() call to ensure that
any encoder or bridge doesn't supply us with a mode we can't support.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_crtc.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_crtc.c b/drivers/gpu/drm/armada/armada_crtc.c
index 949acc82406b..ecce7efb271d 100644
--- a/drivers/gpu/drm/armada/armada_crtc.c
+++ b/drivers/gpu/drm/armada/armada_crtc.c
@@ -171,6 +171,8 @@ static void armada_drm_update_gamma(struct drm_crtc *crtc)
 static enum drm_mode_status armada_drm_crtc_mode_valid(struct drm_crtc *crtc,
 	const struct drm_display_mode *mode)
 {
+	struct armada_crtc *dcrtc = drm_to_armada_crtc(crtc);
+
 	if (mode->vscan > 1)
 		return MODE_NO_VSCAN;
 
@@ -180,6 +182,11 @@ static enum drm_mode_status armada_drm_crtc_mode_valid(struct drm_crtc *crtc,
 	if (mode->flags & DRM_MODE_FLAG_HSKEW)
 		return MODE_H_ILLEGAL;
 
+	/* We can't do interlaced modes if we don't have the SPU_ADV_REG */
+	if (!dcrtc->variant->has_spu_adv_reg &&
+	    mode->flags & DRM_MODE_FLAG_INTERLACE)
+		return MODE_NO_INTERLACE;
+
 	if (mode->flags & (DRM_MODE_FLAG_BCAST | DRM_MODE_FLAG_PIXMUX |
 			   DRM_MODE_FLAG_CLKDIV2))
 		return MODE_BAD;
@@ -194,11 +201,6 @@ static bool armada_drm_crtc_mode_fixup(struct drm_crtc *crtc,
 	struct armada_crtc *dcrtc = drm_to_armada_crtc(crtc);
 	int ret;
 
-	/* We can't do interlaced modes if we don't have the SPU_ADV_REG */
-	if (!dcrtc->variant->has_spu_adv_reg &&
-	    adj->flags & DRM_MODE_FLAG_INTERLACE)
-		return false;
-
 	/*
 	 * Set CRTC modesetting parameters for the adjusted mode.  This is
 	 * applied after the connectors, bridges, and encoders have fixed up
@@ -206,6 +208,13 @@ static bool armada_drm_crtc_mode_fixup(struct drm_crtc *crtc,
 	 */
 	drm_mode_set_crtcinfo(adj, CRTC_INTERLACE_HALVE_V);
 
+	/*
+	 * Validate the adjusted mode in case an encoder/bridge has set
+	 * something we don't support.
+	 */
+	if (armada_drm_crtc_mode_valid(crtc, adj) != MODE_OK)
+		return false;
+
 	/* Check whether the display mode is possible */
 	ret = dcrtc->variant->compute_clock(dcrtc, adj, NULL);
 	if (ret)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
