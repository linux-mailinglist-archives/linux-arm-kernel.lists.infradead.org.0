Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45681160B16
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:50:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zAGeG171yy8/DURoyT6gW39hm+6x7QOCGPIZKJLv24A=; b=h0xRPhdnAzQgyl
	W120B5YRp0C2/bk26DZpYba4V1dmkhop6BP66LrrVD0BqJzy+yE94JBIUgbNsTFva9HULlDzQgIqS
	pHgXUhe76xC+5smgqBIz9L5TKHoESoWPt1tJSHW6m2KNvNjIQOca+ifaS8+CCTGcIPLbtSuYznkIi
	rWVG1bty1R7Mx/qwdal78WbNZdY9Ka3tFVDohEznQlJ3+29Zp3VczO05tybDADcK4mu5F5GaiMtL1
	zBsMAqSBSjgJix+VdP76auxizF6LMis2dBhD599uEvHQGLMZT9Xd3ouzU6AdFHK/jD1MPV5Gur2H1
	5YSTmV2E2Fx+jn9aE7Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aEO-0001nO-Qe; Mon, 17 Feb 2020 06:50:12 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7U-0003op-Ge
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:06 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 97C6E54A2;
 Mon, 17 Feb 2020 01:43:03 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=dxjG83xmJslF6
 Sx6oGJvOxbCreiRgRFoHqqs44C23es=; b=QFLVltHVcyT91BPPEEUuHtetQUJTg
 EKUpeCB4fbLTRuP6V67JHSJAZzbiKA4+8JrTgvuytAjouyt0yTLwRlam7ZOcW7tA
 5ybbPTsInDXPE1GR1jVmWQDpHMk0N47Eoa/Rz7KIe8H89LHGn8yPsQ5bpNiWewaG
 Dpa7J4rfof41ZvUCkBaYDIGoUnuj0+ibkjswLyQ52nHPrfWUtNpBec20G5kL6UHz
 PTlhVNEF5X5G5Zgqnh7dw2nd1QZahoHhDUWMPBbhiwjhJnLt1ugsStAClSL0r7FA
 p7NqbK64BLmQhY5zSoURtF+oRkF3/gwpzEQEbgR/ChghX0LFD59Vho2ow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=dxjG83xmJslF6Sx6oGJvOxbCreiRgRFoHqqs44C23es=; b=FCyMsmk3
 Kkxb1o6jtzWJ7VM/PCQrPXoOnLvDO5yqPfTFZoxzqA7X4fJbGyN2gi4L2S1DtBNf
 I4b+bvMmygBIRj/z5BcraOFQtLZQ5eRNidvPrU1+16jLU/WTfhNhu5w/2UDL8ruT
 04aSs/Cv4lfsSVzK3DnW+UdF6RqMxaOtsDPRZQnem0YJXGgshxLbjoM4IOwybUxX
 fKEvg4e5fX6iFOAeOTlrHGhBehL2JL6P3GrTPwUp91mgDz8siSB1wEg0E8jsqskl
 s81IZ5rUB4kyrMkg6g0TU31xh9V9s1NkJ4TUJjQxRMQZtHr0WOQQdI7izrBnijlf
 2mH6FDmc5fh/rA==
X-ME-Sender: <xms:9zVKXuoeZJ4WsQVe4Clc1UwfKTzIH1tsGp5ssqa-apkIgftijoh34Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedujeenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:9zVKXj5v_ufh1CAl5FQ9VoHKj8WosyqDX5pr7Qugi3VYdU4CcOgDkg>
 <xmx:9zVKXn6QdoZx0Fn7kH3Oc5bXVwaxbkbD8gatKRdeoEvBST7mXDs0fQ>
 <xmx:9zVKXqmZ0OfQBdhlsaEDEBatqDcG0KO7Y53JAD32QhtLT8QRgoZ1nw>
 <xmx:9zVKXhB8ZmEXVu6Ouwy5NWkTUqXbTJXBRX34reoP_uS_BN1MlHO2ng>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id DA6E8328005A;
 Mon, 17 Feb 2020 01:43:02 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 20/34] ASoC: sun8i-codec: Support 8/20/24-bit word sizes
Date: Mon, 17 Feb 2020 00:42:36 -0600
Message-Id: <20200217064250.15516-21-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224304_703626_C6EF4E7C 
X-CRM114-Status: GOOD (  14.60  )
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

The codec hardware natively supports 8, 16, 20, and 24-bit word sizes.
However, it only supports slot widths that are a multiple of 16 bits.
So we can only support the 20-bit and 24-bit formats that are padded to
32 bits. This doesn't cost anything, because the DMA controller on the
CPU side only supports power-of-two byte sizes anyway.

S8, S16_LE, and S24_LE were tested using a modified version of the
sun4i-i2s driver as the CPU end of the DAI link. S20_LE was not tested
due to poor userspace support; it should work the same.

In 8 bit mono mode, the computed BCLK/LRCK divider will be less than the
minimum value 16. This is fine; there will just be padding after the
data bits, similar to how S20_LE and S24_LE always have padding.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 47 ++++++++++++++++++++++++-----------
 1 file changed, 32 insertions(+), 15 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index 2df899daec67..b915e62fa005 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -45,7 +45,6 @@
 #define SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV		9
 #define SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV		6
 #define SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ		4
-#define SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_16		(1 << 4)
 #define SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT		2
 #define SUN8I_AIF1CLK_CTRL_AIF1_MONO_PCM		1
 #define SUN8I_AIF1_ADCDAT_CTRL				0x044
@@ -87,6 +86,10 @@
 #define SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_MASK	GENMASK(5, 4)
 #define SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT_MASK	GENMASK(3, 2)
 
+#define SUN8I_AIF_PCM_FMTS  (SNDRV_PCM_FMTBIT_S8|\
+			     SNDRV_PCM_FMTBIT_S16_LE|\
+			     SNDRV_PCM_FMTBIT_S20_LE|\
+			     SNDRV_PCM_FMTBIT_S24_LE)
 #define SUN8I_AIF_PCM_RATES (SNDRV_PCM_RATE_8000_48000|\
 			     SNDRV_PCM_RATE_96000|\
 			     SNDRV_PCM_RATE_192000|\
@@ -307,7 +310,9 @@ static int sun8i_codec_get_lrck_div(unsigned int channels,
 {
 	unsigned int div = word_size * channels;
 
-	if (div < 16 || div > 256)
+	if (div < 16)
+		div = 16;
+	if (div > 256)
 		return -EINVAL;
 
 	return ilog2(div) - 4;
@@ -318,27 +323,19 @@ static int sun8i_codec_hw_params(struct snd_pcm_substream *substream,
 				 struct snd_soc_dai *dai)
 {
 	struct sun8i_codec *scodec = snd_soc_component_get_drvdata(dai->component);
+	unsigned int slot_width = params_physical_width(params);
 	unsigned int channels = params_channels(params);
 	int sample_rate, lrck_div;
 	u8 bclk_div;
 	u32 value;
 
-	/*
-	 * The CPU DAI handles only a sample of 16 bits. Configure the
-	 * codec to handle this type of sample resolution.
-	 */
-	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
-			   SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_MASK,
-			   SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_16);
-
 	bclk_div = sun8i_codec_get_bclk_div(scodec, params_rate(params),
-					    channels, 16);
+					    channels, slot_width);
 	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
 			   SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV_MASK,
 			   bclk_div << SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV);
 
-	lrck_div = sun8i_codec_get_lrck_div(channels,
-					    params_physical_width(params));
+	lrck_div = sun8i_codec_get_lrck_div(channels, slot_width);
 	if (lrck_div < 0)
 		return lrck_div;
 
@@ -346,6 +343,26 @@ static int sun8i_codec_hw_params(struct snd_pcm_substream *substream,
 			   SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV_MASK,
 			   lrck_div << SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV);
 
+	switch (params_width(params)) {
+	case 8:
+		value = 0x0;
+		break;
+	case 16:
+		value = 0x1;
+		break;
+	case 20:
+		value = 0x2;
+		break;
+	case 24:
+		value = 0x3;
+		break;
+	default:
+		return -EINVAL;
+	}
+	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
+			   SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_MASK,
+			   value << SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ);
+
 	value = channels == 1;
 	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
 			   BIT(SUN8I_AIF1CLK_CTRL_AIF1_MONO_PCM),
@@ -533,7 +550,7 @@ static struct snd_soc_dai_driver sun8i_codec_dai = {
 		.channels_min = 1,
 		.channels_max = 2,
 		.rates = SUN8I_AIF_PCM_RATES,
-		.formats = SNDRV_PCM_FMTBIT_S16_LE,
+		.formats = SUN8I_AIF_PCM_FMTS,
 	},
 	/* capture capabilities */
 	.capture = {
@@ -541,7 +558,7 @@ static struct snd_soc_dai_driver sun8i_codec_dai = {
 		.channels_min = 1,
 		.channels_max = 2,
 		.rates = SUN8I_AIF_PCM_RATES,
-		.formats = SNDRV_PCM_FMTBIT_S16_LE,
+		.formats = SUN8I_AIF_PCM_FMTS,
 		.sig_bits = 24,
 	},
 	/* pcm operations */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
