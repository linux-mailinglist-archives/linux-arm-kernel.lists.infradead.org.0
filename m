Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6879D160B22
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:52:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1apu4go5/dPVKgIK7Gpyq8CsisQ8LL0USjIY9MTqJw=; b=DNmKUUHzVUsSff
	dYHXVifKZ5vzNK0kA0sbchOlBjks+fCSTNqlMsUCqjcXirsvtMt62mgu8TwE1ROKpW3zqEx7H7GPM
	IULVSeU5r8vTQv9hFyChF4RvTiQH82lt/mAy4j8jRHNYtLE2mBnXa8UeCWYplVayOQQXnBa5/2+31
	0nh7sM9JoynD36/wvCjMxJLONDrq8lcTiXz4Xm9osliwo2jbN5GcBAsezcZ1ZEBAEfAiXhaR2ShPL
	GJsM6JFILvTxw+QqKbeMPkZ1fViCkAB4UzUnPNQTMBJee42BKc/bhaxUjP3/Zb4dKPm6mxNPx0unV
	a3y7YeKATzuDcJ5PZf7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aGm-0004dE-H6; Mon, 17 Feb 2020 06:52:40 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7Z-0003s0-GC
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:15 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 48C1C55D8;
 Mon, 17 Feb 2020 01:43:07 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=eFrhkV43BMiR/
 9w4h8vQXSBY8KFQ2uM/hAIYLjUeQUM=; b=ZfzM0KNRFfykAFB5DTLkFh8awzwTt
 AmWADh9di7BLRgoNQ8fNOHHB/UqXrEg5wpmnkqO0jQ+vv4ZaTLOXxy9zcnrWb5Ef
 FEKHASgJGLbrwMGQNGhFUzqM5cALwM72W7T3LwWFeVddn/MSbtR21AFPAmIWHKfZ
 F4/JP/QQmpS2M3jLE3JjnbtrsWxeWNfdOp1aa8lCYsq28+2CNyR7DSEdhaZd6gnJ
 RFq38xiKDhSFfHL7EVTd1At+so1279BunJcKVX5k3Fhf1B9OQ7HLi4n7oBwem/nI
 q17RKiCSCSSSo6UDZOJFL6QttHQdeR9qxgWqpRXgKgHFqRD8GLsSR6UvA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=eFrhkV43BMiR/9w4h8vQXSBY8KFQ2uM/hAIYLjUeQUM=; b=h/i/3xI0
 CJWTQ9clUSlXniuhlHSvbtdiTDmwIpzUyWxxu/6vusJs3z4VwJIdQQouzlvArGiz
 k10aoKR8JWwbPabcMOifLpztAq6ESjORXkbceJ0Oc6c4sWpe7ONutd7k36YdLp7S
 AQN4qeb39O1d+ABuea01K/4zeLkL85SgLWcpyrncAALy7tl0WBaxR1Si6CfYGwV6
 8edrBYrTofUFjB7Ce4BK3PJqb1oXaACnigdgf6oKn7C1Xzw8b+2HZvSYATFLzd7Q
 bSbiO8dOznlhz6HWINmpWQUajECeITkykUBOsuWxU7ycpwz84CKOoS3hlOATUe5H
 MKzKYLknn85eSA==
X-ME-Sender: <xms:-zVKXsL-6_xzx8GOtdkuuN8ZWmhNnlzvmebaFkpjUbZDmd9B66MbMA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedujeenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:-zVKXoHaYkcQwAEn_SN6pI-h5FooMOijcAbRQKKOmCV56apXEIHx7A>
 <xmx:-zVKXvwL5B_8gmruTWfZ5iAYF2VgJO6-mab75Lzw-fjlAxwXncrp2Q>
 <xmx:-zVKXkwy_TrItN1HdmioPt1o-dMX8mwzHabKfXGNMjg6YKlYBE8IIg>
 <xmx:-zVKXlUKNaZEZlf2boSOnhvSPJ_ltmNHu1uObyy7_syT7MCmHE4Ypw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8739B328005A;
 Mon, 17 Feb 2020 01:43:06 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 26/34] ASoC: sun8i-codec: Add support for AIF3
Date: Mon, 17 Feb 2020 00:42:42 -0600
Message-Id: <20200217064250.15516-27-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224310_321722_62FA4D97 
X-CRM114-Status: GOOD (  14.26  )
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

This adds the new DAI, clocks, widgets, and routes for AIF2.

AIF3 lacks some of the configuration of the other AIFs. Skip setting
bits that are unavailable on AIF3. It is not documented what the actual
settings for AIF3 are, so those parameters cannot be validated.

AIF3 can pull its bitclock from AIF1 or AIF2. Since the normal usage of
AIF3 is for low-bitrate mono audio, similar to AIF2, let's set the AIF3
clock to AIF2 for now.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 241 +++++++++++++++++++++++++---------
 1 file changed, 178 insertions(+), 63 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index ce7038bcbdc1..71c4c1f47201 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -34,11 +34,13 @@
 #define SUN8I_MOD_CLK_ENA				0x010
 #define SUN8I_MOD_CLK_ENA_AIF1				15
 #define SUN8I_MOD_CLK_ENA_AIF2				14
+#define SUN8I_MOD_CLK_ENA_AIF3				13
 #define SUN8I_MOD_CLK_ENA_ADC				3
 #define SUN8I_MOD_CLK_ENA_DAC				2
 #define SUN8I_MOD_RST_CTL				0x014
 #define SUN8I_MOD_RST_CTL_AIF1				15
 #define SUN8I_MOD_RST_CTL_AIF2				14
+#define SUN8I_MOD_RST_CTL_AIF3				13
 #define SUN8I_MOD_RST_CTL_ADC				3
 #define SUN8I_MOD_RST_CTL_DAC				2
 #define SUN8I_SYS_SR_CTRL				0x018
@@ -81,6 +83,15 @@
 #define SUN8I_AIF2_MXR_SRC_ADCR_MXR_SRC_AIF1DA1R	10
 #define SUN8I_AIF2_MXR_SRC_ADCR_MXR_SRC_AIF2DACL	9
 #define SUN8I_AIF2_MXR_SRC_ADCR_MXR_SRC_ADCR		8
+#define SUN8I_AIF3_CLK_CTRL_AIF3_CLOCK_SRC_AIF1		(0x0 << 0)
+#define SUN8I_AIF3_CLK_CTRL_AIF3_CLOCK_SRC_AIF2		(0x1 << 0)
+#define SUN8I_AIF3_CLK_CTRL_AIF3_CLOCK_SRC_AIF1CLK	(0x2 << 0)
+#define SUN8I_AIF3_DACDAT_CTRL				0x0c8
+#define SUN8I_AIF3_DACDAT_CTRL_AIF3_LOOP_ENA		0
+#define SUN8I_AIF3_PATH_CTRL				0x0cc
+#define SUN8I_AIF3_PATH_CTRL_AIF3_ADC_SRC		10
+#define SUN8I_AIF3_PATH_CTRL_AIF2_DAC_SRC		8
+#define SUN8I_AIF3_PATH_CTRL_AIF3_PINS_TRI		7
 #define SUN8I_ADC_DIG_CTRL				0x100
 #define SUN8I_ADC_DIG_CTRL_ENAD				15
 #define SUN8I_ADC_DIG_CTRL_ADOUT_DTS			2
@@ -105,6 +116,7 @@
 #define SUN8I_AIF_CLK_CTRL_LRCK_DIV_MASK	GENMASK(8, 6)
 #define SUN8I_AIF_CLK_CTRL_WORD_SIZ_MASK	GENMASK(5, 4)
 #define SUN8I_AIF_CLK_CTRL_DATA_FMT_MASK	GENMASK(3, 2)
+#define SUN8I_AIF3_CLK_CTRL_AIF3_CLOCK_SRC_MASK	GENMASK(1, 0)
 
 #define SUN8I_AIF_PCM_FMTS  (SNDRV_PCM_FMTBIT_S8|\
 			     SNDRV_PCM_FMTBIT_S16_LE|\
@@ -210,20 +222,22 @@ static int sun8i_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 	unsigned int reg = SUN8I_AIF_CLK_CTRL(dai->id);
 	u32 value;
 
-	/* clock masters */
-	switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
-	case SND_SOC_DAIFMT_CBS_CFS: /* Codec slave, DAI master */
-		value = 0x1;
-		break;
-	case SND_SOC_DAIFMT_CBM_CFM: /* Codec Master, DAI slave */
-		value = 0x0;
-		break;
-	default:
-		return -EINVAL;
+	if (dai->id < 3) {
+		/* clock masters */
+		switch (fmt & SND_SOC_DAIFMT_MASTER_MASK) {
+		case SND_SOC_DAIFMT_CBS_CFS: /* Codec slave, DAI master */
+			value = 0x1;
+			break;
+		case SND_SOC_DAIFMT_CBM_CFM: /* Codec Master, DAI slave */
+			value = 0x0;
+			break;
+		default:
+			return -EINVAL;
+		}
+		regmap_update_bits(scodec->regmap, reg,
+				   BIT(SUN8I_AIF_CLK_CTRL_MSTR_MOD),
+				   value << SUN8I_AIF_CLK_CTRL_MSTR_MOD);
 	}
-	regmap_update_bits(scodec->regmap, reg,
-			   BIT(SUN8I_AIF_CLK_CTRL_MSTR_MOD),
-			   value << SUN8I_AIF_CLK_CTRL_MSTR_MOD);
 
 	/* clock inversion */
 	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
@@ -257,26 +271,28 @@ static int sun8i_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 			   SUN8I_AIF_CLK_CTRL_CLK_INV_MASK,
 			   value << SUN8I_AIF_CLK_CTRL_CLK_INV);
 
-	/* DAI format */
-	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
-	case SND_SOC_DAIFMT_I2S:
-		value = 0x0;
-		break;
-	case SND_SOC_DAIFMT_LEFT_J:
-		value = 0x1;
-		break;
-	case SND_SOC_DAIFMT_RIGHT_J:
-		value = 0x2;
-		break;
-	case SND_SOC_DAIFMT_DSP_A:
-		value = 0x3;
-		break;
-	default:
-		return -EINVAL;
+	if (dai->id < 3) {
+		/* DAI format */
+		switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
+		case SND_SOC_DAIFMT_I2S:
+			value = 0x0;
+			break;
+		case SND_SOC_DAIFMT_LEFT_J:
+			value = 0x1;
+			break;
+		case SND_SOC_DAIFMT_RIGHT_J:
+			value = 0x2;
+			break;
+		case SND_SOC_DAIFMT_DSP_A:
+			value = 0x3;
+			break;
+		default:
+			return -EINVAL;
+		}
+		regmap_update_bits(scodec->regmap, reg,
+				   SUN8I_AIF_CLK_CTRL_DATA_FMT_MASK,
+				   value << SUN8I_AIF_CLK_CTRL_DATA_FMT);
 	}
-	regmap_update_bits(scodec->regmap, reg,
-			   SUN8I_AIF_CLK_CTRL_DATA_FMT_MASK,
-			   value << SUN8I_AIF_CLK_CTRL_DATA_FMT);
 
 	return 0;
 }
@@ -351,19 +367,25 @@ static int sun8i_codec_hw_params(struct snd_pcm_substream *substream,
 	u8 bclk_div;
 	u32 value;
 
-	bclk_div = sun8i_codec_get_bclk_div(scodec, params_rate(params),
-					    channels, slot_width);
-	regmap_update_bits(scodec->regmap, reg,
-			   SUN8I_AIF_CLK_CTRL_BCLK_DIV_MASK,
-			   bclk_div << SUN8I_AIF_CLK_CTRL_BCLK_DIV);
-
-	lrck_div = sun8i_codec_get_lrck_div(channels, slot_width);
-	if (lrck_div < 0)
-		return lrck_div;
-
-	regmap_update_bits(scodec->regmap, reg,
-			   SUN8I_AIF_CLK_CTRL_LRCK_DIV_MASK,
-			   lrck_div << SUN8I_AIF_CLK_CTRL_LRCK_DIV);
+	if (dai->id < 3) {
+		bclk_div = sun8i_codec_get_bclk_div(scodec, params_rate(params),
+						    channels, slot_width);
+		regmap_update_bits(scodec->regmap, reg,
+				   SUN8I_AIF_CLK_CTRL_BCLK_DIV_MASK,
+				   bclk_div << SUN8I_AIF_CLK_CTRL_BCLK_DIV);
+
+		lrck_div = sun8i_codec_get_lrck_div(channels, slot_width);
+		if (lrck_div < 0)
+			return lrck_div;
+
+		regmap_update_bits(scodec->regmap, reg,
+				   SUN8I_AIF_CLK_CTRL_LRCK_DIV_MASK,
+				   lrck_div << SUN8I_AIF_CLK_CTRL_LRCK_DIV);
+	} else {
+		regmap_update_bits(scodec->regmap, reg,
+				   SUN8I_AIF3_CLK_CTRL_AIF3_CLOCK_SRC_MASK,
+				   SUN8I_AIF3_CLK_CTRL_AIF3_CLOCK_SRC_AIF2);
+	}
 
 	switch (params_width(params)) {
 	case 8:
@@ -385,18 +407,20 @@ static int sun8i_codec_hw_params(struct snd_pcm_substream *substream,
 			   SUN8I_AIF_CLK_CTRL_WORD_SIZ_MASK,
 			   value << SUN8I_AIF_CLK_CTRL_WORD_SIZ);
 
-	value = channels == 1;
-	regmap_update_bits(scodec->regmap, reg,
-			   BIT(SUN8I_AIF_CLK_CTRL_MONO_PCM),
-			   value << SUN8I_AIF_CLK_CTRL_MONO_PCM);
+	if (dai->id < 3) {
+		value = channels == 1;
+		regmap_update_bits(scodec->regmap, reg,
+				   BIT(SUN8I_AIF_CLK_CTRL_MONO_PCM),
+				   value << SUN8I_AIF_CLK_CTRL_MONO_PCM);
 
-	sample_rate = sun8i_codec_get_hw_rate(params);
-	if (sample_rate < 0)
-		return sample_rate;
+		sample_rate = sun8i_codec_get_hw_rate(params);
+		if (sample_rate < 0)
+			return sample_rate;
 
-	regmap_update_bits(scodec->regmap, SUN8I_SYS_SR_CTRL,
-			   SUN8I_SYS_SR_CTRL_AIF_FS_MASK(dai->id),
-			   sample_rate << SUN8I_SYS_SR_CTRL_AIF_FS(dai->id));
+		regmap_update_bits(scodec->regmap, SUN8I_SYS_SR_CTRL,
+				   SUN8I_SYS_SR_CTRL_AIF_FS_MASK(dai->id),
+				   sample_rate << SUN8I_SYS_SR_CTRL_AIF_FS(dai->id));
+	}
 
 	return 0;
 }
@@ -459,8 +483,56 @@ static struct snd_soc_dai_driver sun8i_codec_dais[] = {
 		.symmetric_channels = 1,
 		.symmetric_samplebits = 1,
 	},
+	{
+		.name = "sun8i-codec-aif3",
+		.id = 3,
+		/* playback capabilities */
+		.playback = {
+			.stream_name = "AIF3 Playback",
+			.channels_min = 1,
+			.channels_max = 1,
+			.rates = SUN8I_AIF_PCM_RATES,
+			.formats = SUN8I_AIF_PCM_FMTS,
+		},
+		/* capture capabilities */
+		.capture = {
+			.stream_name = "AIF3 Capture",
+			.channels_min = 1,
+			.channels_max = 1,
+			.rates = SUN8I_AIF_PCM_RATES,
+			.formats = SUN8I_AIF_PCM_FMTS,
+			.sig_bits = 24,
+		},
+		/* pcm operations */
+		.ops = &sun8i_codec_dai_ops,
+		.symmetric_rates = 1,
+		.symmetric_channels = 1,
+		.symmetric_samplebits = 1,
+	},
 };
 
+static const char *const sun8i_aif3_mux_enum_names[] = {
+	"None", "AIF2 Left", "AIF2 Right"
+};
+
+static SOC_ENUM_SINGLE_DECL(sun8i_aif3_adc_mux_enum,
+			    SUN8I_AIF3_PATH_CTRL,
+			    SUN8I_AIF3_PATH_CTRL_AIF3_ADC_SRC,
+			    sun8i_aif3_mux_enum_names);
+
+static const struct snd_kcontrol_new sun8i_aif3_adc_mux_control =
+	SOC_DAPM_ENUM("AIF3 ADC Capture Route",
+		      sun8i_aif3_adc_mux_enum);
+
+static SOC_ENUM_SINGLE_DECL(sun8i_aif2_dac_mux_enum,
+			    SUN8I_AIF3_PATH_CTRL,
+			    SUN8I_AIF3_PATH_CTRL_AIF2_DAC_SRC,
+			    sun8i_aif3_mux_enum_names);
+
+static const struct snd_kcontrol_new sun8i_aif2_dac_mux_control =
+	SOC_DAPM_ENUM("AIF3 DAC Playback Route",
+		      sun8i_aif2_dac_mux_enum);
+
 static const struct snd_kcontrol_new sun8i_aif1_ad0_mixer_controls[] = {
 	SOC_DAPM_DOUBLE("AIF1 AD0 Mixer AIF1 DA0 Capture Switch",
 			SUN8I_AIF1_MXR_SRC,
@@ -534,6 +606,13 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 			     SUN8I_AIF2_ADCDAT_CTRL,
 			     SUN8I_AIF2_ADCDAT_CTRL_AIF2_ADCR_ENA, 0),
 
+	SND_SOC_DAPM_AIF_OUT("AIF3 ADC", "AIF3 Capture", 0,
+			     SND_SOC_NOPM, 0, 0),
+
+	/* AIF "ADC" Muxes */
+	SND_SOC_DAPM_MUX("AIF3 ADC Capture Route", SND_SOC_NOPM, 0, 0,
+			 &sun8i_aif3_adc_mux_control),
+
 	/* AIF "ADC" Mixers */
 	SOC_MIXER_ARRAY("AIF1 AD0 Left Mixer", SND_SOC_NOPM, 0, 0,
 			sun8i_aif1_ad0_mixer_controls),
@@ -545,6 +624,12 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 	SOC_MIXER_ARRAY("AIF2 ADC Right Mixer", SND_SOC_NOPM, 0, 0,
 			sun8i_aif2_adc_mixer_controls),
 
+	/* AIF "DAC" Muxes */
+	SND_SOC_DAPM_MUX("AIF2 DAC Left Mux", SND_SOC_NOPM, 0, 0,
+			 &sun8i_aif2_dac_mux_control),
+	SND_SOC_DAPM_MUX("AIF2 DAC Right Mux", SND_SOC_NOPM, 0, 0,
+			 &sun8i_aif2_dac_mux_control),
+
 	/* AIF "DAC" Inputs */
 	SND_SOC_DAPM_AIF_IN("AIF1 DA0 Left", "AIF1 Playback", 0,
 			    SUN8I_AIF1_DACDAT_CTRL,
@@ -560,6 +645,9 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 			    SUN8I_AIF2_DACDAT_CTRL,
 			    SUN8I_AIF2_DACDAT_CTRL_AIF2_DACR_ENA, 0),
 
+	SND_SOC_DAPM_AIF_IN("AIF3 DAC", "AIF3 Playback", 0,
+			    SND_SOC_NOPM, 0, 0),
+
 	/* Main DAC Outputs (connected to analog codec DAPM context) */
 	SND_SOC_DAPM_PGA("DAC Left", SND_SOC_NOPM, 0, 0, NULL, 0),
 	SND_SOC_DAPM_PGA("DAC Right", SND_SOC_NOPM, 0, 0, NULL, 0),
@@ -585,6 +673,8 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 			    SUN8I_MOD_RST_CTL_AIF1, 0, NULL, 0),
 	SND_SOC_DAPM_SUPPLY("RST AIF2", SUN8I_MOD_RST_CTL,
 			    SUN8I_MOD_RST_CTL_AIF2, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("RST AIF3", SUN8I_MOD_RST_CTL,
+			    SUN8I_MOD_RST_CTL_AIF3, 0, NULL, 0),
 	SND_SOC_DAPM_SUPPLY("RST ADC", SUN8I_MOD_RST_CTL,
 			    SUN8I_MOD_RST_CTL_ADC, 0, NULL, 0),
 	SND_SOC_DAPM_SUPPLY("RST DAC", SUN8I_MOD_RST_CTL,
@@ -595,6 +685,8 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 			    SUN8I_MOD_CLK_ENA_AIF1, 0, NULL, 0),
 	SND_SOC_DAPM_SUPPLY("MODCLK AIF2", SUN8I_MOD_CLK_ENA,
 			    SUN8I_MOD_CLK_ENA_AIF2, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("MODCLK AIF3", SUN8I_MOD_CLK_ENA,
+			    SUN8I_MOD_CLK_ENA_AIF3, 0, NULL, 0),
 	SND_SOC_DAPM_SUPPLY("MODCLK ADC", SUN8I_MOD_CLK_ENA,
 			    SUN8I_MOD_CLK_ENA_ADC, 0, NULL, 0),
 	SND_SOC_DAPM_SUPPLY("MODCLK DAC", SUN8I_MOD_CLK_ENA,
@@ -623,25 +715,40 @@ static const struct snd_soc_dapm_route sun8i_codec_dapm_routes[] = {
 	{ "AIF2 ADC Left", NULL, "AIF2CLK" },
 	{ "AIF2 ADC Right", NULL, "AIF2CLK" },
 
+	{ "AIF3 ADC", NULL, "AIF3 ADC Capture Route" },
+
+	/* AIF "ADC" Mux Routes */
+	{ "AIF3 ADC Capture Route", "AIF2 Left", "AIF2 ADC Left Mixer" },
+	{ "AIF3 ADC Capture Route", "AIF2 Right", "AIF2 ADC Right Mixer" },
+
 	/* AIF "ADC" Mixer Routes */
 	{ "AIF1 AD0 Left Mixer", "AIF1 AD0 Mixer AIF1 DA0 Capture Switch", "AIF1 DA0 Left" },
-	{ "AIF1 AD0 Left Mixer", "AIF1 AD0 Mixer AIF2 DAC Capture Switch", "AIF2 DAC Left" },
+	{ "AIF1 AD0 Left Mixer", "AIF1 AD0 Mixer AIF2 DAC Capture Switch", "AIF2 DAC Left Mux" },
 	{ "AIF1 AD0 Left Mixer", "AIF1 AD0 Mixer ADC Capture Switch", "ADC Left" },
-	{ "AIF1 AD0 Left Mixer", "AIF1 AD0 Mixer AIF2 DAC Rev Capture Switch", "AIF2 DAC Right" },
+	{ "AIF1 AD0 Left Mixer", "AIF1 AD0 Mixer AIF2 DAC Rev Capture Switch", "AIF2 DAC Right Mux" },
 
 	{ "AIF1 AD0 Right Mixer", "AIF1 AD0 Mixer AIF1 DA0 Capture Switch", "AIF1 DA0 Right" },
-	{ "AIF1 AD0 Right Mixer", "AIF1 AD0 Mixer AIF2 DAC Capture Switch", "AIF2 DAC Right" },
+	{ "AIF1 AD0 Right Mixer", "AIF1 AD0 Mixer AIF2 DAC Capture Switch", "AIF2 DAC Right Mux" },
 	{ "AIF1 AD0 Right Mixer", "AIF1 AD0 Mixer ADC Capture Switch", "ADC Right" },
-	{ "AIF1 AD0 Right Mixer", "AIF1 AD0 Mixer AIF2 DAC Rev Capture Switch", "AIF2 DAC Left" },
+	{ "AIF1 AD0 Right Mixer", "AIF1 AD0 Mixer AIF2 DAC Rev Capture Switch", "AIF2 DAC Left Mux" },
 
 	{ "AIF2 ADC Left Mixer", "AIF2 ADC Mixer AIF1 DA0 Capture Switch", "AIF1 DA0 Left" },
-	{ "AIF2 ADC Left Mixer", "AIF2 ADC Mixer AIF2 DAC Rev Capture Switch", "AIF2 DAC Right" },
+	{ "AIF2 ADC Left Mixer", "AIF2 ADC Mixer AIF2 DAC Rev Capture Switch", "AIF2 DAC Right Mux" },
 	{ "AIF2 ADC Left Mixer", "AIF2 ADC Mixer ADC Capture Switch", "ADC Left" },
 
 	{ "AIF2 ADC Right Mixer", "AIF2 ADC Mixer AIF1 DA0 Capture Switch", "AIF1 DA0 Right" },
-	{ "AIF2 ADC Right Mixer", "AIF2 ADC Mixer AIF2 DAC Rev Capture Switch", "AIF2 DAC Left" },
+	{ "AIF2 ADC Right Mixer", "AIF2 ADC Mixer AIF2 DAC Rev Capture Switch", "AIF2 DAC Left Mux" },
 	{ "AIF2 ADC Right Mixer", "AIF2 ADC Mixer ADC Capture Switch", "ADC Right" },
 
+	/* AIF "DAC" Mux Routes */
+	{ "AIF2 DAC Left Mux", "None", "AIF2 DAC Left" },
+	{ "AIF2 DAC Left Mux", "AIF2 Left", "AIF3 DAC" },
+	{ "AIF2 DAC Left Mux", "AIF2 Right", "AIF2 DAC Left" },
+
+	{ "AIF2 DAC Right Mux", "None", "AIF2 DAC Right" },
+	{ "AIF2 DAC Right Mux", "AIF2 Left", "AIF2 DAC Right" },
+	{ "AIF2 DAC Right Mux", "AIF2 Right", "AIF3 DAC" },
+
 	/* AIF "DAC" Input Routes */
 	{ "AIF1 DA0 Left", NULL, "AIF1CLK" },
 	{ "AIF1 DA0 Right", NULL, "AIF1CLK" },
@@ -658,11 +765,11 @@ static const struct snd_soc_dapm_route sun8i_codec_dapm_routes[] = {
 
 	/* Main DAC Mixer Routes */
 	{ "DAC Left Mixer", "DAC Mixer AIF1 DA0 Playback Switch", "AIF1 DA0 Left" },
-	{ "DAC Left Mixer", "DAC Mixer AIF2 DAC Playback Switch", "AIF2 DAC Left" },
+	{ "DAC Left Mixer", "DAC Mixer AIF2 DAC Playback Switch", "AIF2 DAC Left Mux" },
 	{ "DAC Left Mixer", "DAC Mixer ADC Playback Switch", "ADC Left" },
 
 	{ "DAC Right Mixer", "DAC Mixer AIF1 DA0 Playback Switch", "AIF1 DA0 Right" },
-	{ "DAC Right Mixer", "DAC Mixer AIF2 DAC Playback Switch", "AIF2 DAC Right" },
+	{ "DAC Right Mixer", "DAC Mixer AIF2 DAC Playback Switch", "AIF2 DAC Right Mux" },
 	{ "DAC Right Mixer", "DAC Mixer ADC Playback Switch", "ADC Right" },
 
 	/* Main ADC Input Routes */
@@ -680,18 +787,26 @@ static const struct snd_soc_dapm_route sun8i_codec_dapm_routes[] = {
 	{ "AIF2 DAC Left", NULL, "RST AIF2" },
 	{ "AIF2 DAC Right", NULL, "RST AIF2" },
 
+	/* AIF3 gets its bitclock from AIF2 */
+	{ "AIF3 ADC", NULL, "RST AIF2" },
+	{ "AIF3 ADC", NULL, "RST AIF3" },
+	{ "AIF3 DAC", NULL, "RST AIF2" },
+	{ "AIF3 DAC", NULL, "RST AIF3" },
+
 	{ "ADC", NULL, "RST ADC" },
 	{ "DAC", NULL, "RST DAC" },
 
 	/* Module Reset Routes */
 	{ "RST AIF1", NULL, "MODCLK AIF1" },
 	{ "RST AIF2", NULL, "MODCLK AIF2" },
+	{ "RST AIF3", NULL, "MODCLK AIF3" },
 	{ "RST ADC", NULL, "MODCLK ADC" },
 	{ "RST DAC", NULL, "MODCLK DAC" },
 
 	/* Module Clock Routes */
 	{ "MODCLK AIF1", NULL, "SYSCLK" },
 	{ "MODCLK AIF2", NULL, "SYSCLK" },
+	{ "MODCLK AIF3", NULL, "SYSCLK" },
 	{ "MODCLK ADC", NULL, "SYSCLK" },
 	{ "MODCLK DAC", NULL, "SYSCLK" },
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
