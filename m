Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B8D1E49D5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:23:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d8/rkA6xkmIGr8zjjbK5U1pH6YHZWHc0rfep+FUp8rI=; b=PSuGmDcfo+Delf
	lKB0DCZV1tQrHHunqjNSXby5oA1TOWS6JlUH+Z5ck3JnwqRgSdeNvGJhe3boUalcQ7VT0JX+qWLN+
	izxYRqXlLcHq5C0Z9Rm30LknwoUxLrjOpgXMuMqgQYck7EX06KMvq2CbvqGWxNrf88msAuzDjdd1X
	EpeSAbgqdxz5pxRLcRNLYDSdhAk6s+EuZEOQLXLFt+LssynAVTiowR57SkoOoidWp59iKL7aYuVmE
	a5YGRbhlKsiWyI1eGxPrL1TN1bi9vIZ8tdB2FkddB06ohLPUTfHj3uPaShCGsn7diGyoYWS5ausmg
	7VMDj81aryxnvM7OJTSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyq4-0005oF-GR; Wed, 27 May 2020 16:23:32 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKN-0000xi-LA; Wed, 27 May 2020 15:50:49 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id D4E365820B3;
 Wed, 27 May 2020 11:50:46 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Bt8lRxl4j58Jf
 Ps2a5AygXRQeW3N7bjCgRjDpST9xfU=; b=enWpqU5LpSJ3fs2m07iFhnq3jv7ET
 +NE1Sd3+zRcTpaV3G+jgUNiZYtYNrBW0KqE9Bes6vkyxUY+6XiTP5DUJ3I0C0SjA
 d1hl1SQrFYtDZJCMEJSMs1PMhrlXQmoABpLkKpJm8gjdJFs1eTZEQ5NtGe/8DKLm
 L9BOdKYdykev6BWmVOLK4/SWMXoJz1otgyaVE8AzqbjcSeKfA18qFJfVXQzen6aF
 nadWz7rR04dfZdm56rIIb+JdvJJAGdQ87VnUkGokiBDDw5oEfg3sSy92fISnHrr5
 4t8r6eU6u5UUeSIoBtmfHWJG8/iwWdI+wnz2b7vd3cqai3Fwy2KJ3NIzQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Bt8lRxl4j58JfPs2a5AygXRQeW3N7bjCgRjDpST9xfU=; b=CkXK/ozQ
 hRZYyq5lmmW4d01vg2QSonAM21yQ38fXu2mUdofKeT858otn3bbWlIxgWKCZ40dX
 Lta1xSeah/bzrLUangEn4YMmBe/syrt3BsOVZClgTIUoTBS7WTOpscWyDKD3wZYT
 H72rhke10CrhJIalA8a5qIPRDLOFpknqJRO3Sz2sCEkjOfLgR10uHJvZeUL1Qg1A
 TaitZong0i0HXxq6yl6kZnKw5gaVi0B4oIadTBLHkjoNYNqqGpc59M+FtL40Tqaf
 1vGaqn702P8yoZ0XpL/LUIpBO9I7R/jfAZh9TAIffqXvEmtQ/tn3R2DgbWq20lwK
 2WXipWmyihkrqg==
X-ME-Sender: <xms:VozOXu-49Xc_B7a8JJxYWnEa_9_6qLsTJGqJdbkSmHuhCkUn1rM-iw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeeine
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:VozOXuuTEN7kF5TjtebZUHD6hxJIE7ZncjVNyVc65Enbh_BY3osvkw>
 <xmx:VozOXkB1-I_6Mf17CRlmJ-OdVyV2SPVAgMZjkgJwi2MdxLWJZPMniQ>
 <xmx:VozOXmfYBGLvbvt_M_ED9VCAPmC30ARXg4v2ZghfbfmiwUpj-T3vnw>
 <xmx:VozOXufuQpxWAYEo085XcXcPHWjCIcW1jfUupRWz1EHfpJt8vSLbyA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 759D83280059;
 Wed, 27 May 2020 11:50:46 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 056/105] drm/vc4: crtc: Move the CRTC disable out
Date: Wed, 27 May 2020 17:48:26 +0200
Message-Id: <601527fea6bb226abd088a864e74b25368218e87.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085047_979890_8328CD64 
X-CRM114-Status: UNSURE (   9.97  )
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

We'll need to reuse the part that disables the HVS and PixelValve during
boot too, so let's create a separate function.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 34 ++++++++++++++++++++++------------
 1 file changed, 22 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index ecb3431470dd..3d2a31cad7fa 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -382,20 +382,14 @@ static void require_hvs_enabled(struct drm_device *dev)
 		     SCALER_DISPCTRL_ENABLE);
 }
 
-static void vc4_crtc_atomic_disable(struct drm_crtc *crtc,
-				    struct drm_crtc_state *old_state)
+static int vc4_crtc_disable(struct drm_crtc *crtc, unsigned int channel)
 {
-	struct drm_device *dev = crtc->dev;
-	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 	struct drm_encoder *encoder = vc4_get_crtc_encoder(crtc);
 	struct vc4_encoder *vc4_encoder = to_vc4_encoder(encoder);
+	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
+	struct drm_device *dev = crtc->dev;
 	int ret;
 
-	require_hvs_enabled(dev);
-
-	/* Disable vblank irq handling before crtc is disabled. */
-	drm_crtc_vblank_off(crtc);
-
 	CRTC_WRITE(PV_V_CONTROL,
 		   CRTC_READ(PV_V_CONTROL) & ~PV_VCONTROL_VIDEN);
 	ret = wait_for(!(CRTC_READ(PV_V_CONTROL) & PV_VCONTROL_VIDEN), 1);
@@ -403,15 +397,31 @@ static void vc4_crtc_atomic_disable(struct drm_crtc *crtc,
 
 	mdelay(20);
 
-	if (vc4_encoder->post_crtc_disable)
+	if (vc4_encoder && vc4_encoder->post_crtc_disable)
 		vc4_encoder->post_crtc_disable(encoder);
 
 	vc4_crtc_pixelvalve_reset(crtc);
-	vc4_hvs_atomic_disable(crtc, old_state);
+	vc4_hvs_stop_channel(dev, channel);
 
-	if (vc4_encoder->post_crtc_powerdown)
+	if (vc4_encoder && vc4_encoder->post_crtc_powerdown)
 		vc4_encoder->post_crtc_powerdown(encoder);
 
+	return 0;
+}
+
+static void vc4_crtc_atomic_disable(struct drm_crtc *crtc,
+				    struct drm_crtc_state *old_state)
+{
+	struct vc4_crtc_state *old_vc4_state = to_vc4_crtc_state(old_state);
+	struct drm_device *dev = crtc->dev;
+
+	require_hvs_enabled(dev);
+
+	/* Disable vblank irq handling before crtc is disabled. */
+	drm_crtc_vblank_off(crtc);
+
+	vc4_crtc_disable(crtc, old_vc4_state->assigned_channel);
+
 	/*
 	 * Make sure we issue a vblank event after disabling the CRTC if
 	 * someone was waiting it.
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
