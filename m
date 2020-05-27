Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E63D81E4A40
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:33:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1O/XrAJv2XWF8kx8OzK6E5FhpfUMIZEdQBWBAlAQbQ8=; b=dkYLybi0wMEFTS
	hLBhsca3pvoHfFgVheGr6pKDgbpZ5N1qXLE5AybVTb08hhy0cZeK0V2efx17mNdHFxMeYSOU9hApA
	tidnWlFtTDfSfb0yB3GrUTQ7vE7yYAZ+y3VxYeXw3qvFDca+NCFA1nXdt59GZxrLD82WzF1WjkaF5
	8hIrv8cvzw6ZTTYgqgFOfNPVWRN7N2nl6S6/0Re8+BWFNT37mfPp5MltYYmcaw6wuPxnrx+5OqN4p
	An+1dSrMuE9UUQl8s95bHTEDvw9geaoGhz/kFOR1TvfYQUarXBolh917A4jr3PnacROJcPOwpaY/w
	erLHs5s0yZaQR5/hYgHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyzE-0001Rz-PD; Wed, 27 May 2020 16:33:00 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyLM-0001rH-Tk; Wed, 27 May 2020 15:51:51 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C2538582101;
 Wed, 27 May 2020 11:51:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:51:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=w9X7BF4nMd1nQ
 c/IzGAPERlbj1jfgqvltCeOfK66pKY=; b=qgIQRMimoBVH2IAS/AkkUDxzQ59uk
 Con0+f2IRGcdM1tEQ5My5bRPNjZ6851/Y4X8i36NcPh2Hh180l+/Ab2HsRT5GvSJ
 kFwgBcvlaSg/ko9XJM3R6aUpUFetvZBxq3k7xIjeADUbSuDr6IdtjsCcyz15B1V8
 CzdG1VmsgWxQQ1W5YZkVeKFea4FT8IAha7rY2FAmi06sZ3LgK07SRxYK3e+bntmx
 WlxJCrxlDVuEtnI4ZpMXsIiJywAc8B6KznppVbSs7ab3FuVsKi99GLVeiyn5tkBV
 LdO+HfNgo2t/hwyRrqxVNhNEPiOEd1ez6X7wDPIxop/Zc1V4lWQlPKl0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=w9X7BF4nMd1nQc/IzGAPERlbj1jfgqvltCeOfK66pKY=; b=1mQDffBz
 lvS5Z0EYIS3v8NUVXEK54eDW1WPjuc6NVy1/RN5D0AreJ7pOknkJvag9qYzsH906
 SJWiaugeR9pf2TL4mXYo3gWnfjEG6p9gxrwvYiWe8ZTJzsWPAO507Jvqen3il5NN
 UKav5h0zelR0qVn+A2UHgjiLLhhHQaXbeWtQyaGxZt96lH0oZjspxcSWikyreqih
 GJ6F9ZscI6XkbbwhAQhM9gEAVWOSMT6aT7fcLWIPgp90FaUzPPP87jIQ3H+i2umU
 X6KXZvTBPJ6HxM4otN5seZQUS+3mEpz0hWh9i1nyoC85fgMYKWWK7pDUj+nxzhHm
 vBQWp4AuvyI12w==
X-ME-Sender: <xms:kozOXtEzFzM2WIJE-mWhje2IgacN9asU8APCcwgB102MVcNObIu9YQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepjedune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:kozOXiXyEOTR2XcuqCdfQUUlA5KtPUOdjdshIIgzC8AGw5iO7gsGVw>
 <xmx:kozOXvKvQJyGI1fPPulJ9xi4kzmmHKAiYTquKqAW4oNjNYe3viTLZg>
 <xmx:kozOXjHCmflnyseM9oCaYy2ktVwGestzHYCDR2gqmDmc1kQbAVcKHQ>
 <xmx:kozOXqFPX5VNlEJvphdcMcnpAJyi71bbAIbU-nNfhQt_Q_cjm-MuVw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 66E2330624E4;
 Wed, 27 May 2020 11:51:46 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 095/105] drm/vc4: hdmi: Set the b-frame marker to the match
 ALSA's default.
Date: Wed, 27 May 2020 17:49:05 +0200
Message-Id: <0a8b22baf15ca5c7a3c5bbb6516db17d470ea6de.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085149_282716_228A095A 
X-CRM114-Status: UNSURE (   9.69  )
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

From: Dave Stevenson <dave.stevenson@raspberrypi.com>

ALSA's iec958 plugin by default sets the block start preamble
to 8, whilst this driver was programming the hardware to expect
0xF.
Amend the hardware config to match ALSA.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index dcac5e77d2ab..afa71580bfce 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -754,10 +754,11 @@ static int vc4_hdmi_audio_hw_params(struct snd_pcm_substream *substream,
 
 	vc4_hdmi_audio_set_mai_clock(vc4_hdmi);
 
+	/* The B frame identifier should match the value used by alsa-lib (8) */
 	audio_packet_config =
 		VC4_HDMI_AUDIO_PACKET_ZERO_DATA_ON_SAMPLE_FLAT |
 		VC4_HDMI_AUDIO_PACKET_ZERO_DATA_ON_INACTIVE_CHANNELS |
-		VC4_SET_FIELD(0xf, VC4_HDMI_AUDIO_PACKET_B_FRAME_IDENTIFIER);
+		VC4_SET_FIELD(0x8, VC4_HDMI_AUDIO_PACKET_B_FRAME_IDENTIFIER);
 
 	channel_mask = GENMASK(vc4_hdmi->audio.channels - 1, 0);
 	audio_packet_config |= VC4_SET_FIELD(channel_mask,
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
