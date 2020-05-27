Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CB2D1E4963
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2fu9nM0GALXVoa3PgOjvqCtq0PSOTKLcF0v1uR0flM=; b=j7HLYx9f/EHYJe
	LzNjhHZbaF3qMI+iN+ea9/AkHmECJWhwlb+sstwO7dbAQKcSM03N4sm9VPbSkCQQRCYONrfIREi2t
	Imv1oE0Cc3+dtXXJHLdvq7FCOXgJfss+O/cvI+rPPA17D/Urevn/tkWZK6WjtcfYIrpuPnNGvOGi2
	7O77edmFS0PSa12snu4ZL8Rj1dzHysVuUm+ZZCM9+OdsENHX3XTDzIt9qEucIamK+PctLMMEoF1XE
	H7afcMQJxACq1or0LwzzaaZpwLyhhUzzm/T/Xrqkgh3jTREAqwNvlkJxVRySqwxQ8QJHMdnyhlBR9
	cwyBSy5sBe0zZLOPBRyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdych-0004dr-5p; Wed, 27 May 2020 16:09:43 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJi-0006Xo-Dd; Wed, 27 May 2020 15:50:11 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id EA5B5582047;
 Wed, 27 May 2020 11:50:03 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=tK1sPZc0eto3z
 3gDAjTjmk5epnbO+EUqvo+nfO7QKg4=; b=GTHvq7BUjhPoi6mWZH4KmBNdZsm12
 XetJZ7ezG2R44lQsom2amyjCajgbLqBuzazqizE8t/y0Jmr9nDK7RucvWnfoAq6S
 Lh3jf1H23HlShmi77TnURpuJP3m84UnEk6FDYjo+OMdpPD8vV570QZvMYzel1wiZ
 GyhYWvh50Ap0Mq7afoqWtlHj1Svbsp+RTVdEGny7laLljZcAXkDLdxd+JpCd3Mwd
 5F7pFn3rE4OJwpoKiUvk/Qs3z6pqJuPL5B8yW6R+OroeaM8sy0uBRPuSQPie0sFr
 T/wZAxmHlru3WfNhT+wTbIKAwlf5/28hKSFRUNCaCFPPNb/D5rSitDFCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=tK1sPZc0eto3z3gDAjTjmk5epnbO+EUqvo+nfO7QKg4=; b=DmLvZIFj
 0wiCBpo/tCxDr3LZ0P+kxWkVWjxPiAwOCxbHNrSxKuhPhLK7f/EsTCKvw/3+CA/f
 p6nNrOMJcT+bUzI8AujhnzgLSRRmWbFZqRzQ0qaErrqF9yxi+x7jWqV2DvIOqxNm
 1E0OwFHkF8AEM6T8fqUYTbKqUv6ZAgbt0xjkAMnJsdu9L7pt6ZbxmTgnZdMUrlXS
 KX6sM3uYMwBoRDK134nb0/iAMANlCU+L7ABaMtSGQrkLhKlUTsnBbsktVwPgOXXi
 xoiF2tx83DJH9NzChIVyK+pJ1/4f1B3JiZ/wyjOheCNRdA5ZMQ8am8OxAI8gEeuy
 X7Hn1lRiT59pZQ==
X-ME-Sender: <xms:K4zOXriJY-ZWP1vtJKX5jh38HmiJjtcg7YNkL8wxljYoPPOEdUu7Mg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepuddune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:K4zOXoAPs1N8ye02GgENVLkmdr6EMO7FMKxFbOsZb-fYeG10EQYUHQ>
 <xmx:K4zOXrHxisQabacy1m3f9I5dEr0ldICUcFV7R6VJiFmaIGyve1iQmA>
 <xmx:K4zOXoRaXRaIniZsjttjFb0tPGYdtnpzHxnHloy1qgZ-oSXFVk1TrQ>
 <xmx:K4zOXrx5_55YQhc08xtmgs64sxaS8PxGlm5J104NrKB4kocEWfZZ5A>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 040FD30624CC;
 Wed, 27 May 2020 11:50:01 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 029/105] drm/vc4: crtc: Move the cob allocation outside of
 bind
Date: Wed, 27 May 2020 17:47:59 +0200
Message-Id: <1c2c039ca885db63186491275708dbe4371b704c.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085007_119511_79A5A8A0 
X-CRM114-Status: GOOD (  13.18  )
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

The COB allocation depends on the HVS channel used for a given
pixelvalve.

While the channel allocation was entirely static in vc4, vc5 changes
that and at bind time, a pixelvalve can be assigned to multiple
HVS channels.

Let's prepare that rework by allocating the COB when it's actually
needed.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 36 ++++++++++++++++-------------------
 drivers/gpu/drm/vc4/vc4_drv.h  |  2 +--
 2 files changed, 17 insertions(+), 21 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 5e1d234f3c8e..d58f881649d5 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -65,6 +65,20 @@ static const struct debugfs_reg32 crtc_regs[] = {
 	VC4_REG32(PV_HACT_ACT),
 };
 
+static unsigned int
+vc4_crtc_get_cob_allocation(struct vc4_dev *vc4, unsigned int channel)
+{
+	u32 dispbase = HVS_READ(SCALER_DISPBASEX(channel));
+	/* Top/base are supposed to be 4-pixel aligned, but the
+	 * Raspberry Pi firmware fills the low bits (which are
+	 * presumably ignored).
+	 */
+	u32 top = VC4_GET_FIELD(dispbase, SCALER_DISPBASEX_TOP) & ~3;
+	u32 base = VC4_GET_FIELD(dispbase, SCALER_DISPBASEX_BASE) & ~3;
+
+	return top - base + 4;
+}
+
 static bool vc4_crtc_get_scanout_position(struct drm_crtc *crtc,
 					  bool in_vblank_irq,
 					  int *vpos, int *hpos,
@@ -74,6 +88,7 @@ static bool vc4_crtc_get_scanout_position(struct drm_crtc *crtc,
 	struct drm_device *dev = crtc->dev;
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
 	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
+	unsigned int cob_size;
 	u32 val;
 	int fifo_lines;
 	int vblank_lines;
@@ -109,8 +124,9 @@ static bool vc4_crtc_get_scanout_position(struct drm_crtc *crtc,
 			*hpos += mode->crtc_htotal / 2;
 	}
 
+	cob_size = vc4_crtc_get_cob_allocation(vc4, vc4_crtc->channel);
 	/* This is the offset we need for translating hvs -> pv scanout pos. */
-	fifo_lines = vc4_crtc->cob_size / mode->crtc_hdisplay;
+	fifo_lines = cob_size / mode->crtc_hdisplay;
 
 	if (fifo_lines > 0)
 		ret = true;
@@ -1106,22 +1122,6 @@ static void vc4_set_crtc_possible_masks(struct drm_device *drm,
 	}
 }
 
-static void
-vc4_crtc_get_cob_allocation(struct vc4_crtc *vc4_crtc)
-{
-	struct drm_device *drm = vc4_crtc->base.dev;
-	struct vc4_dev *vc4 = to_vc4_dev(drm);
-	u32 dispbase = HVS_READ(SCALER_DISPBASEX(vc4_crtc->channel));
-	/* Top/base are supposed to be 4-pixel aligned, but the
-	 * Raspberry Pi firmware fills the low bits (which are
-	 * presumably ignored).
-	 */
-	u32 top = VC4_GET_FIELD(dispbase, SCALER_DISPBASEX_TOP) & ~3;
-	u32 base = VC4_GET_FIELD(dispbase, SCALER_DISPBASEX_BASE) & ~3;
-
-	vc4_crtc->cob_size = top - base + 4;
-}
-
 static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
@@ -1176,8 +1176,6 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 	 */
 	drm_crtc_enable_color_mgmt(crtc, 0, true, crtc->gamma_size);
 
-	vc4_crtc_get_cob_allocation(vc4_crtc);
-
 	CRTC_WRITE(PV_INTEN, 0);
 	CRTC_WRITE(PV_INTSTAT, PV_INT_VFP_START);
 	ret = devm_request_irq(dev, platform_get_irq(pdev, 0),
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 8c0f714f557b..6c4b78b71446 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -475,8 +475,6 @@ struct vc4_crtc {
 	u8 lut_r[256];
 	u8 lut_g[256];
 	u8 lut_b[256];
-	/* Size in pixels of the COB memory allocated to this CRTC. */
-	u32 cob_size;
 
 	struct drm_pending_vblank_event *event;
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
