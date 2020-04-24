Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56DCE1B7B13
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:05:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGV/IH5kct/+PwfbRiMh2u43gADpBvsKOHXfzagGgls=; b=p8dHUmllibOeIP
	XnvUM47qBlL0eOzLgN6JvA4p3a6CHXx238Q3onPFGpH6KDxLYNLSF8I7SMCTDzaYY0NXJ6rhIYxV1
	0jnwhjUDG3hWT2iexlyqibsoN/7GgHp2o6ZSrELHIOAOKGbwswHKobjDfVNZjeHozYA6AWNT867dz
	am5MWCV5g9iOJjg+4I8mLVpOwwFqlUSeshzM9lVIVjObwHNtdvFVmOgZ2CjAQiVQ/cbZNr/KDBTf8
	f0GJLfikEqCgqDNq4+bEtXNOXQ7lwXv0mbFMDLa8vxvZtcpXa8P39eZK0mScrbnOAvuGWOWXILIgx
	s8qdD/pa2o5Mq+Y3jxEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0pa-0003V1-6T; Fri, 24 Apr 2020 16:05:34 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0OM-0000YG-VP; Fri, 24 Apr 2020 15:37:30 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 9688F1450;
 Fri, 24 Apr 2020 11:37:25 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:37:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=/KsyQOpfutU4j
 AT75agxrluQ1cWQoNM89G9u2gOdhXQ=; b=tLSC0/UbxSbZKpyPzYyr4uIaj8d5n
 QCQXRhaS+QZ8ncKsz++oAfZA3IeSZJWw63r2/Vrovtv/ZTtNymE4oEcJod1JWwfA
 Ny7/SCUwcEnfvSRJPZh4JIeCyRopDT999hlmL8KB5cYWIQRFg3Mi5dji7qYWT5ZA
 7ruEkUgG0fB+sAvbmVsIfVw2L3N/q/vG/SmBAd++eod0zyhl+7STiwzigxGWZ1Gw
 rh+2Fh14DwmhhZM1CgUOTMlK3TF0lhvJ/xoJNS6B+eqjpGCUumvazOBStggNxRkI
 gwq255uo23d4bynTJHqYFtNl10j6jbTgreIleTDQZH77k9qTQQ35OIIxA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=/KsyQOpfutU4jAT75agxrluQ1cWQoNM89G9u2gOdhXQ=; b=qrBLsC6l
 YD3zUOpoGZxbt27eVYBWiQ/c77LjoAHvP/397bPupBDGjIkXuE/h/VVhu7SC/4wo
 ymwjqkWmUzzaef/wnFx/67y3hT4ler14vm41ZvSAHmdoOBeJJvKxk5BGlokGxA62
 1xvkePHhcN7PQDthNZ2CsbjXaCbo8q+3AFUn3MVJExK/2yR+qYuhCojjDF7jgwOw
 ymcFzU259RS8Jwme464tUx/yLdVi/67DAkoNSSNyMn2T2Wh0v9Mnjh6i6aIoZEEG
 KLaGOuA/DqI3uXNTo6KXkl2j57/+iwqh+9hXTByFEZYoHlrGjL+M6FwPJbfy4CxJ
 XUSukH5rkvsWow==
X-ME-Sender: <xms:tQejXtbY-WedBrS92KuWQQyhDSK-UJjYHJZSR2BVZE0Y5gJlhbXzsw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeejkeenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:tQejXi7BDsVDUJzX0GG2tYxO0Hp8kPZ1GDI8JbFdv1qmZLGZFb-p3Q>
 <xmx:tQejXqy7rya1HutnUC3-Qi2JtsidROuOyEVMmjmFOT5wFtgRpw9AJg>
 <xmx:tQejXh38dWtnPCQpNFUXUqWc8lS1cVSOmnKk05VZRYZihkPZybgS0Q>
 <xmx:tQejXuUDyYHZ56yI8KW5j-9vk5NXsJXtPDkbrFFxa6kL-1DiDDbRvyXLSKo>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D3110328005E;
 Fri, 24 Apr 2020 11:37:24 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 88/91] drm/vc4: hdmi: Add audio-related callbacks
Date: Fri, 24 Apr 2020 17:35:09 +0200
Message-Id: <d2be7532c52a1b4ecd3748e327c1847b918b2e81.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083727_172380_DC1AC290 
X-CRM114-Status: GOOD (  12.92  )
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

From: Dave Stevenson <dave.stevenson@raspberrypi.com>

The audio configuration has changed for the BCM2711, with notably a
different parent clock and a different channel configuration.

Make that modular to be able to support the BCM2711.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 25 +++++++++++++++++--------
 drivers/gpu/drm/vc4/vc4_hdmi.h |  4 ++++
 2 files changed, 21 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 7c43c039e669..6baf4d460b80 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -613,10 +613,22 @@ static const struct drm_encoder_helper_funcs vc4_hdmi_encoder_helper_funcs = {
 	.enable = vc4_hdmi_encoder_enable,
 };
 
+static u32 vc4_hdmi_channel_map(struct vc4_hdmi *vc4_hdmi, u32 channel_mask)
+{
+	int i;
+	u32 channel_map = 0;
+
+	for (i = 0; i < 8; i++) {
+		if (channel_mask & BIT(i))
+			channel_map |= i << (3 * i);
+	}
+	return channel_map;
+}
+
 /* HDMI audio codec callbacks */
 static void vc4_hdmi_audio_set_mai_clock(struct vc4_hdmi *vc4_hdmi)
 {
-	u32 hsm_clock = clk_get_rate(vc4_hdmi->hsm_clock);
+	u32 hsm_clock = clk_get_rate(vc4_hdmi->audio_clock);
 	unsigned long n, m;
 
 	rational_best_approximation(hsm_clock, vc4_hdmi->audio.samplerate,
@@ -735,7 +747,7 @@ static int vc4_hdmi_audio_hw_params(struct snd_pcm_substream *substream,
 	struct vc4_hdmi *vc4_hdmi = dai_to_hdmi(dai);
 	struct device *dev = &vc4_hdmi->pdev->dev;
 	u32 audio_packet_config, channel_mask;
-	u32 channel_map, i;
+	u32 channel_map;
 
 	if (substream != vc4_hdmi->audio.substream)
 		return -EINVAL;
@@ -787,12 +799,7 @@ static int vc4_hdmi_audio_hw_params(struct snd_pcm_substream *substream,
 		   VC4_HDMI_MAI_CONFIG_BIT_REVERSE |
 		   VC4_SET_FIELD(channel_mask, VC4_HDMI_MAI_CHANNEL_MASK));
 
-	channel_map = 0;
-	for (i = 0; i < 8; i++) {
-		if (channel_mask & BIT(i))
-			channel_map |= i << (3 * i);
-	}
-
+	channel_map = vc4_hdmi->variant->channel_map(vc4_hdmi, channel_mask);
 	HDMI_WRITE(HDMI_MAI_CHANNEL_MAP, channel_map);
 	HDMI_WRITE(HDMI_AUDIO_PACKET_CONFIG, audio_packet_config);
 	vc4_hdmi_set_n_cts(vc4_hdmi);
@@ -1342,6 +1349,7 @@ static int vc4_hdmi_init_resources(struct vc4_hdmi *vc4_hdmi)
 		DRM_ERROR("Failed to get HDMI state machine clock\n");
 		return PTR_ERR(vc4_hdmi->hsm_clock);
 	}
+	vc4_hdmi->audio_clock = vc4_hdmi->hsm_clock;
 
 	return 0;
 }
@@ -1499,6 +1507,7 @@ static const struct vc4_hdmi_variant bcm2835_variant = {
 	.phy_disable		= vc4_hdmi_phy_disable,
 	.phy_rng_enable		= vc4_hdmi_phy_rng_enable,
 	.phy_rng_disable	= vc4_hdmi_phy_rng_disable,
+	.channel_map		= vc4_hdmi_channel_map,
 };
 
 static const struct of_device_id vc4_hdmi_dt_match[] = {
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index eb0f91b57316..30eac891dc74 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -72,6 +72,9 @@ struct vc4_hdmi_variant {
 
 	/* Callback to disable the RNG in the PHY */
 	void (*phy_rng_disable)(struct vc4_hdmi *vc4_hdmi);
+
+	/* Callback to get channel map */
+	u32 (*channel_map)(struct vc4_hdmi *vc4_hdmi, u32 channel_mask);
 };
 
 /* HDMI audio information */
@@ -112,6 +115,7 @@ struct vc4_hdmi {
 
 	struct clk *pixel_clock;
 	struct clk *hsm_clock;
+	struct clk *audio_clock;
 
 	struct debugfs_regset32 hdmi_regset;
 	struct debugfs_regset32 hd_regset;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
