Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E2C160B1B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:51:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y9oktPB+qNHNnecyGtsHqWXUSf7HL1/sTF0995fPxxU=; b=iK0APk3pzH5IsK
	hPhgE4PAkdFgzmo2Vl+fPLKk3M7h7MpkBx/h15NeRwe8Red+oc5z6Em3FgUq8iYrvZn1raEjOuSV+
	Lv4PSHjj8y+6ZMXn+Xevqc9nopTxiX8QcRn5BFISv4pZEmIFIE6q4hScn4PGFu8xIvdDU4K2L6Yqf
	I2pJKdPENI4izdc+4UOI9lpjqOcwxlY54uQjk4vqZAwqnlkAS57gb/WonvcIxF1pSar9H0CQineWK
	YxQeyH6pTsj+/uPjiV20qgNRn0p6cwSy+V5Bka+7zeumx6n6+3DQz1Hnyh9pRlQHOWj3yX5MF2qEd
	Hoy9jzmuQKgCWw3N3erg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aFO-0003js-Vp; Mon, 17 Feb 2020 06:51:15 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7W-0003qY-79
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:08 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6FF3B5227;
 Mon, 17 Feb 2020 01:43:05 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=A623uF+Zt8pd+
 G8X0YQI2ZXWxoaPlRIPweAQu1VTmF4=; b=AfJL98fmlBMsUO0xr3bKrgdjg8THH
 BUyrd93/WewF+Y3SWMZjtB4AzlVR5+AOzODyEk8dV0Mz4irKH7jQ/787PRtwC//n
 Vcz27XhwINWrQS3JLmCJBlz/m1A2kOPOFIEMM3A01ljOIOEvj26Hm2lmWsm8YVG7
 pakdbUyChiVJJEoFRspvXo0ujYwiqbhI+ksASX6a/tnM/f8bT22Ul4kJDGF8DAzL
 53lCGC13TO02rkVLfmmHR+0EDwIdTcKkkGh5cr4dwkgS0aTeOOAj9FSF5c0tNxnc
 9UBnwu3MgcJp1PhoyNYYRMOCHW2fGWcYh2fHFHQ6WjLSgEVTLdMayDXUw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=A623uF+Zt8pd+G8X0YQI2ZXWxoaPlRIPweAQu1VTmF4=; b=vgNuYm5m
 Pwvo9nJfWJDoXJo51De9m4qV7CGi7DxvfbcfBmedn6MTG1REGLxtUVqAEVsXObFH
 wvEIneKtTGTUwQy3tQ2V1Yk5zq3IC/3YTMjMp5WZSwqWjlEnXtRPtko0CGnMS3sp
 0yy4IdVEk32sRcFPQtUkOsKqlLk2VNUnhCv8A9gwk1TwUUCGHSGLlftMYbgpim5F
 WcBabi1uLx9pg9/bL61awMerJzuXTWKtNLGUygrsVYlweLICPwE3ycO//+MW7nSs
 v4GHrIjT6o8++nLmlw1IYza0iUM9GTQH10miLwNMVcKYRZafq0S0yDogClIB0nHR
 kA+9UYzWXvplEw==
X-ME-Sender: <xms:-TVKXi8h-sRHYAgrftYMp2XLsrxdthQnD_TbHKKV-27QTWYY9LoEnA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedujeenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:-TVKXlD_nY7EfLJUG8ylnS7Buiz7Kaz01PlgryqpQ14-ipn8VLEnJQ>
 <xmx:-TVKXmvyOodAbVB69CsS1yxTbn9zqcdHfp4XPIG3PUS8_3tuwQ965A>
 <xmx:-TVKXnZvtkd8M9Jt4JtafxP18KJ7v_mdYqVZjwWrMKKVBafk9kdduQ>
 <xmx:-TVKXq7BuuaaESH1AP8X5WmLu97yhPm-kBV_3ORtgxn7ivTJNkTQEw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id AE9443280059;
 Mon, 17 Feb 2020 01:43:04 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 23/34] ASoC: sun8i-codec: Clean up DAC widgets
Date: Mon, 17 Feb 2020 00:42:39 -0600
Message-Id: <20200217064250.15516-24-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224306_445429_3B7F9F82 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Again, rename the widgets and controls to match their actual function
(and disambiguate the mixers), then sort the widgets and routes in a
topological sink<-source ordering.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 61 ++++++++++++++++++-----------------
 1 file changed, 32 insertions(+), 29 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index 6f589e93850a..5dfaf656b5b1 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -384,23 +384,6 @@ static int sun8i_codec_hw_params(struct snd_pcm_substream *substream,
 	return 0;
 }
 
-static const struct snd_kcontrol_new sun8i_dac_mixer_controls[] = {
-	SOC_DAPM_DOUBLE("AIF1 Slot 0 Digital DAC Playback Switch",
-			SUN8I_DAC_MXR_SRC,
-			SUN8I_DAC_MXR_SRC_DACL_MXR_SRC_AIF1DA0L,
-			SUN8I_DAC_MXR_SRC_DACR_MXR_SRC_AIF1DA0R, 1, 0),
-	SOC_DAPM_DOUBLE("AIF1 Slot 1 Digital DAC Playback Switch",
-			SUN8I_DAC_MXR_SRC,
-			SUN8I_DAC_MXR_SRC_DACL_MXR_SRC_AIF1DA1L,
-			SUN8I_DAC_MXR_SRC_DACR_MXR_SRC_AIF1DA1R, 1, 0),
-	SOC_DAPM_DOUBLE("AIF2 Digital DAC Playback Switch", SUN8I_DAC_MXR_SRC,
-			SUN8I_DAC_MXR_SRC_DACL_MXR_SRC_AIF2DACL,
-			SUN8I_DAC_MXR_SRC_DACR_MXR_SRC_AIF2DACR, 1, 0),
-	SOC_DAPM_DOUBLE("ADC Digital DAC Playback Switch", SUN8I_DAC_MXR_SRC,
-			SUN8I_DAC_MXR_SRC_DACL_MXR_SRC_ADCL,
-			SUN8I_DAC_MXR_SRC_DACR_MXR_SRC_ADCR, 1, 0),
-};
-
 static const struct snd_kcontrol_new sun8i_aif1_ad0_mixer_controls[] = {
 	SOC_DAPM_DOUBLE("AIF1 AD0 Mixer AIF1 DA0 Capture Switch",
 			SUN8I_AIF1_MXR_SRC,
@@ -420,6 +403,25 @@ static const struct snd_kcontrol_new sun8i_aif1_ad0_mixer_controls[] = {
 			SUN8I_AIF1_MXR_SRC_AD0R_MXR_SRC_AIF2DACL, 1, 0),
 };
 
+static const struct snd_kcontrol_new sun8i_dac_mixer_controls[] = {
+	SOC_DAPM_DOUBLE("DAC Mixer AIF1 DA0 Playback Switch",
+			SUN8I_DAC_MXR_SRC,
+			SUN8I_DAC_MXR_SRC_DACL_MXR_SRC_AIF1DA0L,
+			SUN8I_DAC_MXR_SRC_DACR_MXR_SRC_AIF1DA0R, 1, 0),
+	SOC_DAPM_DOUBLE("DAC Mixer AIF1 DA1 Playback Switch",
+			SUN8I_DAC_MXR_SRC,
+			SUN8I_DAC_MXR_SRC_DACL_MXR_SRC_AIF1DA1L,
+			SUN8I_DAC_MXR_SRC_DACR_MXR_SRC_AIF1DA1R, 1, 0),
+	SOC_DAPM_DOUBLE("DAC Mixer AIF2 DAC Playback Switch",
+			SUN8I_DAC_MXR_SRC,
+			SUN8I_DAC_MXR_SRC_DACL_MXR_SRC_AIF2DACL,
+			SUN8I_DAC_MXR_SRC_DACR_MXR_SRC_AIF2DACR, 1, 0),
+	SOC_DAPM_DOUBLE("DAC Mixer ADC Playback Switch",
+			SUN8I_DAC_MXR_SRC,
+			SUN8I_DAC_MXR_SRC_DACL_MXR_SRC_ADCL,
+			SUN8I_DAC_MXR_SRC_DACR_MXR_SRC_ADCR, 1, 0),
+};
+
 static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 	/* AIF "ADC" Outputs */
 	SND_SOC_DAPM_AIF_OUT("AIF1 AD0 Left", "Capture", 0,
@@ -450,10 +452,10 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 	SND_SOC_DAPM_SUPPLY("DAC", SUN8I_DAC_DIG_CTRL,
 			    SUN8I_DAC_DIG_CTRL_ENDA, 0, NULL, 0),
 
-	/* DAC and ADC Mixers */
-	SOC_MIXER_ARRAY("Left Digital DAC Mixer", SND_SOC_NOPM, 0, 0,
+	/* Main DAC Mixers */
+	SOC_MIXER_ARRAY("DAC Left Mixer", SND_SOC_NOPM, 0, 0,
 			sun8i_dac_mixer_controls),
-	SOC_MIXER_ARRAY("Right Digital DAC Mixer", SND_SOC_NOPM, 0, 0,
+	SOC_MIXER_ARRAY("DAC Right Mixer", SND_SOC_NOPM, 0, 0,
 			sun8i_dac_mixer_controls),
 
 	/* Main ADC Inputs (connected to analog codec DAPM context) */
@@ -505,20 +507,21 @@ static const struct snd_soc_dapm_route sun8i_codec_dapm_routes[] = {
 	{ "AIF1 DA0 Left", NULL, "AIF1CLK" },
 	{ "AIF1 DA0 Right", NULL, "AIF1CLK" },
 
-	/* DAC Routes */
-	{ "DAC Left", NULL, "Left Digital DAC Mixer" },
-	{ "DAC Right", NULL, "Right Digital DAC Mixer" },
+	/* Main DAC Output Routes */
+	{ "DAC Left", NULL, "DAC Left Mixer" },
+	{ "DAC Right", NULL, "DAC Right Mixer" },
 
 	{ "DAC Left", NULL, "DAC" },
 	{ "DAC Right", NULL, "DAC" },
 
-	/* DAC Mixer Routes */
-	{ "Left Digital DAC Mixer", "AIF1 Slot 0 Digital DAC Playback Switch",
-	  "AIF1 DA0 Left"},
-	{ "Right Digital DAC Mixer", "AIF1 Slot 0 Digital DAC Playback Switch",
-	  "AIF1 DA0 Right"},
+	/* Main DAC Mixer Routes */
+	{ "DAC Left Mixer", "DAC Mixer AIF1 DA0 Playback Switch", "AIF1 DA0 Left" },
+	{ "DAC Left Mixer", "DAC Mixer ADC Playback Switch", "ADC Left" },
+
+	{ "DAC Right Mixer", "DAC Mixer AIF1 DA0 Playback Switch", "AIF1 DA0 Right" },
+	{ "DAC Right Mixer", "DAC Mixer ADC Playback Switch", "ADC Right" },
 
-	/* ADC Routes */
+	/* Main ADC Input Routes */
 	{ "ADC Left", NULL, "ADC" },
 	{ "ADC Right", NULL, "ADC" },
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
