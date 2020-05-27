Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AC71E493B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8W0FVnFRsllH2ay6xmtW5pkJEbMO0Gaugx35xJ6qvB4=; b=CrwYo+54vn1ZD4
	pOURMd9YfIJtSZzMfpBWhSf98EhEj0cuvd7mRGi5zHUnUlXALTUhCEjYmGCNqRK63VozKmE6zJAJ/
	5QexKTNM5X92peEvQaORtrZXaniUndTST4vFKlnT8OXS4tWgb7KCl76N3RSel4XCHfOTMJu0rfrbq
	etqPccK1dr7AtPlalaFmYcsSusYvpJCc10jwTlLff9iImjy4Hhq1I9S2ChnyTZC1as6AHS9Frl0Mh
	OgTyanpGgObhG4t6MvJqYgMhETh309eaFF7UJNCgvvZB2Gyw8dh97XvpGsR+2bXTMg5NyByif1FCp
	5k21rBo1olZAcPpPBDPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyYt-0001fi-MX; Wed, 27 May 2020 16:05:47 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJN-0006GS-Vu; Wed, 27 May 2020 15:49:52 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 34431582026;
 Wed, 27 May 2020 11:49:45 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=oSQosAw4Q7vGc
 L01pDAaCeuv0svJvci7XNfnDxhY4go=; b=wD9Cp1AyP9VKPrrwQzGwKUXpxp/l5
 czNXVKIztc5CQZ6FJOuNMqm/QKv/RvS462MsxJl3tYhhGKGCcHJ0UsJAwWyGrdqX
 vYElxJafEcu1iTG3nDRkvMMdtzYYvlj1VFf3viC+aqybv5/sp/XD/IdMOrOl97e0
 b6/Z1NhqKooplUd/W3GfRIMH4kJZDgjO/dSMtKDQZHlfrI2quuKa1PV8M6lZUgTq
 FXFCBdGFQ2kJSUCoc6kw4+U1yCKaYDNywv3pVItPURxFdnmsBsvlhFW3Oe4zfS8h
 35rkOIx8snehUrBi2Gy2DnIGPFDva2RpDBFx5uV7difcuSgQPWYic8vhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=oSQosAw4Q7vGcL01pDAaCeuv0svJvci7XNfnDxhY4go=; b=Nh5U/pBB
 R3zjrWJYZTF0l7hNzolnuMDFOO/hm4ZN36giX965khZbgejIMaYsJcS/o4sVZjRc
 RmI3PqOuBNQIpEowA5/Xm6lmvOfh3A5cZfHWMdxv202776iBjR4exEA/OilQjZiq
 6jmdhNv+i11nz0ESshWdLUpUKV5/32kUfwZTW66PGoo4gCrMLpmGfyOmU2BPbAPj
 ibtGrNYS+EXRwRuOq97rxHxE8adv+ATY9gbnwQEZCv5GlCKC+lWmmqtMwg3Mgzva
 Wuf/hNMA/6U2PXjFYNTXEtdUF7IW26xs2r/VEnzS4UFcWf2K5IwPWnhvseE2jwk7
 x9GldzGz/o8V1Q==
X-ME-Sender: <xms:GYzOXpEa_ha4FB68IYCP0Tgu1DjrkdZeD9novkATm_aMrfMGTErg-A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:GYzOXuWxsZnGFtFVSgXxH6buVGTRnYqUfs2pKMDTjMfFg7BkR6ePsQ>
 <xmx:GYzOXrLU-KLhqMrcQhyN-9TUgFQDrhpcw9ElmMQd4olRcY8-pBKv6w>
 <xmx:GYzOXvHnBaiSety1cAsTpdpx1yC6uKi1gr0xROolZmxofzugDK_skQ>
 <xmx:GYzOXmF_r9ejAtSydrFuWhZQLqirb8uEpUhv7JjdjcH8gYj-HuZX8w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C663C3280064;
 Wed, 27 May 2020 11:49:44 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 018/105] drm/vc4: plane: Move additional planes creation to
 driver
Date: Wed, 27 May 2020 17:47:48 +0200
Message-Id: <0b85a3fdb20bb4ff85fb62cabd082d5a65e2730b.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084946_257230_545F9A11 
X-CRM114-Status: GOOD (  14.29  )
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
index 29c72c322c6b..2131164779dd 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -1192,10 +1192,6 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 	 */
 	drm_crtc_enable_color_mgmt(crtc, 0, true, crtc->gamma_size);
 
-	ret = vc4_plane_create_additional_planes(drm, crtc);
-	if (ret)
-		goto err_destroy_planes;
-
 	vc4_crtc_get_cob_allocation(vc4_crtc);
 
 	CRTC_WRITE(PV_INTEN, 0);
diff --git a/drivers/gpu/drm/vc4/vc4_drv.c b/drivers/gpu/drm/vc4/vc4_drv.c
index d7f554a6f0ed..daf07a61a7b5 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.c
+++ b/drivers/gpu/drm/vc4/vc4_drv.c
@@ -250,6 +250,7 @@ static int vc4_drm_bind(struct device *dev)
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm;
+	struct drm_crtc *crtc;
 	struct vc4_dev *vc4;
 	struct device_node *node;
 	int ret = 0;
@@ -288,6 +289,12 @@ static int vc4_drm_bind(struct device *dev)
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
