Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AEF11B7A85
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:48:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=okcvbgseXnd8GAgbBuQHuj+s/VQycTivCTV5BEAK0Y4=; b=qCW/yzARLE3Bff
	ARYO5ut3fSQ6ynZRLDlB0j53G3WB2PORrnPF3tqcWlXwS6IQPHfFPBFrsRe443dorwsbLWunrZAZw
	MVT6Uve3/Faew+cvikE5lXhfCoNo8u1VXvyTSuuca/0M9oVUzAHfhb90gEtFD/C+SP99jRhtuTvSj
	9rRlVdnmIkZaS7DKmX/EAB0KvCuBnHMP5hA8BvmnG3OVOorcZgn9pRYvPUbPC0M+HSD4jpAZfK0yO
	28zLqtQVNlhqxA6ZIfPE4PYfM46+BWM7gxwxexf8tuL94vhRoJWvKYjeYoRT+oOSuWf1sIXPK073N
	1ajpqMn2ggqFoIDhd9BQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0ZD-0006Eq-Nj; Fri, 24 Apr 2020 15:48:39 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0NI-00085W-25; Fri, 24 Apr 2020 15:36:21 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id C90CB1452;
 Fri, 24 Apr 2020 11:36:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=f0IAMoWcdtv9T
 oeZQDoNEujX/ZT2y+zDJGADLph1VQY=; b=ipfEGabvrhI2024ELe4Lok3QgFBIg
 KEFH5qR9xgj4nW0nfdlylZ6dpVsY011OHFOfKl67Ddmo5SxLTmcSuj2LLyz/JaoH
 MPewm+uIE5wbSf9P0gmTNRs4mu8DJ3G0awkrDDcftkuHaO5+zLmd4boyigSUjrKH
 e+iRDgWrlGkTk2O90YflK/nW1dnuM0OQ/+NKQocSTQCjKHts8SciXZSi9Ye2tZ/p
 bVUmgD8HTnnjcfFpUQbZ2NqnaSrR4hoPvbF+VFpanJ8rdR9w8WWA67pPwWTrbmdD
 9a35nAiT1GQ6rBKNRb+mNJxWOGgZQ30LI5keeK8541p55XyvthHZ3aIyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=f0IAMoWcdtv9ToeZQDoNEujX/ZT2y+zDJGADLph1VQY=; b=ZcDr0YO1
 gXPRf8TF31vpmM4B/HLHb1ZgTfJUbbFzYWyL9tOFRW3fUcA6IeVkDXFmybwiNRqu
 fR015RQwdQ9z/EdkOOvtmT1xfvDjQKhuAqh0zGhufWBFgaE27QHOLAXLMyoeonRs
 T2jS4TOvfMcSjZegRfgcyJI3xQT2YzeKi9zXZMU/wHSSv3T+gkcuv/nGoCQ3xPJN
 vtgabDRWh5L32tmFippXK/d1C647gjAzLiWhHgF41RdPOnazoAiovs9s+7FMeFmV
 uNW6cjjZnerH2nGJyOdTsqdWsYR6lT2AArJlSq8MKG/4duQ6PmO9nuW4h5henFsU
 ZoNlZZ+u9mYNRw==
X-ME-Sender: <xms:cgejXtXpzjeKCYiTbLkJowx6vZJrkT5dubcF1q-wMr_gVNBe-9ip6Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeefgeenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:cgejXlwCxMvH2ZmIyVPXP81ZqSXrBunzNI2RHxpf_QNg4dUh0fRdug>
 <xmx:cgejXhdVCLQOYu-ImIMG7mXuyB7zfSvRq9u9pIkIxGx8t-i8en6_Jg>
 <xmx:cgejXmdLA4yq6kcyG9D1QHmPxKoO-vMvfh14j0xYnw-NMsdUywH_Jg>
 <xmx:cgejXiwHRmhW2R52M-YvTV2HokaRzO5jphjFm80mJ2u07d5_7JUXCZREbFI>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2399D328006B;
 Fri, 24 Apr 2020 11:36:18 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 40/91] drm/vc4: plane: Register all the planes at once
Date: Fri, 24 Apr 2020 17:34:21 +0200
Message-Id: <beee55e47021192f983353b5fa3cbe535d56ea96.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083620_178243_6672809B 
X-CRM114-Status: GOOD (  15.28  )
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

Instead of creating planes for each CRTC, we eventually want to create all
the planes for each CRTCs.

In order to make that more convenient, let's iterate on the CRTCs in the
plane creation function instead of its caller.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.c   |  9 ++----
 drivers/gpu/drm/vc4/vc4_drv.h   |  3 +--
 drivers/gpu/drm/vc4/vc4_plane.c | 54 +++++++++++++++++-----------------
 3 files changed, 32 insertions(+), 34 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.c b/drivers/gpu/drm/vc4/vc4_drv.c
index daf07a61a7b5..ed7893ee188a 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.c
+++ b/drivers/gpu/drm/vc4/vc4_drv.c
@@ -250,7 +250,6 @@ static int vc4_drm_bind(struct device *dev)
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm;
-	struct drm_crtc *crtc;
 	struct vc4_dev *vc4;
 	struct device_node *node;
 	int ret = 0;
@@ -289,11 +288,9 @@ static int vc4_drm_bind(struct device *dev)
 	if (ret)
 		goto gem_destroy;
 
-	drm_for_each_crtc(crtc, drm) {
-		ret = vc4_plane_create_additional_planes(drm, crtc);
-		if (ret)
-			continue;
-	}
+	ret = vc4_plane_create_additional_planes(drm);
+	if (ret)
+		goto unbind_all;
 
 	drm_fb_helper_remove_conflicting_framebuffers(NULL, "vc4drmfb", false);
 
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 0875d29a0cee..25466aa9dceb 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -855,8 +855,7 @@ int vc4_kms_load(struct drm_device *dev);
 /* vc4_plane.c */
 struct drm_plane *vc4_plane_init(struct drm_device *dev,
 				 enum drm_plane_type type);
-int vc4_plane_create_additional_planes(struct drm_device *dev,
-				       struct drm_crtc *crtc);
+int vc4_plane_create_additional_planes(struct drm_device *dev);
 u32 vc4_plane_write_dlist(struct drm_plane *plane, u32 __iomem *dlist);
 u32 vc4_plane_dlist_size(const struct drm_plane_state *state);
 void vc4_plane_async_set_fb(struct drm_plane *plane,
diff --git a/drivers/gpu/drm/vc4/vc4_plane.c b/drivers/gpu/drm/vc4/vc4_plane.c
index 89d03605332e..824c188980b0 100644
--- a/drivers/gpu/drm/vc4/vc4_plane.c
+++ b/drivers/gpu/drm/vc4/vc4_plane.c
@@ -1372,39 +1372,41 @@ struct drm_plane *vc4_plane_init(struct drm_device *dev,
 	return plane;
 }
 
-int vc4_plane_create_additional_planes(struct drm_device *drm,
-				       struct drm_crtc *crtc)
+int vc4_plane_create_additional_planes(struct drm_device *drm)
 {
 	struct drm_plane *cursor_plane;
+	struct drm_crtc *crtc;
 	unsigned int i;
 
-	/* Set up some arbitrary number of planes.  We're not limited
-	 * by a set number of physical registers, just the space in
-	 * the HVS (16k) and how small an plane can be (28 bytes).
-	 * However, each plane we set up takes up some memory, and
-	 * increases the cost of looping over planes, which atomic
-	 * modesetting does quite a bit.  As a result, we pick a
-	 * modest number of planes to expose, that should hopefully
-	 * still cover any sane usecase.
-	 */
-	for (i = 0; i < 8; i++) {
-		struct drm_plane *plane =
-			vc4_plane_init(drm, DRM_PLANE_TYPE_OVERLAY);
+	drm_for_each_crtc(crtc, drm) {
+		/* Set up some arbitrary number of planes.  We're not limited
+		 * by a set number of physical registers, just the space in
+		 * the HVS (16k) and how small an plane can be (28 bytes).
+		 * However, each plane we set up takes up some memory, and
+		 * increases the cost of looping over planes, which atomic
+		 * modesetting does quite a bit.  As a result, we pick a
+		 * modest number of planes to expose, that should hopefully
+		 * still cover any sane usecase.
+		 */
+		for (i = 0; i < 8; i++) {
+			struct drm_plane *plane =
+				vc4_plane_init(drm, DRM_PLANE_TYPE_OVERLAY);
 
-		if (IS_ERR(plane))
-			continue;
+			if (IS_ERR(plane))
+				continue;
 
-		plane->possible_crtcs = drm_crtc_mask(crtc);
-	}
+			plane->possible_crtcs = drm_crtc_mask(crtc);
+		}
 
-	/* Set up the legacy cursor after overlay initialization,
-	 * since we overlay planes on the CRTC in the order they were
-	 * initialized.
-	 */
-	cursor_plane = vc4_plane_init(drm, DRM_PLANE_TYPE_CURSOR);
-	if (!IS_ERR(cursor_plane)) {
-		cursor_plane->possible_crtcs = drm_crtc_mask(crtc);
-		crtc->cursor = cursor_plane;
+		/* Set up the legacy cursor after overlay initialization,
+		 * since we overlay planes on the CRTC in the order they were
+		 * initialized.
+		 */
+		cursor_plane = vc4_plane_init(drm, DRM_PLANE_TYPE_CURSOR);
+		if (!IS_ERR(cursor_plane)) {
+			cursor_plane->possible_crtcs = drm_crtc_mask(crtc);
+			crtc->cursor = cursor_plane;
+		}
 	}
 
 	return 0;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
