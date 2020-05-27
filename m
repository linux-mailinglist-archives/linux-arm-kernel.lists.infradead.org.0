Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D1581E49EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FeIIpa0koINnvHWc339MWFPOfrtDT8oI12uKd1Yztt4=; b=UZVZWg5BnAPcjv
	BOxrETrbUCKBih8yzEh2x23hcowhFiV+gon0NCSgk0bXdOySPhN8z0tdiiKC7M6aRQQSHIQR+CbB/
	lACtYQTo2d6CkbvHykKEw/BMPx5PmbcJFvm47B2XolGdUn2bBELteXrKHbkrCKb8OAQsGgGirtk6S
	l13he2/fdsSlJMwo1kBeABegVUJXi0ilSnIgSQLqERHwFrBwFjGm+fM5VPN7sAuxLPLAH60xVpnF2
	5hC/16FnFhhvZo2OZaJMP5FPEPExAJ8WGMn7s+GDAmMRRifKtxs1or+4ivplp/gTjD4KbDoWmAILO
	w0DVu844mu6NkWgAt20g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyrJ-0006lX-HJ; Wed, 27 May 2020 16:24:49 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKT-000123-SU; Wed, 27 May 2020 15:50:59 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id F21DE5820CD;
 Wed, 27 May 2020 11:50:52 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=IxL7aM4/cF0Eq
 P+78A1SAtbW8PYoMF3heOq6qhP5SA0=; b=Jyt+CZeKZ4VnXxPavwkER2FRucBtS
 8qClaKNzX0NqwNi1he1lRO1gUCgLv5DfJxfehEo7e9bLV2Gpvq9TG3Yfjlw/RuDA
 Xhfd5TcX1nAYyw8cdhUQUZCIyBfgUJ+39GhlkgEDQi+DSRWkbp4WCQQWU5el3l5o
 ++pTDxZNXNVIOB36MT3WhOuFjBuZHmaChIqBFRstoOzvSfNf8vSLH4H8SvaY3eD6
 Kd3mx7LFqUn5u9IhbSO4uKJVjcNKgn1xi1yR0VsAAZxwBeWnnefn/oDPYeel2tiH
 d5HvhXXuFwtHv88jKBWw0p0dwK0sh19BvX1G8iNq/AMcDf8KaldDrcMbA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=IxL7aM4/cF0EqP+78A1SAtbW8PYoMF3heOq6qhP5SA0=; b=E3yqKKg+
 G7y00T9pCmq8/AyCY9xWAPAAd0Dfmi8TSynbCuMAeFbfrvkUm3OjbbUpA4We/EVz
 zHKrWsbyTkw9XjRiPPY4nI9+9m9mhtopLqmvrmW2KB29XxHi2MLUPO2bw/o02gmg
 0gDwFj7e9TV02NjuMzS2IW3ubYsKCXVS9ydV4cUkM6ja0lhWlYLSnYAJxgkCdDly
 eXlQaATyiPRf3fnphL/NWdtbpRNd3K1/8fdFG5Ubhc7L19oQegRYsF4cASJp8Qpd
 yNR5BDw8fyyVY5McDp5+PO7yK3D+5qcyFN7bde2kwrFRPDMHKfNLWn8ABb7IxXHe
 zuL0ZntINGFMag==
X-ME-Sender: <xms:XIzOXo8j2tr2e5rezCqTgMpC8_GL5U7ytuQydgAj6mbU6dslZc5Rig>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepgedtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:XIzOXgu6nTwH7PJDXdPUVUzjbCBllBvlq7eq9VDIzED8JNVsDpJm0Q>
 <xmx:XIzOXuBw0ocyDb2szbE9B3ytAkIG7_DwNYA6Amu7Albhy3rfYev1wg>
 <xmx:XIzOXoe7Znn46joZqlxYtyww0-ptse7AW1IvSfPAFQk_fHoY23_h8A>
 <xmx:XIzOXgfd5f4_85QcN2AnrXonphH_k0dGIAqLU00kwAPCl_87n8z_bQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 945653280067;
 Wed, 27 May 2020 11:50:52 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 060/105] drm/vc4: crtc: Make state functions public
Date: Wed, 27 May 2020 17:48:30 +0200
Message-Id: <8d86964fb69d9d2d681dd3cab914bedd4e24b728.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085054_136748_92927E2A 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 21 ++++++++++-----------
 drivers/gpu/drm/vc4/vc4_drv.h  | 10 ++++++++++
 2 files changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index a577ed8f929f..4df8cc5387a0 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -201,7 +201,7 @@ static bool vc4_crtc_get_scanout_position(struct drm_crtc *crtc,
 	return ret;
 }
 
-static void vc4_crtc_destroy(struct drm_crtc *crtc)
+void vc4_crtc_destroy(struct drm_crtc *crtc)
 {
 	drm_crtc_cleanup(crtc);
 }
@@ -803,11 +803,11 @@ static int vc4_async_page_flip(struct drm_crtc *crtc,
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
@@ -815,7 +815,7 @@ static int vc4_page_flip(struct drm_crtc *crtc,
 		return drm_atomic_helper_page_flip(crtc, fb, event, flags, ctx);
 }
 
-static struct drm_crtc_state *vc4_crtc_duplicate_state(struct drm_crtc *crtc)
+struct drm_crtc_state *vc4_crtc_duplicate_state(struct drm_crtc *crtc)
 {
 	struct vc4_crtc_state *vc4_state, *old_vc4_state;
 
@@ -832,8 +832,8 @@ static struct drm_crtc_state *vc4_crtc_duplicate_state(struct drm_crtc *crtc)
 	return &vc4_state->base;
 }
 
-static void vc4_crtc_destroy_state(struct drm_crtc *crtc,
-				   struct drm_crtc_state *state)
+void vc4_crtc_destroy_state(struct drm_crtc *crtc,
+			    struct drm_crtc_state *state)
 {
 	struct vc4_dev *vc4 = to_vc4_dev(crtc->dev);
 	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(state);
@@ -850,8 +850,7 @@ static void vc4_crtc_destroy_state(struct drm_crtc *crtc,
 	drm_atomic_helper_crtc_destroy_state(crtc, state);
 }
 
-static void
-vc4_crtc_reset(struct drm_crtc *crtc)
+void vc4_crtc_reset(struct drm_crtc *crtc)
 {
 	if (crtc->state)
 		vc4_crtc_destroy_state(crtc, crtc->state);
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 32e9de15262a..da4d2391a4ba 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -798,6 +798,16 @@ void vc4_bo_remove_from_purgeable_pool(struct vc4_bo *bo);
 /* vc4_crtc.c */
 extern struct platform_driver vc4_crtc_driver;
 int vc4_crtc_disable_at_boot(struct drm_crtc *crtc);
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
