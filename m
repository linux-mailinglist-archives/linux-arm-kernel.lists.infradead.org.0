Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24372437EE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:02:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wMx4vWwfe/BOWDq8xMjEAJQyr8lBsHQnX2D8IUC8yz8=; b=EuYvClfMu0xTBN
	KSGZJ+dZn0v5m6TxUKrCMz3z1F6rc1wndEYXICEwnqoghSltZNhN2kG0fuVcfKTdEVJ6qCAje2B8z
	455QPI9246pWwccvJb6zrMxALFl3PVAyKGHRfUZuue8QZs+9TiHvO4NW4/apU+iNRBfiFLcTWYE7y
	Dz5ylaSZBd3/3nCKOmh/bm2MFrL5zAOCop62rjqgKs37SmLqlHL91mt8iqeKak5fv3fPMROakbmVs
	T7oVjaWYIMC53UclRGbjuNoWbVvJPP2mp2hdrdTXpZyYA5m06kDYhoA1FYCcHxtc2ZcC3K4dL11/F
	Y5ec/2WxGvo3UTpRb36g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRF3-0001oo-As; Thu, 13 Jun 2019 15:02:17 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbREm-0001jt-5K
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:02:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YZe73em0KXNvF4FCfbKTyLNP8J30nCWSEC9qrAb+TqI=; b=QHEva45DLznnK1fKvVBMEF8cWU
 yieZlrzOOtJBIXbRR/BJvUFSApwgQZQz+6/2V7aAZ3G7u8neM6KGj8oqXUC8quyJ0xBgxumHJ0W5C
 gJxLzmOSFGdezOIh9joRt9TtCO9Y8U9F/jhfyWNsiwDb0Cg4rCy9nT5oVvJDNCDS8ZNpbqCAsmS4G
 21uKDM9sziUl7E3p1FAc1X9EPxRco7wFRjIJHwlJ/UfOdwbCmTapAIZ79NFJDUzNC880nbmB8cRDo
 TMB1C5LwTY5pc3OHdlsFIlASXknBMs8wHCVv8JNtlbkherkNxuScg7OfgyY2jKHyEcI6qUhYiAIh1
 FsGmoxyg==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:45336 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbREZ-0003j4-NI; Thu, 13 Jun 2019 16:01:47 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbREY-00006f-FR; Thu, 13 Jun 2019 16:01:46 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 01/18] drm/armada: fix crtc interlace
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbREY-00006f-FR@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:01:46 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080200_199393_A7EE0AAF 
X-CRM114-Status: GOOD (  11.12  )
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

We support interlace, but this was broken when we could no longer get
a ref on the vblank interrupt.  Arrange to get the ref on the vblank
interrupt after we've re-enabled vblank, and put it before we disable
the vblank.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_crtc.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_crtc.c b/drivers/gpu/drm/armada/armada_crtc.c
index ba4a3fab7745..09bade15f51c 100644
--- a/drivers/gpu/drm/armada/armada_crtc.c
+++ b/drivers/gpu/drm/armada/armada_crtc.c
@@ -278,16 +278,9 @@ static void armada_drm_crtc_mode_set_nofb(struct drm_crtc *crtc)
 
 	armada_reg_queue_set(regs, i, sclk, LCD_CFG_SCLK_DIV);
 
-	if (interlaced ^ dcrtc->interlaced) {
-		if (adj->flags & DRM_MODE_FLAG_INTERLACE)
-			drm_crtc_vblank_get(&dcrtc->crtc);
-		else
-			drm_crtc_vblank_put(&dcrtc->crtc);
-		dcrtc->interlaced = interlaced;
-	}
-
 	spin_lock_irqsave(&dcrtc->irq_lock, flags);
 
+	dcrtc->interlaced = interlaced;
 	/* Even interlaced/progressive frame */
 	dcrtc->v[1].spu_v_h_total = adj->crtc_vtotal << 16 |
 				    adj->crtc_htotal;
@@ -390,6 +383,9 @@ static void armada_drm_crtc_atomic_disable(struct drm_crtc *crtc,
 
 	DRM_DEBUG_KMS("[CRTC:%d:%s]\n", crtc->base.id, crtc->name);
 
+	if (old_state->adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
+		drm_crtc_vblank_put(crtc);
+
 	drm_crtc_vblank_off(crtc);
 	armada_drm_crtc_update(dcrtc, false);
 
@@ -434,6 +430,9 @@ static void armada_drm_crtc_atomic_enable(struct drm_crtc *crtc,
 	armada_drm_crtc_update(dcrtc, true);
 	drm_crtc_vblank_on(crtc);
 
+	if (crtc->state->adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
+		WARN_ON(drm_crtc_vblank_get(crtc));
+
 	armada_drm_crtc_queue_state_event(crtc);
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
