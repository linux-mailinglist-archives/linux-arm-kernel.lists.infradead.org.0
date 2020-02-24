Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B369F16A252
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:31:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=enUGohQl+d7CXPhx5MQY5fwPQsEU4X/ZQJmGmIy7oR4=; b=OcttKe1AKZ9duG
	1PJnQix4PUu6t2/ZQ0cFjTk7f4cxJpn6sW1VAVlFHt1V8qsp+i/yBUNFTMAunGXRJuFc9TbJpEInz
	5ctbN7Yh6alrBPB80+53bRlkDc2u0R9lj831ban2AaxNW19bkkUB/DGQmXfqZLMPNFHEbdNLsVXpg
	17xFx+3mHlBO2rTWNR52G9xT7vNxu4vEA9BcjpAmEGn773H1VSuS/L6OQfW2+uryVvXhTGyzJXTio
	oFTw2vRQSqzp3WtvUxaawgoZjAPTw73HXq+KWfZvazjJT+w8r6E9bwPDFl41/h4n0MCzl8GWHZJkS
	qw0FABbtbbMBgnR0GXIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A4m-0007U7-Pa; Mon, 24 Feb 2020 09:30:56 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kL-0001vM-CL; Mon, 24 Feb 2020 09:09:51 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 7B090634;
 Mon, 24 Feb 2020 04:09:47 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=m4wde725f8K5y
 XFvDSTKrY7XDcyNDvnnIrk/vniSEWM=; b=TmJDSbGqdO9YUxCcml70ZQhCoAN0y
 O789N8MdmbXo22YCI+t3WcIw+U4EQh00Pgr4WyvQcYGRp7tl3BwLVSAlqKC2Sovf
 MakkZ6uBMFvl3DbD5M6aRdUXLsZouJFjckO9d/k2gwkDRxddpWp/1SN56+veUymM
 fPtl959KkXxAZfxJ3I1SHIDuz7ygmhf9qP4Y09DC6kpZr/oW331ITh3N59G7pO0I
 WqGCB217O2rcVtyQFJE2ShispTG7zbM1hgRfe/YWkJnMGbUMnny50hwSFa7xY5PG
 HF92ADoKHURLNoznGMNoIawyvlKGD7YRxKntwDHbEmE+KVxLBjF34/zZA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=m4wde725f8K5yXFvDSTKrY7XDcyNDvnnIrk/vniSEWM=; b=CSRy0iO5
 tE94nmPGFBvsqzb3NvxmqgRviVr1YS3gzFruWMD7eNiNuocy1jC1s0Npu4agFeDY
 HmI3j+y93eCb4ProtrgapMgHFuZbx1PLXyl5LSxrdR8JBDOc1w8pAf+OEAXhBpyD
 EG4qnk0czYYcy+GXNnv9o+ocQP+fF0oKEqS+dTqLwkQ1N6H62cbIsqwEay++fbJB
 jXSnIUDsYrc0RkCxYxpouchNjrupZ+cjT0O2mH950jCFq0fSUjIZmNNRbsw1ZZHk
 9pjfeT8DMLODZdv5Ftc90sB/zzRCHRyf6clHIF4HigwJoL2Y8lIbv8qt7AX9j0xD
 GgI7lH2UtSYlPw==
X-ME-Sender: <xms:25JTXl55J-XFrKaLGyKL6yaWLFNxYbuZW7S-U-vvWwlHqaH5wciBfw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepfedunecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:25JTXsH2PaFaC4nORTYSOF38kKLsc_0lHiaSdXHV-lJxHWe-VTeU-g>
 <xmx:25JTXgup7Mcw_04_-m97li3Klohs9uQ1kJW3lmUmFRGBBlt5qRcj7w>
 <xmx:25JTXj7eLy866HTyIHaKfCQ6WQcxEcnW9qN0sjnEC3tqW4SmR7UNAw>
 <xmx:25JTXtVflOQN9ifsCMa6hrB033lpX_TnGZUyIQtN7dN0EhnTzz52KWkJfyg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id CEAA4328005A;
 Mon, 24 Feb 2020 04:09:46 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 40/89] drm/vc4: plane: Register all the planes at once
Date: Mon, 24 Feb 2020 10:06:42 +0100
Message-Id: <1ac821d1fde5a1f5aead3ba5c62b35bfa7bf465f.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010949_494739_B78FDFA1 
X-CRM114-Status: GOOD (  16.24  )
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
index d23e2ba86727..2c21c2fe0225 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.c
+++ b/drivers/gpu/drm/vc4/vc4_drv.c
@@ -253,7 +253,6 @@ static int vc4_drm_bind(struct device *dev)
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm;
-	struct drm_crtc *crtc;
 	struct vc4_dev *vc4;
 	struct device_node *node;
 	int ret = 0;
@@ -292,11 +291,9 @@ static int vc4_drm_bind(struct device *dev)
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
index cc73c06e019d..07318badf82c 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -848,8 +848,7 @@ int vc4_kms_load(struct drm_device *dev);
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
index e4dab514efef..1dcb2ccd65bb 100644
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
