Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A25160B18
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:50:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqZ+fYQrxZdsZYTyRbJkMG4253nNLksJJFavfzU1xnY=; b=SCsut/umKCM1I6
	Xh9kvpvu0N8GsVS6q9TygM60G+G0PeTkdI1MFOXSeHt5EVTlXt2lMGAXjsiOq8ZQwRQQqst15eXeK
	+mbw8x5YMDqoCgRip9j6Q0rqxHPzhI4BgX6CC6me+7GshlZMV8UeXJ2JU3UgGe7jec3wM5Hf6NL3W
	IRLW+CVbHlhJSg6zmS0nNn6D22U7vRjiq3OIqL84AzBnVahffl6tEUaSAQ0mpgBkVGBwjMEjsopta
	8t3ZJUWVFsrHYZPGYKffFKzPHmJHG7LSY7DEv4cgnudq0GRw6QiNl3ZD7LSBpRygSsGEC9wFa7J+I
	yoZEeDG3u2atBoNFJGVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aEh-0003Db-Q4; Mon, 17 Feb 2020 06:50:31 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7U-0003pP-Vi
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:08 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 38F7055D3;
 Mon, 17 Feb 2020 01:43:04 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=8yoXX805b9zsP
 6c+DEUGNPwPSVfxywvRYUAdiRbhh9k=; b=ZdpdafcLWsyWiQayO9SV5VzkvsGpc
 9UjD29c6j8EgAslghI04rpmjXxLjtXNj2M8+dAJUl9CVEyVI95/hQXHRrADuFzAm
 LAvYSkpgNWCj2kEHYB8C3fA72jczb9T3qGas2bd+8jbNIVMT1phAfTqoJ+Mx8Auw
 vHXAeWEgpJvrltCDJkMVoUOWGqgnzHD0MfzjsFKjmRFm8E9z2N7EgTQ/9ySQUYpx
 gry95ZTAd38mGvXvWZmQZujLp/dTrB3IVC6412YUmAfIsJrWVW0OYkQNFj4wR3wo
 joxxE6OcL4YrtLelno4x+y/9tpUn416BZY6K4M4cxKGx0shGCP+A4AWig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=8yoXX805b9zsP6c+DEUGNPwPSVfxywvRYUAdiRbhh9k=; b=EVo6bp2p
 VZkUQeD0Qy0uHkppcjvfBarsUAwFBukADnVx6P0VKVO/u6dDHEkGZep7HuAEw4ch
 +u5p+MHju93fidvdX9oxjKt2c1/DiGEflYpHJuFP7dWQz7PcL76n/BdhB1DfC4Aa
 h/v68mTt4qMrG5tiHdGTIpwkJxPGJ7juYQQ7pwOqbjDMb/FSV05rMrJX2uYMadMK
 6KwX/769BPK/sz+WBwrukGS/Y3Zk9FTe8dj+QW/R7LCtulN3plkUYynMKahsYxtt
 Lo/FZyoAdMMp30a4KIkXe0U+3FpHBB2wmFf3BgQO/81arUHrgAACW3l8Gxjvok45
 IhPXABJl0LLaRA==
X-ME-Sender: <xms:-DVKXkkS42iHr0QRxK-nNxvs7k5KdveZQq0yH_4b6IIPHFOANLcekg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedujeenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:-DVKXlX7SZeWmnxDfDVaq-JlBASGEqtBozTMsh-DubaGAxNQQQldww>
 <xmx:-DVKXgQ6UG0kJh-tsfaBIG-6g2n_cscYnkMixX5qoUhwJO7edonoDw>
 <xmx:-DVKXoD-t5_oIdErt9Pr_anTcB8VjkVe6aUyt6CoQZ8f3L83K0SmRg>
 <xmx:-DVKXh0DyaPRFClukCgxCLkxodJf6EODBPbuwXXcfOeCNp9loyjN3A>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7A670328005E;
 Mon, 17 Feb 2020 01:43:03 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 21/34] ASoC: sun8i-codec: Clean up module/clock hierarchy
Date: Mon, 17 Feb 2020 00:42:37 -0600
Message-Id: <20200217064250.15516-22-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224305_395740_79136B8D 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
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
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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

The clock hieriarchy in the codec is:

       MCLK/PLL      MCLK/PLL
          |              |
       AIF1CLK        AIF2CLK
         |    \      /    |
         |     SYSCLK     |
         |       ||       |
         |   MODCLK ***   |
         |       ||       |
         |    RST ****    |
         |   /  /  \  \   |
         AIF1 ADC  DAC AIF2

Currently, this driver makes some design decisions:
 - AIF1CLK/AIF2CLK should always have the PLL as their parent. MCLK may
   not be running, and it has the same PLL as its parent anyway.
 - SYSCLK should always have AIF1CLK as its parent. There is no easy way
   for DAPM to automatically switch clock parents based on which AIFs
   are in use, and AIF1 is most likely to be used. Even in the case
   where only AIF2 is used, the extra power consumption by also running
   AIF1CLK should be minimal.

This commit updates the driver to match the hardware clock hierarchy:
 - Since the clock parent decisions are static, they are configured once
   in the component's probe function. They do not need DAPM widgets.
 - ADC/DAC supplies are moved immediately after the widgets they supply.
 - Module resets are moved before module clocks to maintain topological
   ordering (and they are sorted by bit order within the register).
 - AIF1 module is supplied by both SYSCLK (via MODCLK AIF1) and AIF1CLK.
 - ADC/DAC modules are supplied by SYSCLK only, not MODCLK AIF1.
 - SYSCLK is supplied by AIF1CLK.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 114 ++++++++++++++++++++--------------
 1 file changed, 68 insertions(+), 46 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index b915e62fa005..0561d8d2e941 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -24,10 +24,11 @@
 
 #define SUN8I_SYSCLK_CTL				0x00c
 #define SUN8I_SYSCLK_CTL_AIF1CLK_ENA			11
-#define SUN8I_SYSCLK_CTL_AIF1CLK_SRC_PLL		9
-#define SUN8I_SYSCLK_CTL_AIF1CLK_SRC			8
+#define SUN8I_SYSCLK_CTL_AIF1CLK_SRC_PLL		(0x3 << 8)
 #define SUN8I_SYSCLK_CTL_SYSCLK_ENA			3
 #define SUN8I_SYSCLK_CTL_SYSCLK_SRC			0
+#define SUN8I_SYSCLK_CTL_SYSCLK_SRC_AIF1CLK		(0x0 << 0)
+#define SUN8I_SYSCLK_CTL_SYSCLK_SRC_AIF2CLK		(0x1 << 0)
 #define SUN8I_MOD_CLK_ENA				0x010
 #define SUN8I_MOD_CLK_ENA_AIF1				15
 #define SUN8I_MOD_CLK_ENA_ADC				3
@@ -78,6 +79,7 @@
 #define SUN8I_DAC_MXR_SRC_DACR_MXR_SRC_AIF2DACR		9
 #define SUN8I_DAC_MXR_SRC_DACR_MXR_SRC_ADCR		8
 
+#define SUN8I_SYSCLK_CTL_AIF1CLK_SRC_MASK	GENMASK(9, 8)
 #define SUN8I_SYS_SR_CTRL_AIF1_FS_MASK		GENMASK(15, 12)
 #define SUN8I_SYS_SR_CTRL_AIF2_FS_MASK		GENMASK(11, 8)
 #define SUN8I_AIF1CLK_CTRL_AIF1_CLK_INV_MASK	GENMASK(14, 13)
@@ -418,12 +420,6 @@ static const struct snd_kcontrol_new sun8i_input_mixer_controls[] = {
 };
 
 static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
-	/* Digital parts of the DACs and ADC */
-	SND_SOC_DAPM_SUPPLY("DAC", SUN8I_DAC_DIG_CTRL, SUN8I_DAC_DIG_CTRL_ENDA,
-			    0, NULL, 0),
-	SND_SOC_DAPM_SUPPLY("ADC", SUN8I_ADC_DIG_CTRL, SUN8I_ADC_DIG_CTRL_ENAD,
-			    0, NULL, 0),
-
 	/* Analog DAC AIF */
 	SND_SOC_DAPM_AIF_IN("AIF1 Slot 0 Left", "Playback", 0,
 			    SUN8I_AIF1_DACDAT_CTRL,
@@ -444,6 +440,9 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 	SND_SOC_DAPM_PGA("DAC Left", SND_SOC_NOPM, 0, 0, NULL, 0),
 	SND_SOC_DAPM_PGA("DAC Right", SND_SOC_NOPM, 0, 0, NULL, 0),
 
+	SND_SOC_DAPM_SUPPLY("DAC", SUN8I_DAC_DIG_CTRL,
+			    SUN8I_DAC_DIG_CTRL_ENDA, 0, NULL, 0),
+
 	/* DAC and ADC Mixers */
 	SOC_MIXER_ARRAY("Left Digital DAC Mixer", SND_SOC_NOPM, 0, 0,
 			sun8i_dac_mixer_controls),
@@ -458,60 +457,43 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 	SND_SOC_DAPM_PGA("ADC Left", SND_SOC_NOPM, 0, 0, NULL, 0),
 	SND_SOC_DAPM_PGA("ADC Right", SND_SOC_NOPM, 0, 0, NULL, 0),
 
-	/* Clocks */
+	SND_SOC_DAPM_SUPPLY("ADC", SUN8I_ADC_DIG_CTRL,
+			    SUN8I_ADC_DIG_CTRL_ENAD, 0, NULL, 0),
+
+	/* Module Resets */
+	SND_SOC_DAPM_SUPPLY("RST AIF1", SUN8I_MOD_RST_CTL,
+			    SUN8I_MOD_RST_CTL_AIF1, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("RST ADC", SUN8I_MOD_RST_CTL,
+			    SUN8I_MOD_RST_CTL_ADC, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("RST DAC", SUN8I_MOD_RST_CTL,
+			    SUN8I_MOD_RST_CTL_DAC, 0, NULL, 0),
+
+	/* Module Clocks */
 	SND_SOC_DAPM_SUPPLY("MODCLK AIF1", SUN8I_MOD_CLK_ENA,
 			    SUN8I_MOD_CLK_ENA_AIF1, 0, NULL, 0),
-	SND_SOC_DAPM_SUPPLY("MODCLK DAC", SUN8I_MOD_CLK_ENA,
-			    SUN8I_MOD_CLK_ENA_DAC, 0, NULL, 0),
 	SND_SOC_DAPM_SUPPLY("MODCLK ADC", SUN8I_MOD_CLK_ENA,
 			    SUN8I_MOD_CLK_ENA_ADC, 0, NULL, 0),
-	SND_SOC_DAPM_SUPPLY("AIF1", SUN8I_SYSCLK_CTL,
+	SND_SOC_DAPM_SUPPLY("MODCLK DAC", SUN8I_MOD_CLK_ENA,
+			    SUN8I_MOD_CLK_ENA_DAC, 0, NULL, 0),
+
+	/* Clock Supplies */
+	SND_SOC_DAPM_SUPPLY("AIF1CLK", SUN8I_SYSCLK_CTL,
 			    SUN8I_SYSCLK_CTL_AIF1CLK_ENA, 0, NULL, 0),
 	SND_SOC_DAPM_SUPPLY("SYSCLK", SUN8I_SYSCLK_CTL,
 			    SUN8I_SYSCLK_CTL_SYSCLK_ENA, 0, NULL, 0),
-
-	SND_SOC_DAPM_SUPPLY("AIF1 PLL", SUN8I_SYSCLK_CTL,
-			    SUN8I_SYSCLK_CTL_AIF1CLK_SRC_PLL, 0, NULL, 0),
-	/* Inversion as 0=AIF1, 1=AIF2 */
-	SND_SOC_DAPM_SUPPLY("SYSCLK AIF1", SUN8I_SYSCLK_CTL,
-			    SUN8I_SYSCLK_CTL_SYSCLK_SRC, 1, NULL, 0),
-
-	/* Module reset */
-	SND_SOC_DAPM_SUPPLY("RST AIF1", SUN8I_MOD_RST_CTL,
-			    SUN8I_MOD_RST_CTL_AIF1, 0, NULL, 0),
-	SND_SOC_DAPM_SUPPLY("RST DAC", SUN8I_MOD_RST_CTL,
-			    SUN8I_MOD_RST_CTL_DAC, 0, NULL, 0),
-	SND_SOC_DAPM_SUPPLY("RST ADC", SUN8I_MOD_RST_CTL,
-			    SUN8I_MOD_RST_CTL_ADC, 0, NULL, 0),
 };
 
 static const struct snd_soc_dapm_route sun8i_codec_dapm_routes[] = {
-	/* Clock Routes */
-	{ "AIF1", NULL, "SYSCLK AIF1" },
-	{ "AIF1 PLL", NULL, "AIF1" },
-	{ "RST AIF1", NULL, "AIF1 PLL" },
-	{ "MODCLK AIF1", NULL, "RST AIF1" },
-	{ "DAC", NULL, "MODCLK AIF1" },
-	{ "ADC", NULL, "MODCLK AIF1" },
-
-	{ "RST DAC", NULL, "SYSCLK" },
-	{ "MODCLK DAC", NULL, "RST DAC" },
-	{ "DAC", NULL, "MODCLK DAC" },
-
-	{ "RST ADC", NULL, "SYSCLK" },
-	{ "MODCLK ADC", NULL, "RST ADC" },
-	{ "ADC", NULL, "MODCLK ADC" },
-
 	/* AIF "ADC" Output Routes */
 	{ "AIF1 Slot 0 Left ADC", NULL, "Left Digital ADC Mixer" },
 	{ "AIF1 Slot 0 Right ADC", NULL, "Right Digital ADC Mixer" },
 
-	{ "AIF1 Slot 0 Left ADC", NULL, "MODCLK AIF1" },
-	{ "AIF1 Slot 0 Right ADC", NULL, "MODCLK AIF1" },
+	{ "AIF1 Slot 0 Left ADC", NULL, "AIF1CLK" },
+	{ "AIF1 Slot 0 Right ADC", NULL, "AIF1CLK" },
 
 	/* AIF "DAC" Input Routes */
-	{ "AIF1 Slot 0 Left", NULL, "MODCLK AIF1" },
-	{ "AIF1 Slot 0 Right", NULL, "MODCLK AIF1" },
+	{ "AIF1 Slot 0 Left", NULL, "AIF1CLK" },
+	{ "AIF1 Slot 0 Right", NULL, "AIF1CLK" },
 
 	/* DAC Routes */
 	{ "DAC Left", NULL, "Left Digital DAC Mixer" },
@@ -535,8 +517,47 @@ static const struct snd_soc_dapm_route sun8i_codec_dapm_routes[] = {
 	  "ADC Left" },
 	{ "Right Digital ADC Mixer", "AIF1 Data Digital ADC Capture Switch",
 	  "ADC Right" },
+
+	/* Module Supply Routes */
+	{ "AIF1 Slot 0 Left ADC", NULL, "RST AIF1" },
+	{ "AIF1 Slot 0 Right ADC", NULL, "RST AIF1" },
+	{ "AIF1 Slot 0 Left", NULL, "RST AIF1" },
+	{ "AIF1 Slot 0 Right", NULL, "RST AIF1" },
+
+	{ "ADC", NULL, "RST ADC" },
+	{ "DAC", NULL, "RST DAC" },
+
+	/* Module Reset Routes */
+	{ "RST AIF1", NULL, "MODCLK AIF1" },
+	{ "RST ADC", NULL, "MODCLK ADC" },
+	{ "RST DAC", NULL, "MODCLK DAC" },
+
+	/* Module Clock Routes */
+	{ "MODCLK AIF1", NULL, "SYSCLK" },
+	{ "MODCLK ADC", NULL, "SYSCLK" },
+	{ "MODCLK DAC", NULL, "SYSCLK" },
+
+	/* Clock Supply Routes */
+	{ "SYSCLK", NULL, "AIF1CLK" },
 };
 
+static int sun8i_codec_component_probe(struct snd_soc_component *component)
+{
+	struct sun8i_codec *scodec = snd_soc_component_get_drvdata(component);
+
+	/* Set AIF1CLK clock source to PLL */
+	regmap_update_bits(scodec->regmap, SUN8I_SYSCLK_CTL,
+			   SUN8I_SYSCLK_CTL_AIF1CLK_SRC_MASK,
+			   SUN8I_SYSCLK_CTL_AIF1CLK_SRC_PLL);
+
+	/* Set SYSCLK clock source to AIF1CLK */
+	regmap_update_bits(scodec->regmap, SUN8I_SYSCLK_CTL,
+			   BIT(SUN8I_SYSCLK_CTL_SYSCLK_SRC),
+			   SUN8I_SYSCLK_CTL_SYSCLK_SRC_AIF1CLK);
+
+	return 0;
+}
+
 static const struct snd_soc_dai_ops sun8i_codec_dai_ops = {
 	.hw_params = sun8i_codec_hw_params,
 	.set_fmt = sun8i_set_fmt,
@@ -573,6 +594,7 @@ static const struct snd_soc_component_driver sun8i_soc_component = {
 	.num_dapm_widgets	= ARRAY_SIZE(sun8i_codec_dapm_widgets),
 	.dapm_routes		= sun8i_codec_dapm_routes,
 	.num_dapm_routes	= ARRAY_SIZE(sun8i_codec_dapm_routes),
+	.probe			= sun8i_codec_component_probe,
 	.idle_bias_on		= 1,
 	.use_pmdown_time	= 1,
 	.endianness		= 1,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
