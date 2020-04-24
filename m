Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 311F51B7AA9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:53:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cg6Vw61sBDOFLLqCuudPwYkfsE5quko/3qlcQeuLMxU=; b=HUvanqTVOnyZRn
	AHO/OYHqQ68G6MBP2rN9g4THU5YP2PaMiyIxGm6gjBHdilmocc58uG4iM3KLIuqYDpmOtxsuxeaV0
	4LZQZ54YuqX/hL3/DB4xbBaduEAYf5zv289FjLeW3lYGjTCLqEcDlXaIptIpPnfQNYEWYN0G0gzrp
	MOd0vPsjzRfldCtJVTParKViJtwLPMgnIETMuQjChoM0e/my7ARBTaVrH0ZnyO0L5qyXd+K1Dlplx
	D7NbdZw0qNGRLGcHaWmRU/9iSUdYr+/fcPaX2hviifl/mOeMwV7TYbb0ZneyqRQGFY6Zlk5bjVj6h
	izZmxXUH/w0Jv0BZCHyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0e4-0004rg-8F; Fri, 24 Apr 2020 15:53:40 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0NE-00081d-52; Fri, 24 Apr 2020 15:36:17 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id B96943E9;
 Fri, 24 Apr 2020 11:36:14 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:15 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=tCu9N/0DYaTKd
 zput/rwIDzoBFeoKGcV0BJL7O264Xg=; b=YWCgyyWceT0BRhd6Rh2BP7yBtD9Bp
 kpyB6QV9+hmIEUhi0uwmeaoSJsaQ+WP9BSTy0qDbY2vtduVNYU/U0CEnVzPcPTvd
 mTvrO6ortu9vEAC6+W3fm+jGbGOyia1JlzE/HJKVolyZfEu2JS2irE8PxroQ51PL
 /2I3AZWQWYhOZsI/sjfnTbkQ3Wn4JQKG7fPAgBkTVuaNaYbp9tI3CQdMO24uwOaO
 C6GsSkcPCcAHFs6Zww4lrGHYhvcsvxIIfgwtsQmTcnE4oypFwI99JdGnpYt29jl2
 xEfyEfHxty6LCGUVH62wcJga7Dtbj5ngC3safWR/tuGoVPnDQaZuTzajg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=tCu9N/0DYaTKdzput/rwIDzoBFeoKGcV0BJL7O264Xg=; b=gk936bFW
 W9bWh9ROpBvjgYOecO3zoZp4NrEcx46upv/tpTCjAsZDJS1IcH9Vj1hmB7VSxMgk
 Fu/PvMM0RHCKk979aFPEtGVAOFrjRroyixKLjKDrD4Q2PMys7hNPWbzw6sB//hg2
 aDcXlarin1e03Vrt7prbkfxrXkhQPG5cOwhrIfHf1yUgJ1qx07pzGDB3F6kFu1cz
 2t2JvHqhcryo9a9DGC2xbbwdQk520mAKhCNdD8FBAvXrqIRSbI8GDh6c8eLPOc9X
 wfd0I+c0DaqUbkIpb1og1xZUMSASvZHDnMxP9VSNj6UZUiBQ8ZP6igh84wmvJ6bh
 8IG054UoyObyLA==
X-ME-Sender: <xms:bgejXor5jYMuocadofo137TMZTxMlae_lR2ELFXMh-MpQyRVTxcheQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvleenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:bgejXhrtE9hmdMbb9aOc_dhh0grJxkzKfpXGLxPRUvVW02gOhCLLNA>
 <xmx:bgejXnEs_pfJg965P6UB9zOs0utwYJ_PMWJjks7pgZsGRgalT679sQ>
 <xmx:bgejXq-L7VTiVSd583uPrjR5yR2AYaJwQGTNSkqDY49zTOIuBKKkZQ>
 <xmx:bgejXuOrRqRNlQnPiDgAiUlGRGLCKePhFRsibysiq9sFhDuqx8XQOQoTUTM>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 04EDF3065CDA;
 Fri, 24 Apr 2020 11:36:13 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 37/91] drm/vc4: plane: Improve LBM usage
Date: Fri, 24 Apr 2020 17:34:18 +0200
Message-Id: <321a0f22068a9f13c792d49e39eedca916a358b2.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083616_335404_FDA91E56 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

From: Dave Stevenson <dave.stevenson@raspberrypi.com>

LBM allocations were always taking the worst case sizing of
max(src_width, dst_width) * 16. This is significantly over
the required sizing, and stops us rendering multiple 4k images
to the screen.

Add some of the additional constraints to more accurately
describe the LBM requirements.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_plane.c | 31 ++++++++++++++++++++-----------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_plane.c b/drivers/gpu/drm/vc4/vc4_plane.c
index 1575c05e3106..602927745f84 100644
--- a/drivers/gpu/drm/vc4/vc4_plane.c
+++ b/drivers/gpu/drm/vc4/vc4_plane.c
@@ -142,9 +142,10 @@ static const struct hvs_format *vc4_get_hvs_format(u32 drm_format)
 	return NULL;
 }
 
-static enum vc4_scaling_mode vc4_get_scaling_mode(u32 src, u32 dst)
+static enum vc4_scaling_mode vc4_get_scaling_mode(u32 src, u32 dst,
+						  bool chroma_vrep)
 {
-	if (dst == src)
+	if (dst == src && !chroma_vrep)
 		return VC4_SCALING_NONE;
 	if (3 * dst >= 2 * src)
 		return VC4_SCALING_PPF;
@@ -369,9 +370,11 @@ static int vc4_plane_setup_clipping_and_scaling(struct drm_plane_state *state)
 		return ret;
 
 	vc4_state->x_scaling[0] = vc4_get_scaling_mode(vc4_state->src_w[0],
-						       vc4_state->crtc_w);
+						       vc4_state->crtc_w,
+						       false);
 	vc4_state->y_scaling[0] = vc4_get_scaling_mode(vc4_state->src_h[0],
-						       vc4_state->crtc_h);
+						       vc4_state->crtc_h,
+						       false);
 
 	vc4_state->is_unity = (vc4_state->x_scaling[0] == VC4_SCALING_NONE &&
 			       vc4_state->y_scaling[0] == VC4_SCALING_NONE);
@@ -384,10 +387,12 @@ static int vc4_plane_setup_clipping_and_scaling(struct drm_plane_state *state)
 
 		vc4_state->x_scaling[1] =
 			vc4_get_scaling_mode(vc4_state->src_w[1],
-					     vc4_state->crtc_w);
+					     vc4_state->crtc_w,
+					     v_subsample == 2);
 		vc4_state->y_scaling[1] =
 			vc4_get_scaling_mode(vc4_state->src_h[1],
-					     vc4_state->crtc_h);
+					     vc4_state->crtc_h,
+					     v_subsample == 2);
 
 		/* YUV conversion requires that horizontal scaling be enabled
 		 * on the UV plane even if vc4_get_scaling_mode() returned
@@ -437,10 +442,7 @@ static void vc4_write_ppf(struct vc4_plane_state *vc4_state, u32 src, u32 dst)
 static u32 vc4_lbm_size(struct drm_plane_state *state)
 {
 	struct vc4_plane_state *vc4_state = to_vc4_plane_state(state);
-	/* This is the worst case number.  One of the two sizes will
-	 * be used depending on the scaling configuration.
-	 */
-	u32 pix_per_line = max(vc4_state->src_w[0], (u32)vc4_state->crtc_w);
+	u32 pix_per_line;
 	u32 lbm;
 
 	/* LBM is not needed when there's no vertical scaling. */
@@ -448,6 +450,11 @@ static u32 vc4_lbm_size(struct drm_plane_state *state)
 	    vc4_state->y_scaling[1] == VC4_SCALING_NONE)
 		return 0;
 
+	if (vc4_state->x_scaling[0] == VC4_SCALING_TPZ)
+		pix_per_line = vc4_state->crtc_w;
+	else
+		pix_per_line = vc4_state->src_w[0];
+
 	if (!vc4_state->is_yuv) {
 		if (vc4_state->y_scaling[0] == VC4_SCALING_TPZ)
 			lbm = pix_per_line * 8;
@@ -583,7 +590,9 @@ static int vc4_plane_allocate_lbm(struct drm_plane_state *state)
 		spin_lock_irqsave(&vc4->hvs->mm_lock, irqflags);
 		ret = drm_mm_insert_node_generic(&vc4->hvs->lbm_mm,
 						 &vc4_state->lbm,
-						 lbm_size, 32, 0, 0);
+						 lbm_size,
+						 vc4->hvs->hvs5 ? 64 : 32,
+						 0, 0);
 		spin_unlock_irqrestore(&vc4->hvs->mm_lock, irqflags);
 
 		if (ret)
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
