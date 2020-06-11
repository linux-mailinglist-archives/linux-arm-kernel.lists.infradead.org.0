Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 408831F6926
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zn97XCOf0nCBUvxBqrjf9u1ZRWSzEbb7d47acMSj4gQ=; b=q/X55Zjc0UyKk3
	rlXM/8/DDbBTq1QI9qHjYK/DI3n5oD13AmlgPCM0QV4SYO9rCZgkof1VGHdyh+GkjBSJf0MvFAuSD
	R34l4QA99Wqp9BMeSSm4IoPalCG2+xfVCz+84KwPgcjoyySCOCx5FAo8547sXWUSFs4GfpWQWDXHc
	tz2ffaqoTDbA+Ha7gBKLcmiD4tweF6g+eni5s/Nhzi8+N8ya+VBhxTL6JwyxgURkG8SuoOKvnweCN
	4jpfD1wxRFAFrbKsVnVv6LIEbu2enMwXcWvZ2wVF2/fKDuDd5zXOshsb5eNUCZ5IFnwjueuK0VRBs
	JFF6MguBGYKaKmMPWDOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNRK-0003Ru-Od; Thu, 11 Jun 2020 13:40:18 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNPn-0002TH-SM; Thu, 11 Jun 2020 13:38:45 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 341CF5801DA;
 Thu, 11 Jun 2020 09:38:43 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 09:38:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=KzjF/zYfZPYHT
 8af9UYnaX06cbgELFVBWlG/eyDAYlI=; b=QWcutVPMftmUFObhmTNdV2zbQ2pF6
 0UBcPIAyQ5A21IaHryKrVlHK3AYTA89PMzrtQDv5qYJ12Ef5zOuzre4iLoy8hlZt
 AeAhXsyW/arUUzF+gSeipY1nf/SzgDIlfHGxhI5V37Ebco/AIy7vpX1rsNtcvqNf
 ljsqkll9DDld3lZ+0m/VcXKDsMjaXRZMctY5idpiKE0lYK6IvM5Fn5oJ67EUW72K
 7ROC9P2wUZYJC9ucRCHpcv/0Nzjn337OI4lAgeclV1AeaLE3qbhHIGEIxVVUNLZR
 SUD4Ei8JnPppWFYB5wsAMdvX1L1HjkXf1SWprtU9/WvJbltbGqci01sxQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=KzjF/zYfZPYHT8af9UYnaX06cbgELFVBWlG/eyDAYlI=; b=Rbqjyqcv
 2MrmhnyWo3gGP0vUmDdDl13m9If0rQ7XYs8thsfMHRZHCPzgrTPIhmnYU9fldw3/
 DwvMkp3PxLToUCH1VdmrLRLF0nZ70sX/yp51ccJ/hG1YwBoSJ/nFEqsN7hI1772q
 xvVyWVxGciOTOticCh17hiahZi7axazGgHNHXa8EkdiyRZS0Ruo2TLt/hsrsL5VP
 YsE/+W+Ch6dNZYJS1WL2vdpnzocI2QPrvU7MbXFUCMpHr7v7WFwOItFKLYhkayeo
 FHwQxW4GcxdBv51u0IbRzOFVL8/hSRBNmSHx278DRgk33SxQmnNrSPykBsJUbE3u
 E2UpurNSpjqGiQ==
X-ME-Sender: <xms:4zPiXh7ppYOP-V_Cf3rxRbLqbWffD7fMJUr727B8jZPZ0ZJBih7F3A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehledggeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:4zPiXu5Rs1ASeJO2_aRzLFpAm4tv2b2_AQ5T-fgjEY_5GvoE4Z3WQA>
 <xmx:4zPiXocOvlqWJBZhiipCyUQkv7eDzPKa3wEBzsoaVsJ-bDgNICDrIQ>
 <xmx:4zPiXqLlUB_EXNPozuFtDQOhOOJAhFe4y4UvcQ1T7NicOBaYvMneCw>
 <xmx:4zPiXqozbTb0YXVpJIPpL2SzTfs9Dh30xZIHUqtOORjEXD0ZuRAdAw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 55005328023A;
 Thu, 11 Jun 2020 09:37:04 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v4 3/9] drm/vc4: crtc: Make state functions public
Date: Thu, 11 Jun 2020 15:36:48 +0200
Message-Id: <658f40aa01d7a45cbf6feebfc3dc6549f100d110.1591882579.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.c33f5fd8b1b2703081f25398eb879937c9f7ce0b.1591882579.git-series.maxime@cerno.tech>
References: <cover.c33f5fd8b1b2703081f25398eb879937c9f7ce0b.1591882579.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_063844_062443_12BEB22C 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.229 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We'll need the CRTC state related functions to be exported so that we can
reuse them for the TXP.

Reviewed-by: Eric Anholt <eric@anholt.net>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 21 ++++++++++-----------
 drivers/gpu/drm/vc4/vc4_drv.h  | 10 ++++++++++
 2 files changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 879161841628..6e71bc13e339 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -184,7 +184,7 @@ static bool vc4_crtc_get_scanout_position(struct drm_crtc *crtc,
 	return ret;
 }
 
-static void vc4_crtc_destroy(struct drm_crtc *crtc)
+void vc4_crtc_destroy(struct drm_crtc *crtc)
 {
 	drm_crtc_cleanup(crtc);
 }
@@ -698,11 +698,11 @@ static int vc4_async_page_flip(struct drm_crtc *crtc,
 	return 0;
 }
 
-static int vc4_page_flip(struct drm_crtc *crtc,
-			 struct drm_framebuffer *fb,
-			 struct drm_pending_vblank_event *event,
-			 uint32_t flags,
-			 struct drm_modeset_acquire_ctx *ctx)
+int vc4_page_flip(struct drm_crtc *crtc,
+		  struct drm_framebuffer *fb,
+		  struct drm_pending_vblank_event *event,
+		  uint32_t flags,
+		  struct drm_modeset_acquire_ctx *ctx)
 {
 	if (flags & DRM_MODE_PAGE_FLIP_ASYNC)
 		return vc4_async_page_flip(crtc, fb, event, flags);
@@ -710,7 +710,7 @@ static int vc4_page_flip(struct drm_crtc *crtc,
 		return drm_atomic_helper_page_flip(crtc, fb, event, flags, ctx);
 }
 
-static struct drm_crtc_state *vc4_crtc_duplicate_state(struct drm_crtc *crtc)
+struct drm_crtc_state *vc4_crtc_duplicate_state(struct drm_crtc *crtc)
 {
 	struct vc4_crtc_state *vc4_state, *old_vc4_state;
 
@@ -726,8 +726,8 @@ static struct drm_crtc_state *vc4_crtc_duplicate_state(struct drm_crtc *crtc)
 	return &vc4_state->base;
 }
 
-static void vc4_crtc_destroy_state(struct drm_crtc *crtc,
-				   struct drm_crtc_state *state)
+void vc4_crtc_destroy_state(struct drm_crtc *crtc,
+			    struct drm_crtc_state *state)
 {
 	struct vc4_dev *vc4 = to_vc4_dev(crtc->dev);
 	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(state);
@@ -744,8 +744,7 @@ static void vc4_crtc_destroy_state(struct drm_crtc *crtc,
 	drm_atomic_helper_crtc_destroy_state(crtc, state);
 }
 
-static void
-vc4_crtc_reset(struct drm_crtc *crtc)
+void vc4_crtc_reset(struct drm_crtc *crtc)
 {
 	if (crtc->state)
 		vc4_crtc_destroy_state(crtc, crtc->state);
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 7912445dffe5..c4873ae84231 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -775,6 +775,16 @@ void vc4_bo_remove_from_purgeable_pool(struct vc4_bo *bo);
 
 /* vc4_crtc.c */
 extern struct platform_driver vc4_crtc_driver;
+void vc4_crtc_destroy(struct drm_crtc *crtc);
+int vc4_page_flip(struct drm_crtc *crtc,
+		  struct drm_framebuffer *fb,
+		  struct drm_pending_vblank_event *event,
+		  uint32_t flags,
+		  struct drm_modeset_acquire_ctx *ctx);
+struct drm_crtc_state *vc4_crtc_duplicate_state(struct drm_crtc *crtc);
+void vc4_crtc_destroy_state(struct drm_crtc *crtc,
+			    struct drm_crtc_state *state);
+void vc4_crtc_reset(struct drm_crtc *crtc);
 void vc4_crtc_handle_vblank(struct vc4_crtc *crtc);
 void vc4_crtc_txp_armed(struct drm_crtc_state *state);
 void vc4_crtc_get_margins(struct drm_crtc_state *state,
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
