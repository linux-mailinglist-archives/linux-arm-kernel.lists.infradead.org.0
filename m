Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A103F1E49B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2iQBub7uN5DMgHjH+hrfC+E8y+6tM2EKLY0QAGBNew=; b=Mw5X5aU4O10mDe
	hk/3qFFWRrstvYRmW4YcaQwXTvdcjqpCF1YxT1nt7ru+1qX+cHMQwmpBaxJWum/1XECbUZk42sQlV
	E5NNOGJ9JbLT4k7TjMcXoNwLWSoJ4K1X2whz2wHwouu/FTtU0S8tpWqA3wKEyEoNLSDEwHhn+oONi
	WsoaU3MLe/crr5QLdkDH8mc2nBxdSXutHFCyxGOqeH7a+gvtt3zNxnIhxeLPtQxJ8Tga9vzp+EG1P
	WGZD0xL9KVWgeXEVvLiDGKmzDxEVshODxjcJkuwliXSj69Sy1nZBL2kWX779ltBscrjmG+JF3pnEf
	yunzoDAsuTvgDljMX+Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdymB-0000LG-Td; Wed, 27 May 2020 16:19:31 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKY-00015f-Q9; Wed, 27 May 2020 15:51:06 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 91AD95820D9;
 Wed, 27 May 2020 11:50:57 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=D6EZ/mN4CP4IO
 PGPy7Hh7z1aDqmHqdqS1Mdb+r5PMq4=; b=Tkb1zYgDW4PQgYNKpdN9++d698Dw7
 qapyGHVOPSIdOXkc8uYWfFEULrIAKVRhHcPitDMhI1hFEiWdA6k1nbnFHiAQe4+4
 OLukYCEIakkm1bdxtN78Ef0JYyUtozpLWTjtH1JBQqpfoFBKowSFs7nBud6j+Zho
 UB5rajWmLGwC/CiJdtP7Eb6lQSwi4SiJv/KpU9sRGECsGtmajcfNEML0dccQc1FL
 +w2ubXsw1TmL1hMjN48EYmhHUNWu335h14gODz/CO52+6jYA8P7oxifsndoPZxYu
 HEhoAKhiEgUFEk3YIFUOPExMilq4kKuMeNmEZytc9wjkV7vwdQ0JFJQVg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=D6EZ/mN4CP4IOPGPy7Hh7z1aDqmHqdqS1Mdb+r5PMq4=; b=vLun1mEc
 1XRVV7uZEpewVf//qOjaFLcri0G5WFn8Td5o7laXAAHIgIBuvjzOL9DGygi2tZoq
 31qkOGva3MKne9oYMf8gwVgEXmu/1WLrHoqA23ZQ+CG0ooipka2Uhu9WDfwh9UqS
 XAnNUnvFZYSpZdlZt6eEOd5cIsyQddR4mfboXXwHfsWuqeKSh4ze4wZsfQhow+Ji
 rqj/pA/JdIxXfGroXakhv3J0jNFtGgIusX0nMp160Ggh4BN3LJNwdbC0R+bamqFu
 8WYT857AYszh4CCm/VxyBV8OMq1kLHYNnJS+V5wiGDMEsD8rMqzVuglCGuF9kJA6
 iLfhKCqONn9A8g==
X-ME-Sender: <xms:YYzOXg1gyJFk3-ewUh_u-3RpWRwcIvIFgVjFz_8B2JAKuhpDu5mrMA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepgeegne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:YYzOXrGvjjIPK6HrhDQYWWLhpjKhfWo4azW-vDNkWs20tSwo3Zbeaw>
 <xmx:YYzOXo4sJiUjIWEQJhwFDBTntFEj5ZN-LMf2egqUNetSIAX0dv6B4w>
 <xmx:YYzOXp34E5ndyy9rei3Q4PDusAKFXrmPwSEYUt4oN5tDl2_-ASntcA>
 <xmx:YYzOXi2IN-Iw2NAkjxrQqE5jCMNqDlnrX-ri-T0bWNUX_0d8od_Mzw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2FBDB30624E4;
 Wed, 27 May 2020 11:50:57 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 063/105] drm/vc4: crtc: Move the CRTC initialisation to a
 separate function
Date: Wed, 27 May 2020 17:48:33 +0200
Message-Id: <bd7312cc1678266d38453924fb9a8bc6e636536f.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085059_112119_5D4B6D18 
X-CRM114-Status: GOOD (  14.87  )
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

The upcoming patches to turn the TXP into a full-blown CRTC will have the
same CRTC initialisation code, so let's move it into a separate, public,
function so that we can reuse it later on.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 89 ++++++++++++++++++++---------------
 drivers/gpu/drm/vc4/vc4_drv.h  |  3 +-
 2 files changed, 55 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index ee4381c144a5..6d7799ff8f87 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -1051,16 +1051,59 @@ static void vc4_set_crtc_possible_masks(struct drm_device *drm,
 	}
 }
 
+int vc4_crtc_init(struct drm_device *drm, struct vc4_crtc *vc4_crtc,
+		  const struct drm_crtc_funcs *crtc_funcs,
+		  const struct drm_crtc_helper_funcs *crtc_helper_funcs)
+{
+	struct vc4_dev *vc4 = to_vc4_dev(drm);
+	struct drm_crtc *crtc = &vc4_crtc->base;
+	struct drm_plane *primary_plane;
+	unsigned int i;
+
+	/* For now, we create just the primary and the legacy cursor
+	 * planes.  We should be able to stack more planes on easily,
+	 * but to do that we would need to compute the bandwidth
+	 * requirement of the plane configuration, and reject ones
+	 * that will take too much.
+	 */
+	primary_plane = vc4_plane_init(drm, DRM_PLANE_TYPE_PRIMARY);
+	if (IS_ERR(primary_plane)) {
+		dev_err(drm->dev, "failed to construct primary plane\n");
+		return PTR_ERR(primary_plane);
+	}
+
+	drm_crtc_init_with_planes(drm, crtc, primary_plane, NULL,
+				  crtc_funcs, NULL);
+	drm_crtc_helper_add(crtc, crtc_helper_funcs);
+
+	if (!vc4->hvs->hvs5) {
+		drm_mode_crtc_set_gamma_size(crtc, ARRAY_SIZE(vc4_crtc->lut_r));
+
+		/* We support CTM, but only for one CRTC at a
+		 * time. It's therefore implemented as private driver
+		 * state in vc4_kms, not here.
+		 */
+		drm_crtc_enable_color_mgmt(crtc, 0, true, crtc->gamma_size);
+	}
+
+	for (i = 0; i < crtc->gamma_size; i++) {
+		vc4_crtc->lut_r[i] = i;
+		vc4_crtc->lut_g[i] = i;
+		vc4_crtc->lut_b[i] = i;
+	}
+
+	return 0;
+}
+
 static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm = dev_get_drvdata(master);
-	struct vc4_dev *vc4 = to_vc4_dev(drm);
 	const struct vc4_pv_data *pv_data;
 	struct vc4_crtc *vc4_crtc;
 	struct drm_crtc *crtc;
-	struct drm_plane *primary_plane, *destroy_plane, *temp;
-	int ret, i;
+	struct drm_plane *destroy_plane, *temp;
+	int ret;
 
 	vc4_crtc = devm_kzalloc(dev, sizeof(*vc4_crtc), GFP_KERNEL);
 	if (!vc4_crtc)
@@ -1081,32 +1124,12 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 	vc4_crtc->regset.regs = crtc_regs;
 	vc4_crtc->regset.nregs = ARRAY_SIZE(crtc_regs);
 
-	/* For now, we create just the primary and the legacy cursor
-	 * planes.  We should be able to stack more planes on easily,
-	 * but to do that we would need to compute the bandwidth
-	 * requirement of the plane configuration, and reject ones
-	 * that will take too much.
-	 */
-	primary_plane = vc4_plane_init(drm, DRM_PLANE_TYPE_PRIMARY);
-	if (IS_ERR(primary_plane)) {
-		dev_err(dev, "failed to construct primary plane\n");
-		ret = PTR_ERR(primary_plane);
-		goto err;
-	}
-
-	drm_crtc_init_with_planes(drm, crtc, primary_plane, NULL,
-				  &vc4_crtc_funcs, NULL);
-	drm_crtc_helper_add(crtc, &vc4_crtc_helper_funcs);
-
-	if (!vc4->hvs->hvs5) {
-		drm_mode_crtc_set_gamma_size(crtc, ARRAY_SIZE(vc4_crtc->lut_r));
+	ret = vc4_crtc_init(drm, vc4_crtc,
+			    &vc4_crtc_funcs, &vc4_crtc_helper_funcs);
+	if (ret)
+		return ret;
 
-		/* We support CTM, but only for one CRTC at a
-		 * time. It's therefore implemented as private driver
-		 * state in vc4_kms, not here.
-		 */
-		drm_crtc_enable_color_mgmt(crtc, 0, true, crtc->gamma_size);
-	}
+	vc4_set_crtc_possible_masks(drm, crtc);
 
 	CRTC_WRITE(PV_INTEN, 0);
 	CRTC_WRITE(PV_INTSTAT, PV_INT_VFP_START);
@@ -1117,14 +1140,6 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 	if (ret)
 		goto err_destroy_planes;
 
-	vc4_set_crtc_possible_masks(drm, crtc);
-
-	for (i = 0; i < crtc->gamma_size; i++) {
-		vc4_crtc->lut_r[i] = i;
-		vc4_crtc->lut_g[i] = i;
-		vc4_crtc->lut_b[i] = i;
-	}
-
 	platform_set_drvdata(pdev, vc4_crtc);
 
 	vc4_debugfs_add_regset32(drm, pv_data->debugfs_name,
@@ -1138,7 +1153,7 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 		if (destroy_plane->possible_crtcs == drm_crtc_mask(crtc))
 		    destroy_plane->funcs->destroy(destroy_plane);
 	}
-err:
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index ed09acbc5660..999841b1edd8 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -817,6 +817,9 @@ void vc4_bo_remove_from_purgeable_pool(struct vc4_bo *bo);
 /* vc4_crtc.c */
 extern struct platform_driver vc4_crtc_driver;
 int vc4_crtc_disable_at_boot(struct drm_crtc *crtc);
+int vc4_crtc_init(struct drm_device *drm, struct vc4_crtc *vc4_crtc,
+		  const struct drm_crtc_funcs *crtc_funcs,
+		  const struct drm_crtc_helper_funcs *crtc_helper_funcs);
 void vc4_crtc_destroy(struct drm_crtc *crtc);
 int vc4_page_flip(struct drm_crtc *crtc,
 		  struct drm_framebuffer *fb,
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
