Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 949C24382D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:04:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3Vai/gaCXLKSx5XvCCSM9LyBcvIpTQpDg2npldves0=; b=NB5rydZua3auKP
	ZYtMqwpxxQjLL9hh3W0uPBMvyebZsf2vxtW0sIBdrgJb0iVZt3ByhBV7YCwntiQQZ2412tAYy3K+E
	w3FJy8AXS52SfZN4ABw2cME4cxxOWMSndUHMJc4oB7HGW2s9T+pJNgGjU2BIlcDKxbPzJ1/H7dmlg
	B0BFe7W5iDJ7qcbi1Emo+SdhgsLbyKSPsm6XuImCQ5KHByN6qq7iBmqNQiOHOmtu/5oXvckO8oV0T
	unMa+jR5ISxFr6HSVzZjQLKI359MtSO4rVEnoeXhmtYVJ0ihgTPVqq6UuIAGmAzpT5REXt2g6Bjhj
	iylaBxTemG5g9Cbn+tIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRGx-0003X1-7e; Thu, 13 Jun 2019 15:04:15 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRFM-0002Lz-Pk
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:02:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qSVsWyvK+cKWzJzuyZpZ5WpnbkdBvj5koIHFQzg5Qa4=; b=eh6MLByycBNJf6sd6jfIdXcJ5p
 Y4r3kDH6ATvLrvqg62zeddcFBhdvfzsWoCqJVEup9GwmIxKZW0bQe8KnfWM1KJHW1uylwg5FdwHk1
 SJ4nLVUybJEGnRcjsWReIPP1LircOLMjrQYCuBipiiNqO7u2RCdnLEaBjpm4vmg2shln4g5VdzNEL
 dSkMk7ZDDl3E+ebOZQrmRW6nFPA/yQJ2e532mq0gQ1E70fRCZ0zmM3HXkbBH1ikd7lJ3a7G/8goVk
 R0fLwU0dRhff6dA9P2VOiiqUVRnVsfouDaZQM/4O1OrJ5oOnyv3yqf3StI1S2miKaX17dC2ld2HtV
 x6WwnDnw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:35404 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRF1-0003jk-CG; Thu, 13 Jun 2019 16:02:15 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbREy-00007L-OE; Thu, 13 Jun 2019 16:02:12 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 06/18] drm/armada: move plane address and pitch calculation to
 atomic_check
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbREy-00007L-OE@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:02:12 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080237_065667_18B2AF04 
X-CRM114-Status: GOOD (  12.79  )
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

Move the plane address and pitch calculations to atomic_check rather
than the update function, so we don't have to probe the interlace
setting for the CRTC while updating the plane.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_overlay.c | 23 ++++++++++-------------
 drivers/gpu/drm/armada/armada_plane.c   | 30 ++++++++++--------------------
 drivers/gpu/drm/armada/armada_plane.h   |  5 +++++
 3 files changed, 25 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_overlay.c b/drivers/gpu/drm/armada/armada_overlay.c
index d8d6e4645c1f..a79d6e940435 100644
--- a/drivers/gpu/drm/armada/armada_overlay.c
+++ b/drivers/gpu/drm/armada/armada_overlay.c
@@ -109,27 +109,24 @@ static void armada_drm_overlay_plane_atomic_update(struct drm_plane *plane,
 	    old_state->fb != state->fb ||
 	    state->crtc->state->mode_changed) {
 		const struct drm_format_info *format;
-		u16 src_x, pitches[3];
-		u32 addrs[2][3];
+		u16 src_x;
 
-		armada_drm_plane_calc(state, addrs, pitches, dcrtc->interlaced);
-
-		armada_reg_queue_set(regs, idx, addrs[0][0],
+		armada_reg_queue_set(regs, idx, armada_addr(state, 0, 0),
 				     LCD_SPU_DMA_START_ADDR_Y0);
-		armada_reg_queue_set(regs, idx, addrs[0][1],
+		armada_reg_queue_set(regs, idx, armada_addr(state, 0, 1),
 				     LCD_SPU_DMA_START_ADDR_U0);
-		armada_reg_queue_set(regs, idx, addrs[0][2],
+		armada_reg_queue_set(regs, idx, armada_addr(state, 0, 2),
 				     LCD_SPU_DMA_START_ADDR_V0);
-		armada_reg_queue_set(regs, idx, addrs[1][0],
+		armada_reg_queue_set(regs, idx, armada_addr(state, 1, 0),
 				     LCD_SPU_DMA_START_ADDR_Y1);
-		armada_reg_queue_set(regs, idx, addrs[1][1],
+		armada_reg_queue_set(regs, idx, armada_addr(state, 1, 1),
 				     LCD_SPU_DMA_START_ADDR_U1);
-		armada_reg_queue_set(regs, idx, addrs[1][2],
+		armada_reg_queue_set(regs, idx, armada_addr(state, 1, 2),
 				     LCD_SPU_DMA_START_ADDR_V1);
 
-		val = pitches[0] << 16 | pitches[0];
+		val = armada_pitch(state, 0) << 16 | armada_pitch(state, 0);
 		armada_reg_queue_set(regs, idx, val, LCD_SPU_DMA_PITCH_YC);
-		val = pitches[1] << 16 | pitches[2];
+		val = armada_pitch(state, 1) << 16 | armada_pitch(state, 2);
 		armada_reg_queue_set(regs, idx, val, LCD_SPU_DMA_PITCH_UV);
 
 		cfg = CFG_DMA_FMT(drm_fb_to_armada_fb(state->fb)->fmt) |
@@ -147,7 +144,7 @@ static void armada_drm_overlay_plane_atomic_update(struct drm_plane *plane,
 		src_x = state->src.x1 >> 16;
 		if (format->num_planes == 1 && src_x & (format->hsub - 1))
 			cfg ^= CFG_DMA_MOD(CFG_SWAPUV);
-		if (dcrtc->interlaced)
+		if (to_armada_plane_state(state)->interlace)
 			cfg |= CFG_DMA_FTOGGLE;
 		cfg_mask = CFG_CBSH_ENA | CFG_DMAFORMAT |
 			   CFG_DMA_MOD(CFG_SWAPRB | CFG_SWAPUV |
diff --git a/drivers/gpu/drm/armada/armada_plane.c b/drivers/gpu/drm/armada/armada_plane.c
index 09218c1d8a4b..45092fc3598e 100644
--- a/drivers/gpu/drm/armada/armada_plane.c
+++ b/drivers/gpu/drm/armada/armada_plane.c
@@ -79,23 +79,6 @@ void armada_drm_plane_calc(struct drm_plane_state *state, u32 addrs[2][3],
 	}
 }
 
-static unsigned armada_drm_crtc_calc_fb(struct drm_plane_state *state,
-	struct armada_regs *regs, bool interlaced)
-{
-	u16 pitches[3];
-	u32 addrs[2][3];
-	unsigned i = 0;
-
-	armada_drm_plane_calc(state, addrs, pitches, interlaced);
-
-	/* write offset, base, and pitch */
-	armada_reg_queue_set(regs, i, addrs[0][0], LCD_CFG_GRA_START_ADDR0);
-	armada_reg_queue_set(regs, i, addrs[1][0], LCD_CFG_GRA_START_ADDR1);
-	armada_reg_queue_mod(regs, i, pitches[0], 0xffff, LCD_CFG_GRA_PITCH);
-
-	return i;
-}
-
 int armada_drm_plane_prepare_fb(struct drm_plane *plane,
 	struct drm_plane_state *state)
 {
@@ -167,6 +150,9 @@ int armada_drm_plane_atomic_check(struct drm_plane *plane,
 	st->dst_hw <<= 16;
 	st->dst_hw |= drm_rect_width(&state->dst) & 0x0000ffff;
 
+	armada_drm_plane_calc(state, st->addrs, st->pitches, interlace);
+	st->interlace = interlace;
+
 	return 0;
 }
 
@@ -213,8 +199,12 @@ static void armada_drm_primary_plane_atomic_update(struct drm_plane *plane,
 	    old_state->src.y1 != state->src.y1 ||
 	    old_state->fb != state->fb ||
 	    state->crtc->state->mode_changed) {
-		idx += armada_drm_crtc_calc_fb(state, regs + idx,
-					       dcrtc->interlaced);
+		armada_reg_queue_set(regs, idx, armada_addr(state, 0, 0),
+				     LCD_CFG_GRA_START_ADDR0);
+		armada_reg_queue_set(regs, idx, armada_addr(state, 1, 0),
+				     LCD_CFG_GRA_START_ADDR1);
+		armada_reg_queue_mod(regs, idx, armada_pitch(state, 0), 0xffff,
+				     LCD_CFG_GRA_PITCH);
 	}
 	if (old_state->fb != state->fb ||
 	    state->crtc->state->mode_changed) {
@@ -224,7 +214,7 @@ static void armada_drm_primary_plane_atomic_update(struct drm_plane *plane,
 			cfg |= CFG_PALETTE_ENA;
 		if (state->visible)
 			cfg |= CFG_GRA_ENA;
-		if (dcrtc->interlaced)
+		if (to_armada_plane_state(state)->interlace)
 			cfg |= CFG_GRA_FTOGGLE;
 		cfg_mask = CFG_GRAFORMAT |
 			   CFG_GRA_MOD(CFG_SWAPRB | CFG_SWAPUV |
diff --git a/drivers/gpu/drm/armada/armada_plane.h b/drivers/gpu/drm/armada/armada_plane.h
index 396c45a4ea5e..2707ec781941 100644
--- a/drivers/gpu/drm/armada/armada_plane.h
+++ b/drivers/gpu/drm/armada/armada_plane.h
@@ -6,6 +6,9 @@ struct armada_plane_state {
 	u32 src_hw;
 	u32 dst_yx;
 	u32 dst_hw;
+	u32 addrs[2][3];
+	u16 pitches[3];
+	bool interlace;
 };
 
 #define to_armada_plane_state(st) \
@@ -13,6 +16,8 @@ struct armada_plane_state {
 #define armada_src_hw(state) to_armada_plane_state(state)->src_hw
 #define armada_dst_yx(state) to_armada_plane_state(state)->dst_yx
 #define armada_dst_hw(state) to_armada_plane_state(state)->dst_hw
+#define armada_addr(state, f, p) to_armada_plane_state(state)->addrs[f][p]
+#define armada_pitch(state, n) to_armada_plane_state(state)->pitches[n]
 
 void armada_drm_plane_calc(struct drm_plane_state *state, u32 addrs[2][3],
 	u16 pitches[3], bool interlaced);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
