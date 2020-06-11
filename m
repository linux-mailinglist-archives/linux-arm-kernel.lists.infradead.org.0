Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD061F6935
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 15:41:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hgZRAgfHdOi3it4Oh05k1HDK2paYUPPaclyZ5acdWCY=; b=Cz7kbJ2lBn2Sut
	dfV+gKavCrszB06ZOVaSE/mZKrc5NYkKEhWe+avBaPxOEVb8M7Y+/+/RUuaDGCHqUzWas+vXVWSRg
	WsSPxpLDAuxDuq4BC16dJoyELYdfmYEeKsGc168X/sF/m2J0pOnYOfyZfxk2Q+521MQD8+i9IYGW+
	UFZbILWeI+rteoVCaKtpJ9O2yM0kGAqd2TLRIlog8UMZUEOpE/eeDcr2YKG2OJWI6ESzuubjBOKkv
	2Kw87Pxnqco4o4cxF/fYvG2P4DcrQEq5nlO6XVV5luZN0j47AaEJ5XqMVpNc3DGJSiuY/+B3P1wLJ
	cd2APggBH3SDH2ijVCHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjNSR-0006rr-0I; Thu, 11 Jun 2020 13:41:27 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjNPo-0002Tb-Fe; Thu, 11 Jun 2020 13:38:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id B1CC95801C2;
 Thu, 11 Jun 2020 09:38:43 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 09:38:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=pjTOsRB0c8xAq
 8lcg3XpEfDceSMrV4Koh55SgsCuCck=; b=Bs2//w22o70zPqzeud1e57ojlxetl
 m/GhpvtwE3wuCa7ELBCMO8BqiG0nayFwYKC93IfhnajNGuf1LZFmk2ojehSLVTWH
 eExR94WIqMb8ve6I+564C4G33hWFQf5WVDeKXbf6d4kbyHyhajrtcif1P+ZX6PeN
 z1Axs+yAeXXp35o3u1tGcrrfRUXaGlVPbkIqlywqDxcX498LQhhBAIZ90rClMbdI
 6KUygQouDCCGUY4dPJdAxIXumeHwTydceRdiUq6F7YrvFMV42ZoZ/FtlBK+RtAhV
 v4QggF2J8UuD5Fk0QT29XGX/zAiFYyoxsbMmGn5EwySn+4G1nVeAuu2WQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=pjTOsRB0c8xAq8lcg3XpEfDceSMrV4Koh55SgsCuCck=; b=Kjo/KdLs
 0xk/ZRDgm2n/VzDw3AMm4YtvXhygHtoNWUMl1U9flT3HuEB+VjAAEPhI38+9sLV8
 iyqaTCLOPw8hr7z24ME9tMHgX2100H5y9dKdfetEeBFBujkw5Uyh2+p38zFUcqNj
 EXZwnun18pndIV7DFGuoEvPCttW2NE1kDFnG/BGtVn+7QfPiLiZBhr+znBO7HHbD
 PZ64R/7BwmOU81l3ZynYT2I6OIQmaA7L20/MB/0huslhVxRbF8KC2i4aoxTZIdkU
 KpqTGfyUsXZFd6vrLGW2BnSjqkGNmxLHxOhY+JQeh5ssiU4ndyiO2olhRaks7DDN
 ET/GQkmph3+J7A==
X-ME-Sender: <xms:4zPiXtwCM2MrvScSbHWdtmpDdi73Ixa_gbJQi-ChxMXsiKBx0bnB_g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehledggeduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:4zPiXtT7D8Qf9V-BF9jqW_Mv5MY_iJoRaMu1gOT8I5oYxLQ7xWXrcQ>
 <xmx:4zPiXnUJ380kT5P5YnwFgjUmduLMmoCUJtETae_2NilrADcZi6a0Jg>
 <xmx:4zPiXviQNX09VUQapM5R_tW90sNCO8ygs6Nony9SYsvSA33zdEsmBQ>
 <xmx:4zPiXhAjgHY0MNVcslcIUvPVwmBAh5kLGbH9-F1wmZxV9dMg351Emw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 79D8432801BD;
 Thu, 11 Jun 2020 09:37:07 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v4 5/9] drm/vc4: crtc: Only access the PixelValve registers if
 we have to
Date: Thu, 11 Jun 2020 15:36:50 +0200
Message-Id: <b55e31869304c748920c261eba87b3275dbeb297.1591882579.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.c33f5fd8b1b2703081f25398eb879937c9f7ce0b.1591882579.git-series.maxime@cerno.tech>
References: <cover.c33f5fd8b1b2703081f25398eb879937c9f7ce0b.1591882579.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_063844_727732_661AC1EE 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.229 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The CRTC hooks are called both for the TXP and the pixelvalve, yet some
will read / write the registers as if the device was a pixelvalve, which
won't really work.

Let's make sure we only access those registers if we are running on a
PixelValve.

Reviewed-by: Eric Anholt <eric@anholt.net>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 6f1a1062db8f..49c9954d3e00 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -357,6 +357,7 @@ static void require_hvs_enabled(struct drm_device *dev)
 static void vc4_crtc_atomic_disable(struct drm_crtc *crtc,
 				    struct drm_crtc_state *old_state)
 {
+	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
 	struct drm_device *dev = crtc->dev;
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
 	int ret;
@@ -366,10 +367,12 @@ static void vc4_crtc_atomic_disable(struct drm_crtc *crtc,
 	/* Disable vblank irq handling before crtc is disabled. */
 	drm_crtc_vblank_off(crtc);
 
-	CRTC_WRITE(PV_V_CONTROL,
-		   CRTC_READ(PV_V_CONTROL) & ~PV_VCONTROL_VIDEN);
-	ret = wait_for(!(CRTC_READ(PV_V_CONTROL) & PV_VCONTROL_VIDEN), 1);
-	WARN_ONCE(ret, "Timeout waiting for !PV_VCONTROL_VIDEN\n");
+	if (!vc4_state->feed_txp) {
+		CRTC_WRITE(PV_V_CONTROL,
+			   CRTC_READ(PV_V_CONTROL) & ~PV_VCONTROL_VIDEN);
+		ret = wait_for(!(CRTC_READ(PV_V_CONTROL) & PV_VCONTROL_VIDEN), 1);
+		WARN_ONCE(ret, "Timeout waiting for !PV_VCONTROL_VIDEN\n");
+	}
 
 	vc4_hvs_atomic_disable(crtc, old_state);
 
@@ -503,6 +506,10 @@ static int vc4_crtc_atomic_check(struct drm_crtc *crtc,
 static int vc4_enable_vblank(struct drm_crtc *crtc)
 {
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
+	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
+
+	if (vc4_state->feed_txp)
+		return 0;
 
 	CRTC_WRITE(PV_INTEN, PV_INT_VFP_START);
 
@@ -512,6 +519,10 @@ static int vc4_enable_vblank(struct drm_crtc *crtc)
 static void vc4_disable_vblank(struct drm_crtc *crtc)
 {
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
+	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
+
+	if (vc4_state->feed_txp)
+		return;
 
 	CRTC_WRITE(PV_INTEN, 0);
 }
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
