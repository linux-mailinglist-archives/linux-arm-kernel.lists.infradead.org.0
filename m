Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27856160B0F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:49:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8yvfqmy3Z6g1fDjvB0BsLQegVd31kirEhenTnl8A+Q=; b=ELq1j475jfE/Lt
	MlM/jlYoVt9HIML5aRyzWmy8x3gm7cDp8q3Q134yd9oQL4aIGsVm8lNDyQwOf8aMUsc/6kr0YZtfb
	KyZCICVP9bupdOVBBifuJTQth928xbMHMalYFy27Oacehq7AHafRtQwMPjQSgcg9w+EQCgCF4m5Sl
	TLk0gPZHA7EiXG0qAe5/CZRbouaoJODdqIBFk+Tgu5Zgl1T/48E7bAFjmGEulEKvDRlMaioHc0UWM
	xtYW1tPqXZE+1H8T4AHRZiDeqzQ8Eaag3sQnnw2a3MYM0J8DOa05w/U2E4UrHvuBiYEwvRzpSKOPE
	UzQ7XWMeP7QlW6vUWzdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aDZ-0001Fn-9F; Mon, 17 Feb 2020 06:49:21 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7T-0003oA-ML
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:05 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 07EAC53D5;
 Mon, 17 Feb 2020 01:43:03 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=buZiaTnEqm5DH
 U8YzwhYJsnJNFjdJst45DN+p+GxpTc=; b=kNIOJ+rfmN1lPi0tn+TttrWHKN9L+
 L2bZVT62wMcFR4mz+K3SH0tPfI1MwpuYWTpri7Mbi9gCwihLBWmqw6SxuqQdTrxN
 t9b5oM9Agh8DNZ9VBjii219iQuJM7eoD23u3Ykc4GoyUuqCEqTNtk6MpOSOhFTli
 Xr6OMIyPBmQEjWQ7g8KfeyuTFqxgEGCrf4liMhjvbc0cqFCBBXk4hf6vN1cEmxVq
 zJ5xAH8JFVAHVXBusXcJsBFRJdzPppmrogb3PM9j6jbDy1Q8xriePcbffrpjFDaK
 5geWVYuQl2u8H0Hqfbd0kJZIECAjsfyRABsMA3DVteOsMxS5wEw57OnNw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=buZiaTnEqm5DHU8YzwhYJsnJNFjdJst45DN+p+GxpTc=; b=vynmf9ZJ
 tbgAM9KDNydNd0H56cXFsSVp1aYVrV3map3U03rGp0vdUQf452wVPyLlgukvhwxN
 u2uFBAwNsN3nyRkC7LHn+lquFMrxelRS489PJvemEoFH4hgylwdRDcp/avYF7UuS
 5U8ZfVI8qRsGnE+Btr8kM5pRTnIO2grtOTw3k8A0Qkjp7OKWLez2Wm+540vpTyDx
 fFe7bolpakgdLN4FnEuVfz7zmPSx7HLd+Di7bOODELYIiyusXIZP+viPNbP537/J
 ZFICRpmFr1iC6Us/a5eULLO49tT6OZx++CJCr60vwgrOhoplBby1nd9rwMXYJidR
 VSdkDkA7pRn1sw==
X-ME-Sender: <xms:9jVKXoKLkxyCmdj47pjvko4CjxeZFYBGN1r0gPiqSPeAy8lnEJM7Xw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedujeenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:9jVKXmpwh_GVvDt2Zjbo62aLRQjanGviCXCO7raOQ2V5zIYx8SJLrA>
 <xmx:9jVKXvg0XonRxLJc9HWPGk6_3Y69d1rqhhOfE3zufGIkXxKfgIW80g>
 <xmx:9jVKXlapudbBbQTDJ_whu2mpPmDJIwdsESuJ5Hrd510eXRumvvB5sA>
 <xmx:9zVKXicV6aP1V1KfsmtHCJ7paxetTOak3gbdthOLMykrsJwFHE9IHw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 463C8328005E;
 Mon, 17 Feb 2020 01:43:02 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 19/34] ASoC: sun8i-codec: Support mono DAI configurations
Date: Mon, 17 Feb 2020 00:42:35 -0600
Message-Id: <20200217064250.15516-20-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224303_907669_6F37EEEF 
X-CRM114-Status: GOOD (  10.75  )
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

Calculate the correct clock rate for a mono configuration.

The AIFs have a bit that must be set for mono input/output.
Set the bit when the number of channels is 1.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index f8cde149a92b..2df899daec67 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -47,6 +47,7 @@
 #define SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ		4
 #define SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_16		(1 << 4)
 #define SUN8I_AIF1CLK_CTRL_AIF1_DATA_FMT		2
+#define SUN8I_AIF1CLK_CTRL_AIF1_MONO_PCM		1
 #define SUN8I_AIF1_ADCDAT_CTRL				0x044
 #define SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0L_ENA		15
 #define SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0R_ENA		14
@@ -280,10 +281,11 @@ static const struct sun8i_codec_clk_div sun8i_codec_bclk_div[] = {
 
 static u8 sun8i_codec_get_bclk_div(struct sun8i_codec *scodec,
 				   unsigned int rate,
+				   unsigned int channels,
 				   unsigned int word_size)
 {
 	unsigned long clk_rate = clk_get_rate(scodec->clk_module);
-	unsigned int div = clk_rate / rate / word_size / 2;
+	unsigned int div = clk_rate / rate / word_size / channels;
 	unsigned int best_val = 0, best_diff = ~0;
 	int i;
 
@@ -316,8 +318,10 @@ static int sun8i_codec_hw_params(struct snd_pcm_substream *substream,
 				 struct snd_soc_dai *dai)
 {
 	struct sun8i_codec *scodec = snd_soc_component_get_drvdata(dai->component);
+	unsigned int channels = params_channels(params);
 	int sample_rate, lrck_div;
 	u8 bclk_div;
+	u32 value;
 
 	/*
 	 * The CPU DAI handles only a sample of 16 bits. Configure the
@@ -327,12 +331,13 @@ static int sun8i_codec_hw_params(struct snd_pcm_substream *substream,
 			   SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_MASK,
 			   SUN8I_AIF1CLK_CTRL_AIF1_WORD_SIZ_16);
 
-	bclk_div = sun8i_codec_get_bclk_div(scodec, params_rate(params), 16);
+	bclk_div = sun8i_codec_get_bclk_div(scodec, params_rate(params),
+					    channels, 16);
 	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
 			   SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV_MASK,
 			   bclk_div << SUN8I_AIF1CLK_CTRL_AIF1_BCLK_DIV);
 
-	lrck_div = sun8i_codec_get_lrck_div(params_channels(params),
+	lrck_div = sun8i_codec_get_lrck_div(channels,
 					    params_physical_width(params));
 	if (lrck_div < 0)
 		return lrck_div;
@@ -341,6 +346,11 @@ static int sun8i_codec_hw_params(struct snd_pcm_substream *substream,
 			   SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV_MASK,
 			   lrck_div << SUN8I_AIF1CLK_CTRL_AIF1_LRCK_DIV);
 
+	value = channels == 1;
+	regmap_update_bits(scodec->regmap, SUN8I_AIF1CLK_CTRL,
+			   BIT(SUN8I_AIF1CLK_CTRL_AIF1_MONO_PCM),
+			   value << SUN8I_AIF1CLK_CTRL_AIF1_MONO_PCM);
+
 	sample_rate = sun8i_codec_get_hw_rate(params);
 	if (sample_rate < 0)
 		return sample_rate;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
