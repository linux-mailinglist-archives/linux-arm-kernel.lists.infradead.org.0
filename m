Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D5116A24F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:30:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0TKt+VEyc2m1L7gWS/tVLT/s6+TCbhtfWicMeZpwlYQ=; b=jCy7d/TZjIRsBV
	GLb0137e3NHAu+P7blEj/cBiTkpbwo+ko2ltgZVXqYfVHOPyaH1qhOWhBM+4ICEa97kpjCxa3i6rD
	vvBtt0kCyV5ELlvutuVySTeRnF24O2B3TCNqAt7PazQ3JlPYkdKkO3VNDyK77bIFkefRHUE1ZFTs7
	iv3mTl6ef+25MThO7MIqcudvEZfeI0h5vGXcSmxxev0y8KyBQ8x9FvK4xVjYdeb09ngJLcfLVDTkI
	1fHOKG/d5qk7tWFcOFreH6xGJnIr86OfLkshzGaY6RVClCnNl+wGxu1zzTi2a1DKpW3P2E6tV42Rk
	cJpUUkEcwuEhjcOr80bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A4V-0007Gb-4B; Mon, 24 Feb 2020 09:30:39 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69kJ-0001uC-RD; Mon, 24 Feb 2020 09:09:51 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 311C3640;
 Mon, 24 Feb 2020 04:09:46 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=zRF5ZuWKr/e6D
 YwghNlUC5QVmO4Cx56P+mAHk10mMDw=; b=pRocBaZe76G5nf0FZbQjVNP2Fk93Z
 HdY+HHqS3ffoHUJdQK39xJ826BNMUkV5kG8SN4IOYl+o6VlPKmnvzjqrpFSGQIo+
 ZRez8RiTUAr0Y3fU/zWiLPVeMUE4qHCAvnFYbxVIROWLGNbAOuwnY1lH5xGzG9mp
 flXEHDYA8vuhE1Ya56ySmcKAAHtI1ixr52z5TLa+n/Z7vKdYX0HYSaQKp2y4jtly
 eKPUuaXi3UViIquD7kGItVHaJLGsyzRrpzYXWF9Ea623gZi5S/729mh3SFkBPHBc
 qeUebrsYXzwnX2WTb3+PrWDJ8RUt5sEq29GPR5wV+j7o5pgFjGCKzYuqg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=zRF5ZuWKr/e6DYwghNlUC5QVmO4Cx56P+mAHk10mMDw=; b=uxJRQgOo
 jKmJPywOSqFVGfW6OZC8U1zgwz7CRhHKZu/p7wniY7Hh6xNGiKO4cW58L4ltbYZj
 RouSkQQ9eroRiEU8B7F8vkMa/05Z/6W7fx5ctYwjBqwzSt1NbviEL+MKkEsP4yQ8
 Yk9CVUEiBibdSJWoEJhqvewOkf6JBr2AL9ZT3McZ7agwG9FuzsA0cSldah+wWbCc
 3dQuc1zT7cbIANA2mhETJn0XLC2EP51h5TEocIXDr4wuvN//O+JyD95vIryDgftb
 e4zTveonvqH5kKhZTmaTXXoz+/YH7kgG4Rq8KQROBZD6rL4EZvcjwRgEZ3xDdsma
 mx5u8nNuxOqZqw==
X-ME-Sender: <xms:2ZJTXgLgqMud6483wbayhXgQNbecoEbjf-LwmiRSDdZcEMnRJXET4Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepfedunecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:2ZJTXsFCLicWYL7Kc1NSff0P8O1Gy7Sd4kbmd4JmVPFVOzGyMMlY9Q>
 <xmx:2ZJTXjzvKMRIk4uUpBejSw2xC02qrw-AxZxEVaHxuV_Pp0prCEcWQg>
 <xmx:2ZJTXox0fQ-pATlsDrUh4DKRSv3LesOBL8ppxzGW4SIul9u-T7kcoA>
 <xmx:2ZJTXsL9OW7ZfeOKHZEPW2eZjL_HHkmEAcM9Gp7Z3g7fxdebq4QTKLWtyvs>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 706573060BD1;
 Mon, 24 Feb 2020 04:09:45 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 39/89] drm/vc4: plane: Move additional planes creation to
 driver
Date: Mon, 24 Feb 2020 10:06:41 +0100
Message-Id: <241b4bd3bf572fee8abf231fe4514ce3784de9d5.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010948_224841_A8243493 
X-CRM114-Status: GOOD (  14.66  )
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

So far the plane creation was done when each CRTC was bound, and those
planes were only tied to the CRTC that was registering them.

This causes two main issues:
  - The planes in the vc4 hardware are actually not tied to any CRTC, but
    can be used with every combination

  - More importantly, so far, we allocate 10 planes per CRTC, with 3 CRTCs.
    However, the next generation of hardware will have 5 CRTCs, putting us
    well above the maximum of 32 planes currently allowed by DRM.

This patch is the first one in a series of patches that will take down both
of these issues so that we can support the next generation of hardware
while keeping a good amount of planes.

We start by changing the way the planes are registered to first registering
the primary planes for each CRTC in the CRTC bind function as we used to,
but moving the overlay and cursor creation to the main driver bind
function, after all the CRTCs have been bound.

This will slightly change the ID order of the planes, since the primary
planes of all CRTCs will be first, and then a pattern of 8 overlays, 1
cursor plane for each CRTC.

This shouldn't cause any trouble since the ordering between the planes is
preserved though.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 4 ----
 drivers/gpu/drm/vc4/vc4_drv.c  | 7 +++++++
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 43cfc9ba18ba..fc9977bdf347 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -1189,10 +1189,6 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 	 */
 	drm_crtc_enable_color_mgmt(crtc, 0, true, crtc->gamma_size);
 
-	ret = vc4_plane_create_additional_planes(drm, crtc);
-	if (ret)
-		goto err_destroy_planes;
-
 	vc4_crtc_get_cob_allocation(vc4_crtc);
 
 	CRTC_WRITE(PV_INTEN, 0);
diff --git a/drivers/gpu/drm/vc4/vc4_drv.c b/drivers/gpu/drm/vc4/vc4_drv.c
index 4aa6e4747346..d23e2ba86727 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.c
+++ b/drivers/gpu/drm/vc4/vc4_drv.c
@@ -253,6 +253,7 @@ static int vc4_drm_bind(struct device *dev)
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm;
+	struct drm_crtc *crtc;
 	struct vc4_dev *vc4;
 	struct device_node *node;
 	int ret = 0;
@@ -291,6 +292,12 @@ static int vc4_drm_bind(struct device *dev)
 	if (ret)
 		goto gem_destroy;
 
+	drm_for_each_crtc(crtc, drm) {
+		ret = vc4_plane_create_additional_planes(drm, crtc);
+		if (ret)
+			continue;
+	}
+
 	drm_fb_helper_remove_conflicting_framebuffers(NULL, "vc4drmfb", false);
 
 	ret = vc4_kms_load(drm);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
