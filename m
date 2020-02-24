Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB15C16A24B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:30:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RgeC8MYj/ZHagugQq2yNWebQaQ2OUSNOKDOklDbgjDA=; b=fTXqORuwTUYYTT
	7y+pC4JAK5H9GDXc2x9aAuWx8+Pedjwn85tncVadArY4svi9zSsFV+mOiw2Q+rOLdLqSvpu1CM5pg
	MB5c4Ekp+2mmjL6YpASWlLr87eVHwCl4ax2c6rvGhyfcX+a0QfYtHXH6eXtGIR6S8V5hLTzSIicab
	hbI2NZH3wH7k4QZpj0HQh0yUlLd9ZzNk7asdwUEuYAqSBiYP+cANHAs1Tr2DY2J46KFJsE/Gh9900
	d/kHG39PBhyT31Oz1DG3OAstBQn9NyirvlWwyWcmvojxD9Q3GzfdMAdJCjpAJt/SLfwvl7m1gdZ0U
	azgzWiezyAdREiMxsEnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A41-0005Yf-PV; Mon, 24 Feb 2020 09:30:09 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kJ-0001ta-2r; Mon, 24 Feb 2020 09:09:50 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id B4686642;
 Mon, 24 Feb 2020 04:09:44 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=rwIPW5Rarf5vi
 ZX1mLAZ2WDXchic4euofCpdg0WseoM=; b=OHc5s5PO0n/n5ZT6n+KJde2B40EMi
 fuk2VdePddrCfJ7SBpneKochjTr68MO1B4F9JmOfCd/2ssMdujXYslafGYXnfeGW
 RGN6ZWcSvYIs6UT8cslH/PjdRueWW0MOjalaD92cO+oviTPU3enjLFAPii5959kJ
 eL/Nb9g0CkVe3cf6R6/wQ+y3obqdwfr1wf4O0EccQl1fS8mGD0cgFetcJy/jYbMC
 JP9tgVGsKpfYpak/Tw/B/tbm+ApivPsxPwnJu1Qjr/kFCp/w/w6tBgWqeG5MhEKV
 ILI8DQVioS6RbccIh8vvhrVoc3OKDoLnOi7bZfrLQBt4nZ+nqC4AvfMMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=rwIPW5Rarf5viZX1mLAZ2WDXchic4euofCpdg0WseoM=; b=v7NYCHWE
 w7N9d7xpNsPjJKEV5rM7sJKt0kvvxKZUj3dk1mfUJzjKrmB6R9VLifNX+TjU9x3J
 F1eLyuOnYbLVi/qbMnrWamc8h8XeMHgQkKqugi9OuZG6t83Up66b5mpCwRZyLlab
 lKoPE1bKzB/djvYiGTLzKpoKiMg7FWuxtPUJcI6P0xEmlZOCIs9bgNUGRowiGz9e
 XmPEbApO4D4apaypjlakkyMmIl19PIZWIDRrmHqbs0Iayz/KP+RY3u5ADbxwyzcD
 A4UH+DlLvN+V7MlAgTMfzq8Jr5Bmmy699lY6kcU2BvHL6/XY2HGNFgcfRKgeYLgF
 aOvGNvpJ6Xwusg==
X-ME-Sender: <xms:2JJTXhJvfgm2rdPtjDUtDX1JXKoY6r36WB4LmzFiW0sz9xSUFhNtRw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepfedunecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:2JJTXokoaW1w_gNU65k_xr4DkF9vF0W-KPaYmNVVnfRR6ozioANuCg>
 <xmx:2JJTXtTtFQ19nQe1ImB6G-d826LLcYGMV5TdxU865G757ts-tFjNiQ>
 <xmx:2JJTXrbaeTDWtpshCOUdsJFpTQVmg5u50qCL5Z3pvXjYk10BzaUp_A>
 <xmx:2JJTXlircmIK9wyey68oC21VlcLVr6zqmOm5wJJKLPQUzuYwWiPlpERUGM0>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id F3BBD328005E;
 Mon, 24 Feb 2020 04:09:43 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 38/89] drm/vc4: plane: Move planes creation to its own function
Date: Mon, 24 Feb 2020 10:06:40 +0100
Message-Id: <d00444566d017b4a4c9b20cd013321b60a5f59e6.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010947_584127_454A7BB8 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The planes so far were created as part of the CRTC binding code with
each planes created associated only to one CRTC. However, the hardware
in the vc4 doesn't really have such constraint and can be used with any
CRTC.

In order to rework this, let's first move the overlay and cursor planes
creation to a function of its own.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c  | 33 +++---------------------------
 drivers/gpu/drm/vc4/vc4_drv.h   |  2 ++-
 drivers/gpu/drm/vc4/vc4_plane.c | 38 ++++++++++++++++++++++++++++++++++-
 3 files changed, 44 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 381702b9f057..43cfc9ba18ba 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -1141,7 +1141,7 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 	struct drm_device *drm = dev_get_drvdata(master);
 	struct vc4_crtc *vc4_crtc;
 	struct drm_crtc *crtc;
-	struct drm_plane *primary_plane, *cursor_plane, *destroy_plane, *temp;
+	struct drm_plane *primary_plane, *destroy_plane, *temp;
 	const struct of_device_id *match;
 	int ret, i;
 
@@ -1189,34 +1189,9 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 	 */
 	drm_crtc_enable_color_mgmt(crtc, 0, true, crtc->gamma_size);
 
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
-
-		if (IS_ERR(plane))
-			continue;
-
-		plane->possible_crtcs = drm_crtc_mask(crtc);
-	}
-
-	/* Set up the legacy cursor after overlay initialization,
-	 * since we overlay planes on the CRTC in the order they were
-	 * initialized.
-	 */
-	cursor_plane = vc4_plane_init(drm, DRM_PLANE_TYPE_CURSOR);
-	if (!IS_ERR(cursor_plane)) {
-		cursor_plane->possible_crtcs = drm_crtc_mask(crtc);
-		crtc->cursor = cursor_plane;
-	}
+	ret = vc4_plane_create_additional_planes(drm, crtc);
+	if (ret)
+		goto err_destroy_planes;
 
 	vc4_crtc_get_cob_allocation(vc4_crtc);
 
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 63c05c764942..cc73c06e019d 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -848,6 +848,8 @@ int vc4_kms_load(struct drm_device *dev);
 /* vc4_plane.c */
 struct drm_plane *vc4_plane_init(struct drm_device *dev,
 				 enum drm_plane_type type);
+int vc4_plane_create_additional_planes(struct drm_device *dev,
+				       struct drm_crtc *crtc);
 u32 vc4_plane_write_dlist(struct drm_plane *plane, u32 __iomem *dlist);
 u32 vc4_plane_dlist_size(const struct drm_plane_state *state);
 void vc4_plane_async_set_fb(struct drm_plane *plane,
diff --git a/drivers/gpu/drm/vc4/vc4_plane.c b/drivers/gpu/drm/vc4/vc4_plane.c
index 26e96b15e9b4..e4dab514efef 100644
--- a/drivers/gpu/drm/vc4/vc4_plane.c
+++ b/drivers/gpu/drm/vc4/vc4_plane.c
@@ -1371,3 +1371,41 @@ struct drm_plane *vc4_plane_init(struct drm_device *dev,
 
 	return plane;
 }
+
+int vc4_plane_create_additional_planes(struct drm_device *drm,
+				       struct drm_crtc *crtc)
+{
+	struct drm_plane *cursor_plane;
+	unsigned int i;
+
+	/* Set up some arbitrary number of planes.  We're not limited
+	 * by a set number of physical registers, just the space in
+	 * the HVS (16k) and how small an plane can be (28 bytes).
+	 * However, each plane we set up takes up some memory, and
+	 * increases the cost of looping over planes, which atomic
+	 * modesetting does quite a bit.  As a result, we pick a
+	 * modest number of planes to expose, that should hopefully
+	 * still cover any sane usecase.
+	 */
+	for (i = 0; i < 8; i++) {
+		struct drm_plane *plane =
+			vc4_plane_init(drm, DRM_PLANE_TYPE_OVERLAY);
+
+		if (IS_ERR(plane))
+			continue;
+
+		plane->possible_crtcs = drm_crtc_mask(crtc);
+	}
+
+	/* Set up the legacy cursor after overlay initialization,
+	 * since we overlay planes on the CRTC in the order they were
+	 * initialized.
+	 */
+	cursor_plane = vc4_plane_init(drm, DRM_PLANE_TYPE_CURSOR);
+	if (!IS_ERR(cursor_plane)) {
+		cursor_plane->possible_crtcs = drm_crtc_mask(crtc);
+		crtc->cursor = cursor_plane;
+	}
+
+	return 0;
+}
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
