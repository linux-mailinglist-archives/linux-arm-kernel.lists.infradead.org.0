Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AA543879
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:06:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uAJRkKnDjbwkG5eMGXvWcHat2cOOjIu/kpu7NshTGJ8=; b=bnrZWbBzP/lxlz
	UjIxefWabZ0q6j8PH3Zhmp0K4rJWLN4J/uBi8Yp5X/6rs3CMm9ZT7jpDpynEf76laDL0FHJ6B08wj
	zZqxy+043GZR8G6Y583moN8KIKF4y6WPLquTfx8pUxiJ2c9wlPky3Q1dbQQ6tb6b/KbbR14WEb7AV
	B1MYwXURfnWsGlLEEeoTO/GHMQaSO5Z5qYf5d7A1VntrX43WVTxBI7SRPzYDPXcoFVCyASxd1wNSa
	EdSiebwLpAuImMP6TarAZu7KO3M/H74wO5J/An+ea/qL3D6ZBKlFDFBmfcWw++W5/87DJ3buOeth2
	IMRqhikZ425yYx1P84Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRIy-0006Y6-Bn; Thu, 13 Jun 2019 15:06:20 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRGD-00031m-5H
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:03:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=USYGNPsyrLU5XuS+AbM7Xr/tVaBwT7eEBKkr0hsvhdA=; b=Wo5y7ZNeYlDKeXvA8cS/AkCWqT
 EfKNFzsdkyxzrAEbmBPUT8PDBhAWzETqjG3PPsfk9KbKNG4hZQl+qnaQQiHHx0H014lDNGqIfGFeJ
 zEBmEbPUujkZ2hI+ZAMSySd2y06MArX2gmtGiId+l+wTxmeuDGO1i77OMGMwFY/eV6rgaxGj5crI0
 OfMyomR7EQIscUqox3YJwwCZiS169uyZ+MCv3CvQe+H0svQO6W5FAyE3muiEw/dd7ZCvi8s03ZZur
 U/CLLT08ORo1PMFqfJZDzex849w+M1mRYtG33m6uervqRuMK1Gt7PhFPQE8yNMnpm/eicW17TBq+0
 8iSg34Wg==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:45364 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFY-0003ke-JM; Thu, 13 Jun 2019 16:02:48 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFT-00008B-VM; Thu, 13 Jun 2019 16:02:44 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 12/18] drm/armada: add CRTC mode validation
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbRFT-00008B-VM@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:02:43 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080329_389013_70F12842 
X-CRM114-Status: GOOD (  10.51  )
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

Add CRTC mode validation to reject modes that the CRTC does not support.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_crtc.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/armada/armada_crtc.c b/drivers/gpu/drm/armada/armada_crtc.c
index d802a6bc2d9f..edce74f60198 100644
--- a/drivers/gpu/drm/armada/armada_crtc.c
+++ b/drivers/gpu/drm/armada/armada_crtc.c
@@ -168,6 +168,25 @@ static void armada_drm_update_gamma(struct drm_crtc *crtc)
 	}
 }
 
+static enum drm_mode_status armada_drm_crtc_mode_valid(struct drm_crtc *crtc,
+	const struct drm_display_mode *mode)
+{
+	if (mode->vscan > 1)
+		return MODE_NO_VSCAN;
+
+	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
+		return MODE_NO_DBLESCAN;
+
+	if (mode->flags & DRM_MODE_FLAG_HSKEW)
+		return MODE_H_ILLEGAL;
+
+	if (mode->flags & (DRM_MODE_FLAG_BCAST | DRM_MODE_FLAG_PIXMUX |
+			   DRM_MODE_FLAG_CLKDIV2))
+		return MODE_BAD;
+
+	return MODE_OK;
+}
+
 /* The mode_config.mutex will be held for this call */
 static bool armada_drm_crtc_mode_fixup(struct drm_crtc *crtc,
 	const struct drm_display_mode *mode, struct drm_display_mode *adj)
@@ -499,6 +518,7 @@ static void armada_drm_crtc_atomic_enable(struct drm_crtc *crtc,
 }
 
 static const struct drm_crtc_helper_funcs armada_crtc_helper_funcs = {
+	.mode_valid	= armada_drm_crtc_mode_valid,
 	.mode_fixup	= armada_drm_crtc_mode_fixup,
 	.mode_set_nofb	= armada_drm_crtc_mode_set_nofb,
 	.atomic_check	= armada_drm_crtc_atomic_check,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
