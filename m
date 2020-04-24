Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8BDF1B7A86
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJ8Ql4kOLPKge7j5tVZaVaSEyla+Zcs/5SnVWQdF1m0=; b=tjUIzCrzlR6WEG
	AOz9KWYBpd4dEe6IgXcT25+g7+27v9E+KHTZT65IaImv/i0DMJSeDJvbyk1CBJMVVJmmhQdpCa+8Q
	rnhgYqhAI3Pp5tzmVXadh9xqSECaKsxvN56qdUG5dzuhK0yh5TO9qHCJ8ugqonoHv/Jp/80DoIUax
	lYGKjYKr26tM/b/A5i0ciKz0tYraFClPQ6kkVHxgIlhve6CtWi5BXsKKBpVTXnppYMgpk9OYzS3bB
	GisEZqwGGSENDx9sl4gmxiH0YPIcnb+Hho3js+08u6ZMI5JRxS+Cv7Q5Iu7PY0BjLXg/2Ov7RYeVZ
	6aHLa5CcGL0+nvkW61GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0ZS-0006VP-KX; Fri, 24 Apr 2020 15:48:54 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0NJ-00086m-G1; Fri, 24 Apr 2020 15:36:23 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 47E811457;
 Fri, 24 Apr 2020 11:36:20 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:21 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=FGHgip5pCgsef
 Z4M/vFInKoncWLsvsxW7FNyZtJgmzk=; b=CmqO2O8i+VWdwlU7GZmLV7QUqF7Qi
 H1uEr6Y3t7rLpOTWaE/imWNHc1zSrAo1LxPOXfgB5YevCRxmkJqjeWByop+fSFYz
 5FUTQ9wHVAZIVyXSOD2pdBKJrj6U0lDDpghWsgveL4G8kO9tjpJKhxxakqbHZ/cp
 hoexvzanYAP0lRmXp6NJ+8r5CVbXV/g8l27XNTlrirnMI9mc+SaT8E0ie/gv/nzZ
 CSF7Wab5C8i+inWTOW95l+GuC9QPHo+G66LfufVjhmIYPykfA5anGT1KZqnXW/vo
 5wPB+d6UEC9QqeVPFcOQQ5Kdn06kraGQtbhkAUOKXuPSqXZKOmSSC/XDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=FGHgip5pCgsefZ4M/vFInKoncWLsvsxW7FNyZtJgmzk=; b=FPVHTavr
 iw1RU+funiiPcK4fBcWP0o/Y6w8mM0a6gD2FvYZWk914IFHUziiArUaBLqGn9V/d
 pdSU5qepokPMbRbJfRFMzP0CGTzyGFQ/9RDj9yB0vXc8yGLyN6VEUekJb2FXPo5F
 eVB8FBzQIhZ4DRl4E1mYYoQebpD5wu/RCorRfwVgYU5dwgAmTzrH6VS43G0B9icS
 b3FVZxIgXlqy2nSIl8e6/4aN+7uc3BIQm1ZKIquc4j8MD0thXFEQgHFEjV1CLmav
 9smszb906rSK9l5xqCBz1xXQbveAEp8poLSczyLUi642KvR2Fg2eRtVSlOsXMmzP
 MkFHwXOzYj9OiA==
X-ME-Sender: <xms:cwejXrB_bJ_voiKPpLa5yNroCo3KoATSRyZF57uHahyfFxHtEaorMg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeefgeenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:cwejXmvWMhmXi1TtCoszF01iseM4zgRYynUz5HS0EmLcIV3VraztYQ>
 <xmx:cwejXnJEOnexdPpyTQBbIbhYlEIXc4alRjU-HSR1bIWZKMoAhv315w>
 <xmx:cwejXoqI197gngZ4rJPzPoXehktQmjcoQPcxx347lgqsdn_PlCjA0A>
 <xmx:cwejXpb417U-jmP4nPAN_Qc-xkTXTMPzzZtQjSYsJwcOjWjErdQGIKex_co>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 867383065D87;
 Fri, 24 Apr 2020 11:36:19 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 41/91] drm/vc4: plane: Create overlays for any CRTC
Date: Fri, 24 Apr 2020 17:34:22 +0200
Message-Id: <66cac7b94354a2cf28fab69a872d1c96a6444716.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083621_600134_BBB4A428 
X-CRM114-Status: GOOD (  12.98  )
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

Now that we have everything in place, we can now register all the overlay
planes that can be assigned to all the CRTCs.

This has two side effects:

  - The number of overlay planes is reduced from 24 to 8. This is temporary
    and will be increased again in the next patch.

  - The ID of the various planes is changed again, and we will now have all
    the primary planes, then all the overlay planes and finally the cursor
    planes. This shouldn't cause any issue since the ordering between
    primary, overlay and cursor planes is preserved.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_plane.c | 35 +++++++++++++++++-----------------
 1 file changed, 18 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_plane.c b/drivers/gpu/drm/vc4/vc4_plane.c
index 824c188980b0..5335123ae2a0 100644
--- a/drivers/gpu/drm/vc4/vc4_plane.c
+++ b/drivers/gpu/drm/vc4/vc4_plane.c
@@ -1378,26 +1378,27 @@ int vc4_plane_create_additional_planes(struct drm_device *drm)
 	struct drm_crtc *crtc;
 	unsigned int i;
 
-	drm_for_each_crtc(crtc, drm) {
-		/* Set up some arbitrary number of planes.  We're not limited
-		 * by a set number of physical registers, just the space in
-		 * the HVS (16k) and how small an plane can be (28 bytes).
-		 * However, each plane we set up takes up some memory, and
-		 * increases the cost of looping over planes, which atomic
-		 * modesetting does quite a bit.  As a result, we pick a
-		 * modest number of planes to expose, that should hopefully
-		 * still cover any sane usecase.
-		 */
-		for (i = 0; i < 8; i++) {
-			struct drm_plane *plane =
-				vc4_plane_init(drm, DRM_PLANE_TYPE_OVERLAY);
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
 
-			if (IS_ERR(plane))
-				continue;
+		if (IS_ERR(plane))
+			continue;
 
-			plane->possible_crtcs = drm_crtc_mask(crtc);
-		}
+		plane->possible_crtcs =
+			GENMASK(drm->mode_config.num_crtc - 1, 0);
+	}
 
+	drm_for_each_crtc(crtc, drm) {
 		/* Set up the legacy cursor after overlay initialization,
 		 * since we overlay planes on the CRTC in the order they were
 		 * initialized.
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
