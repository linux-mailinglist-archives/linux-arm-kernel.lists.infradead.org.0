Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002B71E4A3C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:32:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6OMtwMLUocl7GQLKGVHwHKYddiDmgRc3pTbMIJlkO+Y=; b=NWn2ht23x95GG6
	vsb4WP5hAayVx6tqDG1WiWZA0736Sj2BFrA7K/+l+U3RWy/yjwBP/ghL87RKguNHGBEzBG131p/hr
	EtEZWJqIAgiEXlT+GVZSeMbtMOfCKsRh45X84Vh0FSL1mQmzcZajgEK4Qb+5EKAG2Qd+wUGPdJaHr
	WdzaIymTCrrGF+c+7dPD2YPK8g45talitpopf9fgE5MI8Ztl6WQfYPabdsJXhPhLnrO0P7srPiL8F
	RbIJUQhysPtu4XT0j48TkDqARrbXUfuV7jL+wGNf65qB2W8n2VukGLLJ9sougayDtCQt48YtyKo6r
	Mhk40X9X98mBYAwa2NLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyym-0000zy-KU; Wed, 27 May 2020 16:32:32 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyLK-0001qL-Ir; Wed, 27 May 2020 15:51:50 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4247258210B;
 Wed, 27 May 2020 11:51:45 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:51:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=9l0N3GFCYNrVd
 2F1SBKJ2XrWSefL3iJLCc9iCwPGOWc=; b=Bgbo7Rw5pG0Z+dBmot69P7zT9T7U8
 kPRwgDqXDLKNWPBXhyoIcMTFMJaIjLnUn1NDbAyiB2y7K0FLgMo7V9w+c/SE0iq9
 Lu4BMV25y3401nxy7KcyAgDsfGAKHdhHtGAy+gazv+dP+lPg6sH4iyWwbWXyvE1P
 CkfzlPgVouZfI1bWwYa5vN9c5QXwg8ofOPYuU8NKpODACZQGPV9HTFDTPprTzMHX
 lccYIQALryZihCb68noGgy9vcwF4jYXsPP0IrMAi65FbR2aOseXKvk0wPawJmGSk
 QqwA+3ab4d1znTgAndrmW5r/2LAnnaz9qmIaOqEZ4SeMQssPDYiQ4J+Jg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=9l0N3GFCYNrVd2F1SBKJ2XrWSefL3iJLCc9iCwPGOWc=; b=Qma4d6X8
 Qyk2dmH50kPLN8Ifw4CWSWSR3oceIFZnqM7Gfq1pW/AUCSiw3JomtbIrvV9nSvPk
 OuUIE73ewObEFfE3rBdWncBUqPQj/0xItDmYqVvGqpIe9pfFhRGXV0aQf/Sj1hlx
 bqwbjJUtyEt04JR9NL/pOvwooWbEtJH4rRh8Aebn1OS0MCa9kCQL97oahorWGmrV
 pWhGHpB150cSTP/yZJijUP+AA6roCVU4hx8ZJjpA2eKicxBFoRB//RxgejT5g5x9
 ujVTI2oWz4D9X4TiHcBnsbr6/LCMhCO6OX2ZfCWE9vOQtlLd5d9kchlsX9t0dDLs
 FisNdoex+Ck5Uw==
X-ME-Sender: <xms:kYzOXplL64OvlFO1vPhyNF3QSmRrHR805ONXI0gDOI9pdtqrwxURtQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepjedune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:kYzOXk3CHDglhhKTwhLsH9392NeJkBbq1i84qzQk5hTfx7EDZXdtYw>
 <xmx:kYzOXvpALJfeeheTZp5Xmal_b_K-CI5LELsCrIC24bCO1DaKtLtb3g>
 <xmx:kYzOXpmykxfYOcRLaUIewkuLdtxA3fC3nhKh7i2s37OrRd1nUq1PiA>
 <xmx:kYzOXsl5H1bNA8HlbAP7PNU8dwAr_YPKSs-U-dmPSrRqlxnUfIx8mA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D8E553280060;
 Wed, 27 May 2020 11:51:44 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 094/105] drm/vc4: hdmi: Reset audio infoframe on
 encoder_enable if previously streaming
Date: Wed, 27 May 2020 17:49:04 +0200
Message-Id: <1802995678e68ab74e1dd87b30666a0d5b7146f6.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085147_132922_B41DDC1A 
X-CRM114-Status: GOOD (  11.05  )
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

From: Dave Stevenson <dave.stevenson@raspberrypi.com>

If the encoder is disabled and re-enabled (eg mode change) all infoframes
are reset, whilst the audio subsystem know nothing about this change.
The driver therefore needs to reinstate the audio infoframe for
itself.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 12 ++++++++++++
 drivers/gpu/drm/vc4/vc4_hdmi.h |  2 ++
 2 files changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index ebe9dd25c65a..dcac5e77d2ab 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -308,8 +308,16 @@ static void vc4_hdmi_set_audio_infoframe(struct drm_encoder *encoder)
 
 static void vc4_hdmi_set_infoframes(struct drm_encoder *encoder)
 {
+	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
+
 	vc4_hdmi_set_avi_infoframe(encoder);
 	vc4_hdmi_set_spd_infoframe(encoder);
+	/*
+	 * If audio was streaming, then we need to reenabled the audio
+	 * infoframe here during encoder_enable.
+	 */
+	if (vc4_hdmi->audio.streaming)
+		vc4_hdmi_set_audio_infoframe(encoder);
 }
 
 static void vc4_hdmi_encoder_disable(struct drm_encoder *encoder)
@@ -694,6 +702,7 @@ static void vc4_hdmi_audio_reset(struct vc4_hdmi *vc4_hdmi)
 	struct device *dev = &vc4_hdmi->pdev->dev;
 	int ret;
 
+	vc4_hdmi->audio.streaming = false;
 	ret = vc4_hdmi_stop_packet(encoder, HDMI_INFOFRAME_TYPE_AUDIO);
 	if (ret)
 		dev_err(dev, "Failed to stop audio infoframe: %d\n", ret);
@@ -797,6 +806,7 @@ static int vc4_hdmi_audio_trigger(struct snd_pcm_substream *substream, int cmd,
 	switch (cmd) {
 	case SNDRV_PCM_TRIGGER_START:
 		vc4_hdmi_set_audio_infoframe(encoder);
+		vc4_hdmi->audio.streaming = true;
 
 		if (vc4_hdmi->variant->phy_rng_enable)
 			vc4_hdmi->variant->phy_rng_enable(vc4_hdmi);
@@ -815,6 +825,8 @@ static int vc4_hdmi_audio_trigger(struct snd_pcm_substream *substream, int cmd,
 		if (vc4_hdmi->variant->phy_rng_disable)
 			vc4_hdmi->variant->phy_rng_disable(vc4_hdmi);
 
+		vc4_hdmi->audio.streaming = false;
+
 		break;
 	default:
 		break;
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index 9a6831b941d9..eb0f91b57316 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -85,6 +85,8 @@ struct vc4_hdmi_audio {
 	int channels;
 	struct snd_dmaengine_dai_dma_data dma_data;
 	struct snd_pcm_substream *substream;
+
+	bool streaming;
 };
 
 /* General HDMI hardware state. */
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
