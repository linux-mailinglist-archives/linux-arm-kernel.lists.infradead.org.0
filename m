Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEBC4385A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LjKo+++RIZc7z2o7ZbPd/EO7mvXXUFNNGlM1nUi1as=; b=AObDII3aPliG6v
	XPAaYbTUPnnkofDUfiU/+FmWt9ZHayRSQ1VLG150EugXMCJjTBi3KHDiOBVzIC8tWYDdSA/n3XmtQ
	sbhZO+IN1OBzv5QYRj9y9kZ2vfftG6h8R/QrZzPuvFTtgBfVwzv0x+US1PUCUrRzfIONFyIdO2aSo
	3vepLc+QvCA80S+nVpsBr0OFC/5cfxtNVRmIT7whhZpOmrxacQxeBbcOvhPtTZ/b6UPEdIphmaSH+
	mABLk88gsbcNUSR4r7feAnUCQVb48ee42uoP2XSbXZHf4BeJfDC32FC+h9rnRz/A1nVOAdYQAxQ1v
	POwunq6kfPUldqYuP+CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRI4-0004Ox-1T; Thu, 13 Jun 2019 15:05:24 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRFo-0002gC-G6
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:03:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n1ADWfrxell8j9XL+nv+avELr5Unf4Y2nYepvE/ry4k=; b=FCpNXML7eB4LKnNfG4L87AFZ93
 8LhYoPHo/MaV4pC0wNp++yXBYBdqjZx4OS+fUtyzKo36/sUTJJFIO26EuGkytAv3LYhw/8ijTBGOT
 GGtRIxT9wIvbR2YCPUKwGQKukSw10YMG1D0CSbYRY27Nc7eFQc2wYdyvzdG/n/09p2rl56L2hOJCq
 XoqoJwdhm4Bo8qJQ5vjI1D/04K4C9DjvIWiZLpfBEhaQfF+1XkBeuSFPrG7oZYmlZxPiBWvAzW2m9
 Fw/iD4ozv0w1WhxBahcQ5s+VkE4v/8BzwHKOWE05uo2Q8jaI3p4Tft22EOscYAr4YWFjRXkAAwovr
 mkg1yt3g==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:44842 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFI-0003kG-FK; Thu, 13 Jun 2019 16:02:32 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFE-00007h-BQ; Thu, 13 Jun 2019 16:02:28 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 09/18] drm/armada: add drm_mode_set_crtcinfo() mode fixup
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbRFE-00007h-BQ@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:02:28 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080304_839527_BC67B550 
X-CRM114-Status: GOOD (  10.20  )
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

Add a drm_mode_set_crtcinfo() call in our CRTC's mode_fixup callback
to ensure that any adjustments to the mode made by connectors etc are
properly accounted for by the CRTC.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_crtc.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/armada/armada_crtc.c b/drivers/gpu/drm/armada/armada_crtc.c
index e81e57823b66..d802a6bc2d9f 100644
--- a/drivers/gpu/drm/armada/armada_crtc.c
+++ b/drivers/gpu/drm/armada/armada_crtc.c
@@ -180,6 +180,13 @@ static bool armada_drm_crtc_mode_fixup(struct drm_crtc *crtc,
 	    adj->flags & DRM_MODE_FLAG_INTERLACE)
 		return false;
 
+	/*
+	 * Set CRTC modesetting parameters for the adjusted mode.  This is
+	 * applied after the connectors, bridges, and encoders have fixed up
+	 * this mode, as described above drm_atomic_helper_check_modeset().
+	 */
+	drm_mode_set_crtcinfo(adj, CRTC_INTERLACE_HALVE_V);
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
