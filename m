Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34316160B19
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:51:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bfIQMFo9+XgETBtI65YO/DwcLuj8AoMUBQTLf+KavbY=; b=qH1EFqyNtnFYbG
	oIjJeYdnXUVkSGb1POhuJiUcT7BCmE121i5h8SjNjYob4wLhKROZZLn5MpFyogRojaoRZvvEjqJpb
	PljSBV0LIQVRZ/3Y5gmlgGtn9Ae9pJmK81IezxQHYebNOWmIvtN8yfNUJGC/O4LjtsfeP/jRBUs3R
	f4sQr0TbtTDsUoAy1b9tmchH4bS9hLqSLKU2LODqEF22bTyrQOiolD49tTdM2361B64bXgnTveA23
	NX4zQY9V77mwee6f+ygIHjaNu+T3iK7GUDdw/HlbKP+Of1KJcK/RqvUyW8ivGck4wc/PeI9CcKF/4
	12vOngyElf5ktFsru3cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aF4-0003Uv-My; Mon, 17 Feb 2020 06:50:54 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7V-0003q9-OX
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:08 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id CCF19552C;
 Mon, 17 Feb 2020 01:43:04 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=DBdByb7xpH/PX
 xP1Vq/SOFf147fSI39LL4w1DRyW60M=; b=gfcAKqPHI/PCNWUOJLTb4aqKLiziN
 RbVe9b+TOHRmARy8fjMcWTPclAQQRrFPTizZkrsi2UjJaaYhOBZw3b7V+MtM4KEJ
 J9G3/7EpOaiBwNr1N7vntPEt3nXmwYX+pIX2rS4gh4kEJtR3NTySnGAvJHRIEvxR
 B80hlPS69ieN/W/abS8kMt/xHbWofoVjmiE8bB0NqO3C56d1EKt9UD5FR4wmAD8n
 F0D5wBu2wryiM1PT1xm1pAWaSkjEKe2ZKQxbvz0c8suQ1bK2mEs3WE6SRnQ3lm+S
 oFuuSWVWISMhLQUt3pqAKxmJ5gIxaQpomna11o8AhhTQSkVmRqUNLKHGQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=DBdByb7xpH/PXxP1Vq/SOFf147fSI39LL4w1DRyW60M=; b=0d10K7zW
 IyrE4ZaBnbYuf++JeGo1aWD2p+4S0ZrtikqBgn9XrRBrL6prMOq9N77o4k6wQfqG
 OTxrBtOYe9lx+58W8qO0e4eyNCSn9iHyF0GiI4BjqT8OWkZkXlB/G2qu636vyEpi
 9SBDld6S+rTJGhNGCGUkziFGyO8MCUziAPPvR+1vHDl+LHewvhu2+14RP8vSL3nk
 kH8EVxfciAbjsXIi1mRkF01koK0JEki6eWvioB/IdaFQ+fX5oURrkYa923vukO+M
 vkRvkyE24s68W/oj8rfra+LyLWWIpaQDKJIsU1VSCpi6f1vBQx3ksQoFtHyPf+8I
 d8zlENB1a5a86A==
X-ME-Sender: <xms:-DVKXv6ebhxOmcinyiXb6ejtOG_lPYUeYqyjZh2xxtRSBg34cBfTmA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedujeenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:-DVKXu9YdFOWN83IahKDNl6kKKYUrGbXLiiAumicc5nG-x3RusSnHg>
 <xmx:-DVKXlizALPX0isjQOZRM0kWxZbOle_-ShXZH_nuqs9PJMWi4GP-gg>
 <xmx:-DVKXoTf-DJ0peZMTokfm2IL7J4q4e_RCuSeZtUzXEpzMKNR4dK5gw>
 <xmx:-DVKXiYFytttnwEMOw7v79ErpTSV8JEU_-pg5IybOmfEJQBPKMx8XQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1A9353280064;
 Mon, 17 Feb 2020 01:43:04 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 22/34] ASoC: sun8i-codec: Clean up AIF1 Slot 0 widgets
Date: Mon, 17 Feb 2020 00:42:38 -0600
Message-Id: <20200217064250.15516-23-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224306_050430_C5ECBE2C 
X-CRM114-Status: GOOD (  10.29  )
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

The driver currently confuses AIF1 AD0 with the ADC. They are
independent. The ADC can be used without AIF1, and AIF1 AD0 can pull
audio from other sources, such as AIF1 DA0 and AIF2. There is no mixer
associated with the main ADC; the mixers are associated with an output,
in this case AIF1 AD0.

This commit renames the AIF1 Slot 0 widgets and routes to match their
actual usage, and sorts them in a topological sink<-source ordering.

Because each of the inputs is sent to multiple mixers, the controls must
be renamed to include both the input name and the mixer name.

It also sets the correct channel for the AIF inputs/outputs, so that the
minimal number of DAPM widgets are turned on for mono routing.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 80 ++++++++++++++++++-----------------
 1 file changed, 42 insertions(+), 38 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index 0561d8d2e941..6f589e93850a 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -401,41 +401,48 @@ static const struct snd_kcontrol_new sun8i_dac_mixer_controls[] = {
 			SUN8I_DAC_MXR_SRC_DACR_MXR_SRC_ADCR, 1, 0),
 };
 
-static const struct snd_kcontrol_new sun8i_input_mixer_controls[] = {
-	SOC_DAPM_DOUBLE("AIF1 Slot 0 Digital ADC Capture Switch",
+static const struct snd_kcontrol_new sun8i_aif1_ad0_mixer_controls[] = {
+	SOC_DAPM_DOUBLE("AIF1 AD0 Mixer AIF1 DA0 Capture Switch",
 			SUN8I_AIF1_MXR_SRC,
 			SUN8I_AIF1_MXR_SRC_AD0L_MXR_SRC_AIF1DA0L,
 			SUN8I_AIF1_MXR_SRC_AD0R_MXR_SRC_AIF1DA0R, 1, 0),
-	SOC_DAPM_DOUBLE("AIF2 Digital ADC Capture Switch", SUN8I_AIF1_MXR_SRC,
+	SOC_DAPM_DOUBLE("AIF1 AD0 Mixer AIF2 DAC Capture Switch",
+			SUN8I_AIF1_MXR_SRC,
 			SUN8I_AIF1_MXR_SRC_AD0L_MXR_SRC_AIF2DACL,
 			SUN8I_AIF1_MXR_SRC_AD0R_MXR_SRC_AIF2DACR, 1, 0),
-	SOC_DAPM_DOUBLE("AIF1 Data Digital ADC Capture Switch",
+	SOC_DAPM_DOUBLE("AIF1 AD0 Mixer ADC Capture Switch",
 			SUN8I_AIF1_MXR_SRC,
 			SUN8I_AIF1_MXR_SRC_AD0L_MXR_SRC_ADCL,
 			SUN8I_AIF1_MXR_SRC_AD0R_MXR_SRC_ADCR, 1, 0),
-	SOC_DAPM_DOUBLE("AIF2 Inv Digital ADC Capture Switch",
+	SOC_DAPM_DOUBLE("AIF1 AD0 Mixer AIF2 DAC Rev Capture Switch",
 			SUN8I_AIF1_MXR_SRC,
 			SUN8I_AIF1_MXR_SRC_AD0L_MXR_SRC_AIF2DACR,
 			SUN8I_AIF1_MXR_SRC_AD0R_MXR_SRC_AIF2DACL, 1, 0),
 };
 
 static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
-	/* Analog DAC AIF */
-	SND_SOC_DAPM_AIF_IN("AIF1 Slot 0 Left", "Playback", 0,
-			    SUN8I_AIF1_DACDAT_CTRL,
-			    SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0L_ENA, 0),
-	SND_SOC_DAPM_AIF_IN("AIF1 Slot 0 Right", "Playback", 0,
-			    SUN8I_AIF1_DACDAT_CTRL,
-			    SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0R_ENA, 0),
-
-	/* Analog ADC AIF */
-	SND_SOC_DAPM_AIF_OUT("AIF1 Slot 0 Left ADC", "Capture", 0,
+	/* AIF "ADC" Outputs */
+	SND_SOC_DAPM_AIF_OUT("AIF1 AD0 Left", "Capture", 0,
 			     SUN8I_AIF1_ADCDAT_CTRL,
 			     SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0L_ENA, 0),
-	SND_SOC_DAPM_AIF_OUT("AIF1 Slot 0 Right ADC", "Capture", 0,
+	SND_SOC_DAPM_AIF_OUT("AIF1 AD0 Right", "Capture", 1,
 			     SUN8I_AIF1_ADCDAT_CTRL,
 			     SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0R_ENA, 0),
 
+	/* AIF "ADC" Mixers */
+	SOC_MIXER_ARRAY("AIF1 AD0 Left Mixer", SND_SOC_NOPM, 0, 0,
+			sun8i_aif1_ad0_mixer_controls),
+	SOC_MIXER_ARRAY("AIF1 AD0 Right Mixer", SND_SOC_NOPM, 0, 0,
+			sun8i_aif1_ad0_mixer_controls),
+
+	/* AIF "DAC" Inputs */
+	SND_SOC_DAPM_AIF_IN("AIF1 DA0 Left", "Playback", 0,
+			    SUN8I_AIF1_DACDAT_CTRL,
+			    SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0L_ENA, 0),
+	SND_SOC_DAPM_AIF_IN("AIF1 DA0 Right", "Playback", 1,
+			    SUN8I_AIF1_DACDAT_CTRL,
+			    SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0R_ENA, 0),
+
 	/* Main DAC Outputs (connected to analog codec DAPM context) */
 	SND_SOC_DAPM_PGA("DAC Left", SND_SOC_NOPM, 0, 0, NULL, 0),
 	SND_SOC_DAPM_PGA("DAC Right", SND_SOC_NOPM, 0, 0, NULL, 0),
@@ -448,10 +455,6 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 			sun8i_dac_mixer_controls),
 	SOC_MIXER_ARRAY("Right Digital DAC Mixer", SND_SOC_NOPM, 0, 0,
 			sun8i_dac_mixer_controls),
-	SOC_MIXER_ARRAY("Left Digital ADC Mixer", SND_SOC_NOPM, 0, 0,
-			sun8i_input_mixer_controls),
-	SOC_MIXER_ARRAY("Right Digital ADC Mixer", SND_SOC_NOPM, 0, 0,
-			sun8i_input_mixer_controls),
 
 	/* Main ADC Inputs (connected to analog codec DAPM context) */
 	SND_SOC_DAPM_PGA("ADC Left", SND_SOC_NOPM, 0, 0, NULL, 0),
@@ -485,15 +488,22 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 
 static const struct snd_soc_dapm_route sun8i_codec_dapm_routes[] = {
 	/* AIF "ADC" Output Routes */
-	{ "AIF1 Slot 0 Left ADC", NULL, "Left Digital ADC Mixer" },
-	{ "AIF1 Slot 0 Right ADC", NULL, "Right Digital ADC Mixer" },
+	{ "AIF1 AD0 Left", NULL, "AIF1 AD0 Left Mixer" },
+	{ "AIF1 AD0 Right", NULL, "AIF1 AD0 Right Mixer" },
 
-	{ "AIF1 Slot 0 Left ADC", NULL, "AIF1CLK" },
-	{ "AIF1 Slot 0 Right ADC", NULL, "AIF1CLK" },
+	{ "AIF1 AD0 Left", NULL, "AIF1CLK" },
+	{ "AIF1 AD0 Right", NULL, "AIF1CLK" },
+
+	/* AIF "ADC" Mixer Routes */
+	{ "AIF1 AD0 Left Mixer", "AIF1 AD0 Mixer AIF1 DA0 Capture Switch", "AIF1 DA0 Left" },
+	{ "AIF1 AD0 Left Mixer", "AIF1 AD0 Mixer ADC Capture Switch", "ADC Left" },
+
+	{ "AIF1 AD0 Right Mixer", "AIF1 AD0 Mixer AIF1 DA0 Capture Switch", "AIF1 DA0 Right" },
+	{ "AIF1 AD0 Right Mixer", "AIF1 AD0 Mixer ADC Capture Switch", "ADC Right" },
 
 	/* AIF "DAC" Input Routes */
-	{ "AIF1 Slot 0 Left", NULL, "AIF1CLK" },
-	{ "AIF1 Slot 0 Right", NULL, "AIF1CLK" },
+	{ "AIF1 DA0 Left", NULL, "AIF1CLK" },
+	{ "AIF1 DA0 Right", NULL, "AIF1CLK" },
 
 	/* DAC Routes */
 	{ "DAC Left", NULL, "Left Digital DAC Mixer" },
@@ -504,25 +514,19 @@ static const struct snd_soc_dapm_route sun8i_codec_dapm_routes[] = {
 
 	/* DAC Mixer Routes */
 	{ "Left Digital DAC Mixer", "AIF1 Slot 0 Digital DAC Playback Switch",
-	  "AIF1 Slot 0 Left"},
+	  "AIF1 DA0 Left"},
 	{ "Right Digital DAC Mixer", "AIF1 Slot 0 Digital DAC Playback Switch",
-	  "AIF1 Slot 0 Right"},
+	  "AIF1 DA0 Right"},
 
 	/* ADC Routes */
 	{ "ADC Left", NULL, "ADC" },
 	{ "ADC Right", NULL, "ADC" },
 
-	/* ADC Mixer Routes */
-	{ "Left Digital ADC Mixer", "AIF1 Data Digital ADC Capture Switch",
-	  "ADC Left" },
-	{ "Right Digital ADC Mixer", "AIF1 Data Digital ADC Capture Switch",
-	  "ADC Right" },
-
 	/* Module Supply Routes */
-	{ "AIF1 Slot 0 Left ADC", NULL, "RST AIF1" },
-	{ "AIF1 Slot 0 Right ADC", NULL, "RST AIF1" },
-	{ "AIF1 Slot 0 Left", NULL, "RST AIF1" },
-	{ "AIF1 Slot 0 Right", NULL, "RST AIF1" },
+	{ "AIF1 AD0 Left", NULL, "RST AIF1" },
+	{ "AIF1 AD0 Right", NULL, "RST AIF1" },
+	{ "AIF1 DA0 Left", NULL, "RST AIF1" },
+	{ "AIF1 DA0 Right", NULL, "RST AIF1" },
 
 	{ "ADC", NULL, "RST ADC" },
 	{ "DAC", NULL, "RST DAC" },
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
