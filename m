Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B233B438BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bwlSrCqSsukMuJ63NGub0lvf+q17160cVm/wBdO/4Hw=; b=mu/ZYcFxWJX2BN
	bquf1EHraIA94JlLQoMl7glNQwEzVXJI2kooBd7VpUy5A+/QtFWl5D+nh05KTeSgqnyGBbNjRE5T4
	U2/q8WyISG/C652fX3g8fw+H6P3KoZKX01fHl0zEfDRrqhZ87FTdZ6x/4aXmwa6U7lGrF8qBugnFk
	hjYKo8pjalnwjrnV6u4w8U1NGrg0X+R6oP7cWrgP+bqtTLe4nG/sadJuaDjd6BqWny5tzIyyk5ojg
	UpifvLWpZ6GqB2MHgg+bz1qsQDi9az/L/CeAAlSwUCjpF3c9VRTZQ864j3eWL9YAEH3A2a384fWL2
	k4xH1kL0/iYG87cqwd2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRKp-0008I1-Uq; Thu, 13 Jun 2019 15:08:16 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRHc-0004L3-2A
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:04:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V7uQGsBSps5OtehC7jKDCOj7ey/BkwQGUrMcyiu617U=; b=FCaczxjel13UF0wFfzCKw7xyhk
 W9SLab/jiRYInWHnNL3eOJfEarknD57h1Uu9MjJ/f0RqoENXe7ubKW+frGHIg/qBAWRCGO7O2/zdY
 V3dsX7fCxlldV2fTUDyTHxi1ympF+NeJWp3/voGca6xR/3i2nMOs91i8m5Yk7YZotMOGoIkgZxPOI
 AvqP6BMwc/cpNb1BKisYmXyN0XXmGmLH1YoPrdjOy0l2V/peDlk6DBsld25AHb+Dx03KB/p+dbvkc
 GkxwPRm2Iyw9rNRY1x09HCFIiF/dOQKlldgGU9VCrPWghwNT41wrrwnk88Nb/MB4iA2M9Pddn0Bs9
 ybz4qMVw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:45382 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFv-0003lH-RY; Thu, 13 Jun 2019 16:03:12 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFo-00008p-F9; Thu, 13 Jun 2019 16:03:04 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 16/18] drm/armada: replace the simple-framebuffer
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbRFo-00008p-F9@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:03:04 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080456_177347_338EA137 
X-CRM114-Status: GOOD (  10.88  )
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

From: Lubomir Rintel <lkundrak@v3.sk>

If there's a simple-framebuffer carried over from boot firmware, it's going
to stop working once we setup the LCDC for use via DRM. Kick it off from
the hardware.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_drv.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/armada/armada_drv.c b/drivers/gpu/drm/armada/armada_drv.c
index e524bfff1c49..05fab5cb5c2d 100644
--- a/drivers/gpu/drm/armada/armada_drv.c
+++ b/drivers/gpu/drm/armada/armada_drv.c
@@ -100,6 +100,17 @@ static int armada_drm_bind(struct device *dev)
 		return ret;
 	}
 
+	/* Remove early framebuffers */
+	ret = drm_fb_helper_remove_conflicting_framebuffers(NULL,
+							    "armada-drm-fb",
+							    false);
+	if (ret) {
+		dev_err(dev, "[" DRM_NAME ":%s] can't kick out simple-fb: %d\n",
+			__func__, ret);
+		kfree(priv);
+		return ret;
+	}
+
 	priv->drm.dev_private = priv;
 
 	dev_set_drvdata(dev, &priv->drm);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
