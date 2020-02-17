Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED8F160B1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:52:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDOH0Tz/zE7HjLnO2IXaf7kxhhSasnsfkCa/M3bOAxY=; b=eOJ8Nl790QqIBL
	ztygnxEQjn068i+KMKvPeGf3GIg6IrIakl8hYM2ywG25hwPC6E6ltNA2W8adrr2HctyGPa56bvBRI
	w3O3e5YOx7dim3Vc7fzMNJJPCnf7kkSavr3NdIy3SMgx4Ww2rQt2n9p6d8zS4j8xfPG2LuVN0VQsM
	EFAsKOu9wQZbaA1/48xYzUi2yn4+1stqiGYyP13pZMUwtzoqmFReoTQfK3ICDFFST3rFo90f9SYHk
	erV54XGblnqxKCbpzFlZxlxjxssdLn1NvI1807DxsaxrMwTcPq2yqb95TuAME1qx209QRH/s22WfK
	SgWy9GfsV+s1jo54R/0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aG6-0004CJ-6L; Mon, 17 Feb 2020 06:51:58 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7X-0003rD-5B
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:11 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 106B451E1;
 Mon, 17 Feb 2020 01:43:06 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=kKzb1Qj4ZHVK4
 pTJQ0r23qGMmMSqQTfk8t4pDT3gnm0=; b=cJWsfnoin1B+Wo5944BqdmNssv+vU
 DfB4yaL80OtxjshXQIj/pYnXlv4YhOFvmJQJX9qdTcUUZ2ci51bsKMGbo2e//seH
 C6YDFGG1Jw1KQZacmGyJaMP8ysrV6pa/ELT/KqTXE8v5dgQNv+RhM458T3lybPKT
 tplH+XNWjzJzVERzw4tvuv/q8TvHg1ogx4grGPIipXXRgBNw6IQ9uDJt7w6zUdmo
 V9n6Utcyw+doW9smfbk/O+pAF4LRqflAOkRem2biaJaRbPu2T6KR5BqlSoY67Srb
 T0z260YGHJhUFPWN0hl3Q8rVPJ+zrcm4UnGmlJYLbP0FuiUqFkimUytig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=kKzb1Qj4ZHVK4pTJQ0r23qGMmMSqQTfk8t4pDT3gnm0=; b=LyQtsjJ6
 GPG/D7mcDBh3Ys3IPzNYou16MFyR1pyBqSXcuPpEwXpDU6XyCgmZGJ5AtnSfFcOh
 ya94U0vDdc0+L+g3AFapP53yajvMoNK2R4LqiFliOPI5CnN60A3uYvKeKMpfKVXh
 SyZHItJ6LoUH93ajxgkCGleHC7SV49BH/mSZzpgHXy5JXBtvUFo6VS2AoEbL0FON
 Tmc6gtG8/6FMQEb6Lg7JIP2O3wCOOI8b5wrHopvwt5ykdWrawp6vVuXU0r78c5FK
 DHam2JAsuZrhpwvjAqC8Gbhif7SXNurvOa/xDuLxykzMz4E46OcI1GtkGGVNu9Ac
 wwaqOvkBskAj7A==
X-ME-Sender: <xms:-TVKXhYFFIUoUR6p5nPO6WeC4RoFjCg-0ESx11OYnWT8zddzJ6-X3w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedujeenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:-TVKXtgEBPSDfW9_VC9WS51TzPAYRikojPuy6mSJrcWFXMiHjnyO2g>
 <xmx:-TVKXrMp4Zj1xAZsOhxA79XsmZsBjTQfpujg3iD5-WabrryzIxS20Q>
 <xmx:-TVKXnN0Bwx1tRl8pWQCUntU-svrXIM65gjs4RB7osrx0Rn5c2z5Zg>
 <xmx:-jVKXuoag7wiIV46PlbahA_2ZVnAOyA0wqzsT4EBHofIip6uhoDSGQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 507D9328005A;
 Mon, 17 Feb 2020 01:43:05 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 24/34] ASoC: sun8i-codec: Prepare to support multiple AIFs
Date: Mon, 17 Feb 2020 00:42:40 -0600
Message-Id: <20200217064250.15516-25-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224307_681795_1CBB1067 
X-CRM114-Status: GOOD (  13.37  )
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

The clock control registers for AIF1 and AIF2 have an identical layout
(other than the unused bit 0 for TDM mode). Rename the offsets/masks to
signify that they are shared between AIFs, and get the register address
from the AIF ID (this requires filling in the AIF ID). We also need to
rename the DAI and DAI streams, so they are still unique once AIF2 is
added. Finally, we convert the AIF driver struct to an array. Since this
already breaks `git blame`, we clean it up a bit by moving it and the
DAI ops up near the DAI driver implementation; this stops the ASoC DAPM
component driver splitting the DAI driver in half.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 159 +++++++++++++++++-----------------
 1 file changed, 80 insertions(+), 79 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index 5dfaf656b5b1..aaea9aaa5632 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -38,16 +38,15 @@
 #define SUN8I_MOD_RST_CTL_ADC				3
 #define SUN8I_MOD_RST_CTL_DAC				2
 #define SUN8I_SYS_SR_CTRL				0x018
-#define SUN8I_SYS_SR_CTRL_AIF1_FS			12
-#define SUN8I_SYS_SR_CTRL_AIF2_FS			8
-#define SUN8I_AIF1CLK_CTRL				0x040
-#define SUN8I_AIF1CLK_CTRL_AIF1_MSTR_MOD		15
-#define SUN8I_AIF1CLK_CTRL_AIF1_CLK_INV			13
-#define SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV		9
-#define SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV		6
-#define SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ		4
-#define SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT		2
-#define SUN8I_AIF1CLK_CTRL_AIF1_MONO_PCM		1
+#define SUN8I_SYS_SR_CTRL_AIF_FS(n)			(16 - 4 * (n))
+#define SUN8I_AIF_CLK_CTRL(n)				(0x040 * (n))
+#define SUN8I_AIF_CLK_CTRL_MSTR_MOD			15
+#define SUN8I_AIF_CLK_CTRL_CLK_INV			13
+#define SUN8I_AIF_CLK_CTRL_BCLK_DIV			9
+#define SUN8I_AIF_CLK_CTRL_LRCK_DIV			6
+#define SUN8I_AIF_CLK_CTRL_WORD_SIZ			4
+#define SUN8I_AIF_CLK_CTRL_DATA_FMT			2
+#define SUN8I_AIF_CLK_CTRL_MONO_PCM			1
 #define SUN8I_AIF1_ADCDAT_CTRL				0x044
 #define SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0L_ENA		15
 #define SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0R_ENA		14
@@ -80,13 +79,12 @@
 #define SUN8I_DAC_MXR_SRC_DACR_MXR_SRC_ADCR		8
 
 #define SUN8I_SYSCLK_CTL_AIF1CLK_SRC_MASK	GENMASK(9, 8)
-#define SUN8I_SYS_SR_CTRL_AIF1_FS_MASK		GENMASK(15, 12)
-#define SUN8I_SYS_SR_CTRL_AIF2_FS_MASK		GENMASK(11, 8)
-#define SUN8I_AIF1CLK_CTRL_AIF1_CLK_INV_MASK	GENMASK(14, 13)
-#define SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV_MASK	GENMASK(12, 9)
-#define SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV_MASK	GENMASK(8, 6)
-#define SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_MASK	GENMASK(5, 4)
-#define SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT_MASK	GENMASK(3, 2)
+#define SUN8I_SYS_SR_CTRL_AIF_FS_MASK(n)	(GENMASK(19, 16) >> (4 * (n)))
+#define SUN8I_AIF_CLK_CTRL_CLK_INV_MASK		GENMASK(14, 13)
+#define SUN8I_AIF_CLK_CTRL_BCLK_DIV_MASK	GENMASK(12, 9)
+#define SUN8I_AIF_CLK_CTRL_LRCK_DIV_MASK	GENMASK(8, 6)
+#define SUN8I_AIF_CLK_CTRL_WORD_SIZ_MASK	GENMASK(5, 4)
+#define SUN8I_AIF_CLK_CTRL_DATA_FMT_MASK	GENMASK(3, 2)
 
 #define SUN8I_AIF_PCM_FMTS  (SNDRV_PCM_FMTBIT_S8|\
 			     SNDRV_PCM_FMTBIT_S16_LE|\
@@ -189,6 +187,7 @@ static int sun8i_codec_get_hw_rate(struct snd_pcm_hw_params *params)
 static int sun8i_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 {
 	struct sun8i_codec *scodec = snd_soc_component_get_drvdata(dai->component);
+	unsigned int reg = SUN8I_AIF_CLK_CTRL(dai->id);
 	u32 value;
 
 	/* clock masters */
@@ -202,9 +201,9 @@ static int sun8i_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 	default:
 		return -EINVAL;
 	}
-	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
-			   BIT(SUN8I_AIF1CLK_CTRL_AIF1_MSTR_MOD),
-			   value << SUN8I_AIF1CLK_CTRL_AIF1_MSTR_MOD);
+	regmap_update_bits(scodec->regmap, reg,
+			   BIT(SUN8I_AIF_CLK_CTRL_MSTR_MOD),
+			   value << SUN8I_AIF_CLK_CTRL_MSTR_MOD);
 
 	/* clock inversion */
 	switch (fmt & SND_SOC_DAIFMT_INV_MASK) {
@@ -234,9 +233,9 @@ static int sun8i_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 	 * invert the value here.
 	 */
 	value ^= scodec->inverted_lrck;
-	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
-			   SUN8I_AIF1CLK_CTRL_AIF1_CLK_INV_MASK,
-			   value << SUN8I_AIF1CLK_CTRL_AIF1_CLK_INV);
+	regmap_update_bits(scodec->regmap, reg,
+			   SUN8I_AIF_CLK_CTRL_CLK_INV_MASK,
+			   value << SUN8I_AIF_CLK_CTRL_CLK_INV);
 
 	/* DAI format */
 	switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
@@ -255,9 +254,9 @@ static int sun8i_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
 	default:
 		return -EINVAL;
 	}
-	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
-			   SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT_MASK,
-			   value << SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT);
+	regmap_update_bits(scodec->regmap, reg,
+			   SUN8I_AIF_CLK_CTRL_DATA_FMT_MASK,
+			   value << SUN8I_AIF_CLK_CTRL_DATA_FMT);
 
 	return 0;
 }
@@ -327,23 +326,24 @@ static int sun8i_codec_hw_params(struct snd_pcm_substream *substream,
 	struct sun8i_codec *scodec = snd_soc_component_get_drvdata(dai->component);
 	unsigned int slot_width = params_physical_width(params);
 	unsigned int channels = params_channels(params);
+	unsigned int reg = SUN8I_AIF_CLK_CTRL(dai->id);
 	int sample_rate, lrck_div;
 	u8 bclk_div;
 	u32 value;
 
 	bclk_div = sun8i_codec_get_bclk_div(scodec, params_rate(params),
 					    channels, slot_width);
-	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
-			   SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV_MASK,
-			   bclk_div << SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV);
+	regmap_update_bits(scodec->regmap, reg,
+			   SUN8I_AIF_CLK_CTRL_BCLK_DIV_MASK,
+			   bclk_div << SUN8I_AIF_CLK_CTRL_BCLK_DIV);
 
 	lrck_div = sun8i_codec_get_lrck_div(channels, slot_width);
 	if (lrck_div < 0)
 		return lrck_div;
 
-	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
-			   SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV_MASK,
-			   lrck_div << SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV);
+	regmap_update_bits(scodec->regmap, reg,
+			   SUN8I_AIF_CLK_CTRL_LRCK_DIV_MASK,
+			   lrck_div << SUN8I_AIF_CLK_CTRL_LRCK_DIV);
 
 	switch (params_width(params)) {
 	case 8:
@@ -361,29 +361,60 @@ static int sun8i_codec_hw_params(struct snd_pcm_substream *substream,
 	default:
 		return -EINVAL;
 	}
-	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
-			   SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_MASK,
-			   value << SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ);
+	regmap_update_bits(scodec->regmap, reg,
+			   SUN8I_AIF_CLK_CTRL_WORD_SIZ_MASK,
+			   value << SUN8I_AIF_CLK_CTRL_WORD_SIZ);
 
 	value = channels == 1;
-	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
-			   BIT(SUN8I_AIF1CLK_CTRL_AIF1_MONO_PCM),
-			   value << SUN8I_AIF1CLK_CTRL_AIF1_MONO_PCM);
+	regmap_update_bits(scodec->regmap, reg,
+			   BIT(SUN8I_AIF_CLK_CTRL_MONO_PCM),
+			   value << SUN8I_AIF_CLK_CTRL_MONO_PCM);
 
 	sample_rate = sun8i_codec_get_hw_rate(params);
 	if (sample_rate < 0)
 		return sample_rate;
 
 	regmap_update_bits(scodec->regmap, SUN8I_SYS_SR_CTRL,
-			   SUN8I_SYS_SR_CTRL_AIF1_FS_MASK,
-			   sample_rate << SUN8I_SYS_SR_CTRL_AIF1_FS);
-	regmap_update_bits(scodec->regmap, SUN8I_SYS_SR_CTRL,
-			   SUN8I_SYS_SR_CTRL_AIF2_FS_MASK,
-			   sample_rate << SUN8I_SYS_SR_CTRL_AIF2_FS);
+			   SUN8I_SYS_SR_CTRL_AIF_FS_MASK(dai->id),
+			   sample_rate << SUN8I_SYS_SR_CTRL_AIF_FS(dai->id));
 
 	return 0;
 }
 
+static const struct snd_soc_dai_ops sun8i_codec_dai_ops = {
+	.hw_params = sun8i_codec_hw_params,
+	.set_fmt = sun8i_set_fmt,
+};
+
+static struct snd_soc_dai_driver sun8i_codec_dais[] = {
+	{
+		.name = "sun8i-codec-aif1",
+		.id = 1,
+		/* playback capabilities */
+		.playback = {
+			.stream_name = "AIF1 Playback",
+			.channels_min = 1,
+			.channels_max = 2,
+			.rates = SUN8I_AIF_PCM_RATES,
+			.formats = SUN8I_AIF_PCM_FMTS,
+		},
+		/* capture capabilities */
+		.capture = {
+			.stream_name = "AIF1 Capture",
+			.channels_min = 1,
+			.channels_max = 2,
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
+};
+
 static const struct snd_kcontrol_new sun8i_aif1_ad0_mixer_controls[] = {
 	SOC_DAPM_DOUBLE("AIF1 AD0 Mixer AIF1 DA0 Capture Switch",
 			SUN8I_AIF1_MXR_SRC,
@@ -424,10 +455,10 @@ static const struct snd_kcontrol_new sun8i_dac_mixer_controls[] = {
 
 static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 	/* AIF "ADC" Outputs */
-	SND_SOC_DAPM_AIF_OUT("AIF1 AD0 Left", "Capture", 0,
+	SND_SOC_DAPM_AIF_OUT("AIF1 AD0 Left", "AIF1 Capture", 0,
 			     SUN8I_AIF1_ADCDAT_CTRL,
 			     SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0L_ENA, 0),
-	SND_SOC_DAPM_AIF_OUT("AIF1 AD0 Right", "Capture", 1,
+	SND_SOC_DAPM_AIF_OUT("AIF1 AD0 Right", "AIF1 Capture", 1,
 			     SUN8I_AIF1_ADCDAT_CTRL,
 			     SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0R_ENA, 0),
 
@@ -438,10 +469,10 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 			sun8i_aif1_ad0_mixer_controls),
 
 	/* AIF "DAC" Inputs */
-	SND_SOC_DAPM_AIF_IN("AIF1 DA0 Left", "Playback", 0,
+	SND_SOC_DAPM_AIF_IN("AIF1 DA0 Left", "AIF1 Playback", 0,
 			    SUN8I_AIF1_DACDAT_CTRL,
 			    SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0L_ENA, 0),
-	SND_SOC_DAPM_AIF_IN("AIF1 DA0 Right", "Playback", 1,
+	SND_SOC_DAPM_AIF_IN("AIF1 DA0 Right", "AIF1 Playback", 1,
 			    SUN8I_AIF1_DACDAT_CTRL,
 			    SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0R_ENA, 0),
 
@@ -565,37 +596,6 @@ static int sun8i_codec_component_probe(struct snd_soc_component *component)
 	return 0;
 }
 
-static const struct snd_soc_dai_ops sun8i_codec_dai_ops = {
-	.hw_params = sun8i_codec_hw_params,
-	.set_fmt = sun8i_set_fmt,
-};
-
-static struct snd_soc_dai_driver sun8i_codec_dai = {
-	.name = "sun8i",
-	/* playback capabilities */
-	.playback = {
-		.stream_name = "Playback",
-		.channels_min = 1,
-		.channels_max = 2,
-		.rates = SUN8I_AIF_PCM_RATES,
-		.formats = SUN8I_AIF_PCM_FMTS,
-	},
-	/* capture capabilities */
-	.capture = {
-		.stream_name = "Capture",
-		.channels_min = 1,
-		.channels_max = 2,
-		.rates = SUN8I_AIF_PCM_RATES,
-		.formats = SUN8I_AIF_PCM_FMTS,
-		.sig_bits = 24,
-	},
-	/* pcm operations */
-	.ops = &sun8i_codec_dai_ops,
-	.symmetric_rates = 1,
-	.symmetric_channels = 1,
-	.symmetric_samplebits = 1,
-};
-
 static const struct snd_soc_component_driver sun8i_soc_component = {
 	.dapm_widgets		= sun8i_codec_dapm_widgets,
 	.num_dapm_widgets	= ARRAY_SIZE(sun8i_codec_dapm_widgets),
@@ -664,7 +664,8 @@ static int sun8i_codec_probe(struct platform_device *pdev)
 	}
 
 	ret = devm_snd_soc_register_component(&pdev->dev, &sun8i_soc_component,
-				     &sun8i_codec_dai, 1);
+					      sun8i_codec_dais,
+					      ARRAY_SIZE(sun8i_codec_dais));
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to register codec\n");
 		goto err_suspend;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
