Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77488437EF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dheJpge6zIKsfPCYS7E9VoQTYCzmrHrO9Y33esXqVrE=; b=GGH0IGCwDbixoX
	0qn84orhahgVZDf2K1LVhVkzptqrak2r3jWB/ReDvDpqQwQX0QpyPo5b8TqCdnNPIXIsBrv5jKql2
	h4mixP4NJ8a+tCQkthX5PcOjXfizpAl8hX2gHkhG8wM/qKC7mC5bNj8/hI9TRMtQg3U2l+V1h1Uah
	r3Ikt7xNG25JkdBvtgudKEDvzTWveXtZmfvHRlzc6Lnkt5DhbpxPggL3gugdhpfR+RvqhDApTta6I
	6Dj4mXDNUq3tJwpG9Tbgzr10aEEHZmI5t/MRpeGZbwCb0NYvuHPW/25PO2kZXzvQ9o8IXor3QO1AH
	oNesfMiwZPIG9OMY86bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRFQ-0002Gk-H7; Thu, 13 Jun 2019 15:02:40 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbREp-0001nh-Ou
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:02:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=51ybDZL5ICqBgHpzWFPJBJAExf58VodpQvGF1SWDfk4=; b=rf6HU56lWgQQMJOR1cHCMRIHOf
 GubzYpxMmL5t25hZxGDb4lCpdHsOPMyVtqck429IRDv4L5Hcgh9A2s7zVHcbxger9C9+toy7hhZzc
 2KDpH/0A4IYYLUD2CTIS4OiW4xY+AXSRL3VgGva1wmH+ZvzaKJfDFm98Sed242RVU49Kc7vwfvn0b
 l0S//uqhSo5qefGspFHa6hig6q6LV/0tcFSIXmAsopEgWABVwnZJzAq0Wczq84+vFmbnjt9weYdSV
 /+MQVGIroJleUiDMeYc5isDKKZI5MRtaVnYfUEO9fWYwfFV5TbnOr3blNObHl9Mx3fYKndyzRdk5R
 kU0hQfCg==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2001:4d48:ad52:3201:222:68ff:fe15:37dd]:45338 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbREf-0003jD-N1; Thu, 13 Jun 2019 16:01:53 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbREd-00006m-Ia; Thu, 13 Jun 2019 16:01:51 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 02/18] drm/armada: use __drm_atomic_helper_plane_reset in
 overlay reset
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbREd-00006m-Ia@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:01:51 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080203_866774_29136FBC 
X-CRM114-Status: GOOD (  10.97  )
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

Use the __drm_atomic_helper_plane_reset() helper in the overlay reset
code to ensure that generic features are correctly reset in future.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_overlay.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_overlay.c b/drivers/gpu/drm/armada/armada_overlay.c
index 8d770641fcc4..f830f53d7adf 100644
--- a/drivers/gpu/drm/armada/armada_overlay.c
+++ b/drivers/gpu/drm/armada/armada_overlay.c
@@ -307,13 +307,10 @@ static void armada_overlay_reset(struct drm_plane *plane)
 	if (plane->state)
 		__drm_atomic_helper_plane_destroy_state(plane->state);
 	kfree(plane->state);
+	plane->state = NULL;
 
 	state = kzalloc(sizeof(*state), GFP_KERNEL);
 	if (state) {
-		state->base.plane = plane;
-		state->base.color_encoding = DEFAULT_ENCODING;
-		state->base.color_range = DRM_COLOR_YCBCR_LIMITED_RANGE;
-		state->base.rotation = DRM_MODE_ROTATE_0;
 		state->colorkey_yr = 0xfefefe00;
 		state->colorkey_ug = 0x01010100;
 		state->colorkey_vb = 0x01010100;
@@ -323,8 +320,10 @@ static void armada_overlay_reset(struct drm_plane *plane)
 		state->brightness = DEFAULT_BRIGHTNESS;
 		state->contrast = DEFAULT_CONTRAST;
 		state->saturation = DEFAULT_SATURATION;
+		__drm_atomic_helper_plane_reset(plane, &state->base);
+		state->base.color_encoding = DEFAULT_ENCODING;
+		state->base.color_range = DRM_COLOR_YCBCR_LIMITED_RANGE;
 	}
-	plane->state = &state->base;
 }
 
 struct drm_plane_state *
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
