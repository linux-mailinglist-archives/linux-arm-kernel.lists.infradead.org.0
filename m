Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B794381E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cyt/pM0beebuUsCxmSIxE0G8qX/4DfrlAusb2STa4ho=; b=tOQJKGSsTmRsH/
	yjjDCTwqsRkLKIjfyGC6asVK8QloAYIUf1NUjhG1nGs88sUkpjO1VbXwaAB5el+I8DVbnxhvkue1g
	8STTQAnhuMrnbe8s29IWMtYxkd2cbmyMUMeeraln9+q8Yzex4onGwxobh/lDE7G/ybLkw3zUjC+R3
	PWcr/ZOfe4iVFJMBWaq2hO91T1rfHg9LMu0oEhEkw8HC07J7f1+FXxwBMbNiKw0+ivyQOQ46GFZYS
	PxAACHWgpbCUNq9cRZIGeHOMOkkVqX3Jg/9Ex8WPue6kSAf78hLvn92ENf004VXjrz60jXRCoQNoj
	hdoonwXo0WmS4QgjRfOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRGf-0003Dx-8v; Thu, 13 Jun 2019 15:03:57 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRFF-0002GE-14
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:02:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=d1PM1t1yva9oj22K8+RAN2TDl69BUdM1fp8Bn/6oAZM=; b=sBTu1WbT7K7arjX18h66T1mY+B
 DMhjo5cC3b1H1MMLooBEUbiIfIoKShW6lHA3KlTwiP9G8fr+cg4PK5cJ3pUcEOJaa2ZZnPq7ch2y8
 yZ8ihyk36kK+72Phiz5v9Mz9jU6lZOMS8UC40iURUiEntnLYpgWTrVbJwWBUlbgMA7CwXcCEGAoaj
 4D4D17bZZ0Knch6kXvWKb/+TwEBnUTxS4X8FieZpGEoxi/I1jxXfQi6K8FR+sFroafPQ62iwVFqz0
 eXo8cAIhYKiDutFSEG+ZxJ7SWNxmD6Lxbb6KbYp4RzoTH8/PvrFXwi1339Y6xjyr7DkjOEa+Outt6
 fNEY0oNw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:44832 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbREv-0003je-RG; Thu, 13 Jun 2019 16:02:09 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbREt-00007E-Kt; Thu, 13 Jun 2019 16:02:07 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 05/18] drm/armada: add missing interlaced support for overlay
 frame
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbREt-00007E-Kt@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:02:07 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080229_260677_5D7B02FE 
X-CRM114-Status: GOOD (  11.27  )
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

Interlaced support has been missing from the overlay frame, which is
sub-optimal.  Add support for this missing feature.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_overlay.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_overlay.c b/drivers/gpu/drm/armada/armada_overlay.c
index 589cdb6a9dae..d8d6e4645c1f 100644
--- a/drivers/gpu/drm/armada/armada_overlay.c
+++ b/drivers/gpu/drm/armada/armada_overlay.c
@@ -106,12 +106,13 @@ static void armada_drm_overlay_plane_atomic_update(struct drm_plane *plane,
 	/* FIXME: overlay on an interlaced display */
 	if (old_state->src.x1 != state->src.x1 ||
 	    old_state->src.y1 != state->src.y1 ||
-	    old_state->fb != state->fb) {
+	    old_state->fb != state->fb ||
+	    state->crtc->state->mode_changed) {
 		const struct drm_format_info *format;
 		u16 src_x, pitches[3];
 		u32 addrs[2][3];
 
-		armada_drm_plane_calc(state, addrs, pitches, false);
+		armada_drm_plane_calc(state, addrs, pitches, dcrtc->interlaced);
 
 		armada_reg_queue_set(regs, idx, addrs[0][0],
 				     LCD_SPU_DMA_START_ADDR_Y0);
@@ -146,6 +147,8 @@ static void armada_drm_overlay_plane_atomic_update(struct drm_plane *plane,
 		src_x = state->src.x1 >> 16;
 		if (format->num_planes == 1 && src_x & (format->hsub - 1))
 			cfg ^= CFG_DMA_MOD(CFG_SWAPUV);
+		if (dcrtc->interlaced)
+			cfg |= CFG_DMA_FTOGGLE;
 		cfg_mask = CFG_CBSH_ENA | CFG_DMAFORMAT |
 			   CFG_DMA_MOD(CFG_SWAPRB | CFG_SWAPUV |
 				       CFG_SWAPYU | CFG_YUV2RGB) |
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
