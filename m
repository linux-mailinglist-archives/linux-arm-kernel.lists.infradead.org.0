Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EF943805
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:03:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4jLjbwR1OZnvvgHP/w4VJsua2Fhfq7jb8ukaxvJNapI=; b=YQOXRxlP6v5IZW
	pPoQxbf3X49kTtoz6zt6eknro1RKoxtL7IFystnl5k7bYvi8MshE/tu+P1Z4FRVGOelVs0CXRBNgi
	mV1ThGNGKPfE7lVK7tiZ5hNl+myvdh4657QgZ3FgnLpfrc3Ch3v+Llr/3nwyJdDVDaaR7jVPllNHS
	lb5aCBBf+8LXVxLOmjnPlc9pKFFkVH+NmwbO9kQt9YpLkVIR8NDFly7Yo+BjyXISd0yWzlsfw4pbr
	o9eeYxyhKhaYK88xexSITPDr0pk7wsct29l1hw00BKSDAYZFNo29lbU2ioIBhDT8k0jjNVNUUc33D
	dNMc8r3gYs7Da2y5BUcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRFr-0002Wv-4e; Thu, 13 Jun 2019 15:03:07 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbREy-0001sJ-QP
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:02:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=es1CNn+tWsmZv17SU8hF7xFbo9pRVS7V+v87p7NHwu0=; b=NodM215sgrHiN9aQ5MHaOk4Rwa
 11eRGNMhB6KYQLh8NTWbt07DEcOV1NBX2gKi7zonQHqOKCg3ukEQ92IvIZb+9af831MSe8jFuls09
 Xi7afR2o8/5LricWAew7F50ekCJmW1UsKUxUtOWqa/3az0kO95RxQ5IT8etwlx4n6KHlam8Lk67KP
 6p7YU870nj3mVmiI4JfpAO+Z2qP97+yoIwR1ZSEhrYubLhgIPbouWRcrOnE39YFFtWOsw3FOy1sUi
 H7hAp/dnIDUbV1A+rL7fI5qBtArqgZYwa7/uf4Mttzj6bPCg0dPrcrt7/ecLiW6Z75ftGxgcpiNZh
 X36copuA==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:35396 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbREk-0003jJ-P4; Thu, 13 Jun 2019 16:01:58 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbREi-00006t-U3; Thu, 13 Jun 2019 16:01:57 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 03/18] drm/armada: add plane size/location accessors
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbREi-00006t-U3@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:01:56 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080212_943356_00D11EB9 
X-CRM114-Status: GOOD (  11.63  )
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

Add accessors for getting the register values for the plane from the
plane state.  This will allow us to generate the values when validating
the plane rather than when programming, which allows us to fix the
interlace handling without adding lots of additional handling in the
update functions.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_overlay.c | 12 ++++++------
 drivers/gpu/drm/armada/armada_plane.c   | 12 ++++++------
 drivers/gpu/drm/armada/armada_plane.h   |  4 ++++
 3 files changed, 16 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_overlay.c b/drivers/gpu/drm/armada/armada_overlay.c
index f830f53d7adf..8a3d2815cb58 100644
--- a/drivers/gpu/drm/armada/armada_overlay.c
+++ b/drivers/gpu/drm/armada/armada_overlay.c
@@ -94,14 +94,14 @@ static void armada_drm_overlay_plane_atomic_update(struct drm_plane *plane,
 		armada_reg_queue_mod(regs, idx,
 				     0, CFG_PDWN16x66 | CFG_PDWN32x66,
 				     LCD_SPU_SRAM_PARA1);
-	val = armada_rect_hw_fp(&state->src);
-	if (armada_rect_hw_fp(&old_state->src) != val)
+	val = armada_src_hw(state);
+	if (armada_src_hw(old_state) != val)
 		armada_reg_queue_set(regs, idx, val, LCD_SPU_DMA_HPXL_VLN);
-	val = armada_rect_yx(&state->dst);
-	if (armada_rect_yx(&old_state->dst) != val)
+	val = armada_dst_yx(state);
+	if (armada_dst_yx(old_state) != val)
 		armada_reg_queue_set(regs, idx, val, LCD_SPU_DMA_OVSA_HPXL_VLN);
-	val = armada_rect_hw(&state->dst);
-	if (armada_rect_hw(&old_state->dst) != val)
+	val = armada_dst_hw(state);
+	if (armada_dst_hw(old_state) != val)
 		armada_reg_queue_set(regs, idx, val, LCD_SPU_DZM_HPXL_VLN);
 	/* FIXME: overlay on an interlaced display */
 	if (old_state->src.x1 != state->src.x1 ||
diff --git a/drivers/gpu/drm/armada/armada_plane.c b/drivers/gpu/drm/armada/armada_plane.c
index 9f36423dd394..6c098d379ae2 100644
--- a/drivers/gpu/drm/armada/armada_plane.c
+++ b/drivers/gpu/drm/armada/armada_plane.c
@@ -173,14 +173,14 @@ static void armada_drm_primary_plane_atomic_update(struct drm_plane *plane,
 			val |= CFG_PDWN256x24;
 		armada_reg_queue_mod(regs, idx, 0, val, LCD_SPU_SRAM_PARA1);
 	}
-	val = armada_rect_hw_fp(&state->src);
-	if (armada_rect_hw_fp(&old_state->src) != val)
+	val = armada_src_hw(state);
+	if (armada_src_hw(old_state) != val)
 		armada_reg_queue_set(regs, idx, val, LCD_SPU_GRA_HPXL_VLN);
-	val = armada_rect_yx(&state->dst);
-	if (armada_rect_yx(&old_state->dst) != val)
+	val = armada_dst_yx(state);
+	if (armada_dst_yx(old_state) != val)
 		armada_reg_queue_set(regs, idx, val, LCD_SPU_GRA_OVSA_HPXL_VLN);
-	val = armada_rect_hw(&state->dst);
-	if (armada_rect_hw(&old_state->dst) != val)
+	val = armada_dst_hw(state);
+	if (armada_dst_hw(old_state) != val)
 		armada_reg_queue_set(regs, idx, val, LCD_SPU_GZM_HPXL_VLN);
 	if (old_state->src.x1 != state->src.x1 ||
 	    old_state->src.y1 != state->src.y1 ||
diff --git a/drivers/gpu/drm/armada/armada_plane.h b/drivers/gpu/drm/armada/armada_plane.h
index ff4281ba7fad..049c593342eb 100644
--- a/drivers/gpu/drm/armada/armada_plane.h
+++ b/drivers/gpu/drm/armada/armada_plane.h
@@ -1,6 +1,10 @@
 #ifndef ARMADA_PLANE_H
 #define ARMADA_PLANE_H
 
+#define armada_src_hw(state)	armada_rect_hw_fp(&(state)->src)
+#define armada_dst_yx(state)	armada_rect_yx(&(state)->dst)
+#define armada_dst_hw(state)	armada_rect_hw(&(state)->dst)
+
 void armada_drm_plane_calc(struct drm_plane_state *state, u32 addrs[2][3],
 	u16 pitches[3], bool interlaced);
 int armada_drm_plane_prepare_fb(struct drm_plane *plane,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
