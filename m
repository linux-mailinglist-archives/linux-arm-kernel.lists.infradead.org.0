Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E61160B2B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 07:54:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHW0lXuL5XUoDwepkYEEKYPMuEda0UTkl7qQGN38ml8=; b=BKV0eMCYGPHiO8
	bF2J0k2XXcvJldfQd7XBZmAF/4wYBWYUWGxq7r6JKFFy/9jqu7/2s/3is/s+XyFGhfzGI3dZWUm5z
	PUczYFbH2TbQt0xMjwooC8MAppNC12crbnVAgkCl0WDEFATBY26XYF1XbkNkxN6zXoi6GhHf/ZgKL
	BMADZkyZgZ1TZ1Wy6wY36A4LD/Ng64D/A+mjChFD6UR1A1BmwWOi6l2G5NZCwK5+hG0DTcO/7o/q7
	wOVAJOUKI4oSA96otoQRZE/5tbXuvGCR8vbTes0WX+QxoWiwDy84aIbgkYAS6FZpiA2w1AZ+HTrs6
	taWbV0+Ny2dhsgqk+5Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3aIA-00061X-2M; Mon, 17 Feb 2020 06:54:06 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3a7Z-0003sd-5k
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 06:43:15 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id CA305556C;
 Mon, 17 Feb 2020 01:43:07 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 17 Feb 2020 01:43:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=pYU9YfFukonCc
 k11TA95UKeSPmk8o0GDgEu+qK2BUJ8=; b=YT+1gxF3geFrQobbnBnbPt0siMm2v
 rCOzx/uwPOBm+IIcxgzJ1yeJF0c/OtMr5hZadmfbLB6tRmCp6rUEHQn1E06l788t
 T6Ow456Su09p2h3JDZkHWBJTb/3m+NBrbywPL6V3TMXyE7hsBnhGWy+aMLrInd26
 vO9mntRs/HQVcwGHJXBj4OXt7JeNhoteITr1pSGv69QU8LutZGvjc1in52svsMlz
 rSHVfpRjgA9fAEXlE3FrAp4HYbnJAZfvfbZVlA8DJRbR51iW+xdYTENabUghww4S
 4x3SHxHGaXAfSS/3GsyoXlyJrxjlJ/luhpe9QaNnzuYhBM5uBrpOYnM7w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=pYU9YfFukonCck11TA95UKeSPmk8o0GDgEu+qK2BUJ8=; b=YH02rwZU
 +zfHwecIPM+swv7llhPdXyN6uehcpqx6Y6nPd848axeB2te+ZhSaZvU8TfeIgxYX
 5mz2BG7W+vizWo84EoCCdTAP2wfW35EfNSh6dunl4uxVlFylmwtjSi93/q2CXcIl
 KUxssCmglRpMvU8V99nJBhlkHtS4C82TVLtcryq0URDkL/v2yO6hCBAqzPAEU3jk
 2/GB9rk9ufnzbNDftVmtgpZZnA5mueiND9TI//Df07uxVNx25qUdoYNIOWGa0u3q
 t9cz13Y0Gw0dA1D5kJo9NadsBykfBzz3yZEVlUxim1TB144jzewQ4AVqIzQVZLso
 LUToqMljtdlTqg==
X-ME-Sender: <xms:-zVKXuA5m2oJHIaqUuRKXG0X4K07mHuvCNusbhYVog5RPuWZTxSY5w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdelkecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedujeenucfrrghr
 rghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:-zVKXmuXxe651xEnjDavQU2iyg2X02TBSwiYYmBr88YPzxeOzwKWbA>
 <xmx:-zVKXn5_PcO2ItLlsv2mU-Md2c3P9lRJFdFA4dBv8iDeUBA-MsrwTw>
 <xmx:-zVKXgpCQxEOuONHDH5CglmYOZKCty_v3qmjO8ebqWTSxdQu7KiOJg>
 <xmx:-zVKXuvF6HhOzemMQdCVPErAH0UV1oxKj1LNdWQLLf9__80r9zYIPA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 27F223280059;
 Mon, 17 Feb 2020 01:43:07 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>,
 =?UTF-8?q?Myl=C3=A8ne=20Josserand?= <mylene.josserand@free-electrons.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Subject: [RFC PATCH 27/34] ASoC: sun8i-codec: Add AIF mono/stereo controls
Date: Mon, 17 Feb 2020 00:42:43 -0600
Message-Id: <20200217064250.15516-28-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217064250.15516-1-samuel@sholland.org>
References: <20200217064250.15516-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_224309_640989_BA7F9467 
X-CRM114-Status: GOOD (  11.42  )
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

This allows changing the channel mapping for each digital input/output.
This is useful when the DAI (or the device on the other end of the link)
supports a different number of channels than are desired for routing,
for example when using an I2S-format DAI link with a mono endpoint.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun8i-codec.c | 160 +++++++++++++++++++++++++++++++---
 1 file changed, 146 insertions(+), 14 deletions(-)

diff --git a/sound/soc/sunxi/sun8i-codec.c b/sound/soc/sunxi/sun8i-codec.c
index 71c4c1f47201..fdb9bf346cc2 100644
--- a/sound/soc/sunxi/sun8i-codec.c
+++ b/sound/soc/sunxi/sun8i-codec.c
@@ -56,9 +56,13 @@
 #define SUN8I_AIF1_ADCDAT_CTRL				0x044
 #define SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0L_ENA		15
 #define SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0R_ENA		14
+#define SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0L_SRC		10
+#define SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0R_SRC		8
 #define SUN8I_AIF1_DACDAT_CTRL				0x048
 #define SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0L_ENA		15
 #define SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0R_ENA		14
+#define SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0L_SRC		10
+#define SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0R_SRC		8
 #define SUN8I_AIF1_MXR_SRC				0x04c
 #define SUN8I_AIF1_MXR_SRC_AD0L_MXR_SRC_AIF1DA0L	15
 #define SUN8I_AIF1_MXR_SRC_AD0L_MXR_SRC_AIF2DACL	14
@@ -71,9 +75,13 @@
 #define SUN8I_AIF2_ADCDAT_CTRL				0x084
 #define SUN8I_AIF2_ADCDAT_CTRL_AIF2_ADCL_ENA		15
 #define SUN8I_AIF2_ADCDAT_CTRL_AIF2_ADCR_ENA		14
+#define SUN8I_AIF2_ADCDAT_CTRL_AIF2_ADCL_SRC		10
+#define SUN8I_AIF2_ADCDAT_CTRL_AIF2_ADCR_SRC		8
 #define SUN8I_AIF2_DACDAT_CTRL				0x088
 #define SUN8I_AIF2_DACDAT_CTRL_AIF2_DACL_ENA		15
 #define SUN8I_AIF2_DACDAT_CTRL_AIF2_DACR_ENA		14
+#define SUN8I_AIF2_DACDAT_CTRL_AIF2_DACL_SRC		10
+#define SUN8I_AIF2_DACDAT_CTRL_AIF2_DACR_SRC		8
 #define SUN8I_AIF2_MXR_SRC				0x08c
 #define SUN8I_AIF2_MXR_SRC_ADCL_MXR_SRC_AIF1DA0L	15
 #define SUN8I_AIF2_MXR_SRC_ADCL_MXR_SRC_AIF1DA1L	14
@@ -511,6 +519,50 @@ static struct snd_soc_dai_driver sun8i_codec_dais[] = {
 	},
 };
 
+static const char *const sun8i_aif_stereo_mux_enum_names[] = {
+	"Stereo", "Reverse Stereo", "Sum Mono", "Mix Mono"
+};
+
+static SOC_ENUM_DOUBLE_DECL(sun8i_aif1_ad0_stereo_mux_enum,
+			    SUN8I_AIF1_ADCDAT_CTRL,
+			    SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0L_SRC,
+			    SUN8I_AIF1_ADCDAT_CTRL_AIF1_AD0R_SRC,
+			    sun8i_aif_stereo_mux_enum_names);
+
+static const struct snd_kcontrol_new sun8i_aif1_ad0_stereo_mux_control =
+	SOC_DAPM_ENUM("AIF1 AD0 Stereo Capture Route",
+		      sun8i_aif1_ad0_stereo_mux_enum);
+
+static SOC_ENUM_DOUBLE_DECL(sun8i_aif1_da0_stereo_mux_enum,
+			    SUN8I_AIF1_DACDAT_CTRL,
+			    SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0L_SRC,
+			    SUN8I_AIF1_DACDAT_CTRL_AIF1_DA0R_SRC,
+			    sun8i_aif_stereo_mux_enum_names);
+
+static const struct snd_kcontrol_new sun8i_aif1_da0_stereo_mux_control =
+	SOC_DAPM_ENUM("AIF1 DA0 Stereo Playback Route",
+		      sun8i_aif1_da0_stereo_mux_enum);
+
+static SOC_ENUM_DOUBLE_DECL(sun8i_aif2_adc_stereo_mux_enum,
+			    SUN8I_AIF2_ADCDAT_CTRL,
+			    SUN8I_AIF2_ADCDAT_CTRL_AIF2_ADCL_SRC,
+			    SUN8I_AIF2_ADCDAT_CTRL_AIF2_ADCR_SRC,
+			    sun8i_aif_stereo_mux_enum_names);
+
+static const struct snd_kcontrol_new sun8i_aif2_adc_stereo_mux_control =
+	SOC_DAPM_ENUM("AIF2 ADC Stereo Capture Route",
+		      sun8i_aif2_adc_stereo_mux_enum);
+
+static SOC_ENUM_DOUBLE_DECL(sun8i_aif2_dac_stereo_mux_enum,
+			    SUN8I_AIF2_DACDAT_CTRL,
+			    SUN8I_AIF2_DACDAT_CTRL_AIF2_DACL_SRC,
+			    SUN8I_AIF2_DACDAT_CTRL_AIF2_DACR_SRC,
+			    sun8i_aif_stereo_mux_enum_names);
+
+static const struct snd_kcontrol_new sun8i_aif2_dac_stereo_mux_control =
+	SOC_DAPM_ENUM("AIF2 DAC Stereo Playback Route",
+		      sun8i_aif2_dac_stereo_mux_enum);
+
 static const char *const sun8i_aif3_mux_enum_names[] = {
 	"None", "AIF2 Left", "AIF2 Right"
 };
@@ -609,6 +661,17 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 	SND_SOC_DAPM_AIF_OUT("AIF3 ADC", "AIF3 Capture", 0,
 			     SND_SOC_NOPM, 0, 0),
 
+	/* AIF "ADC" Mono/Stereo Muxes */
+	SND_SOC_DAPM_MUX("AIF1 AD0 Left Stereo Mux", SND_SOC_NOPM, 0, 0,
+			 &sun8i_aif1_ad0_stereo_mux_control),
+	SND_SOC_DAPM_MUX("AIF1 AD0 Right Stereo Mux", SND_SOC_NOPM, 0, 0,
+			 &sun8i_aif1_ad0_stereo_mux_control),
+
+	SND_SOC_DAPM_MUX("AIF2 ADC Left Stereo Mux", SND_SOC_NOPM, 0, 0,
+			 &sun8i_aif2_adc_stereo_mux_control),
+	SND_SOC_DAPM_MUX("AIF2 ADC Right Stereo Mux", SND_SOC_NOPM, 0, 0,
+			 &sun8i_aif2_adc_stereo_mux_control),
+
 	/* AIF "ADC" Muxes */
 	SND_SOC_DAPM_MUX("AIF3 ADC Capture Route", SND_SOC_NOPM, 0, 0,
 			 &sun8i_aif3_adc_mux_control),
@@ -630,6 +693,17 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 	SND_SOC_DAPM_MUX("AIF2 DAC Right Mux", SND_SOC_NOPM, 0, 0,
 			 &sun8i_aif2_dac_mux_control),
 
+	/* AIF "DAC" Mono/Stereo Muxes */
+	SND_SOC_DAPM_MUX("AIF1 DA0 Left Stereo Mux", SND_SOC_NOPM, 0, 0,
+			 &sun8i_aif1_da0_stereo_mux_control),
+	SND_SOC_DAPM_MUX("AIF1 DA0 Right Stereo Mux", SND_SOC_NOPM, 0, 0,
+			 &sun8i_aif1_da0_stereo_mux_control),
+
+	SND_SOC_DAPM_MUX("AIF2 DAC Left Stereo Mux", SND_SOC_NOPM, 0, 0,
+			 &sun8i_aif2_dac_stereo_mux_control),
+	SND_SOC_DAPM_MUX("AIF2 DAC Right Stereo Mux", SND_SOC_NOPM, 0, 0,
+			 &sun8i_aif2_dac_stereo_mux_control),
+
 	/* AIF "DAC" Inputs */
 	SND_SOC_DAPM_AIF_IN("AIF1 DA0 Left", "AIF1 Playback", 0,
 			    SUN8I_AIF1_DACDAT_CTRL,
@@ -703,52 +777,110 @@ static const struct snd_soc_dapm_widget sun8i_codec_dapm_widgets[] = {
 
 static const struct snd_soc_dapm_route sun8i_codec_dapm_routes[] = {
 	/* AIF "ADC" Output Routes */
-	{ "AIF1 AD0 Left", NULL, "AIF1 AD0 Left Mixer" },
-	{ "AIF1 AD0 Right", NULL, "AIF1 AD0 Right Mixer" },
+	{ "AIF1 AD0 Left", NULL, "AIF1 AD0 Left Stereo Mux" },
+	{ "AIF1 AD0 Right", NULL, "AIF1 AD0 Right Stereo Mux" },
 
 	{ "AIF1 AD0 Left", NULL, "AIF1CLK" },
 	{ "AIF1 AD0 Right", NULL, "AIF1CLK" },
 
-	{ "AIF2 ADC Left", NULL, "AIF2 ADC Left Mixer" },
-	{ "AIF2 ADC Right", NULL, "AIF2 ADC Right Mixer" },
+	{ "AIF2 ADC Left", NULL, "AIF2 ADC Left Stereo Mux" },
+	{ "AIF2 ADC Right", NULL, "AIF2 ADC Right Stereo Mux" },
 
 	{ "AIF2 ADC Left", NULL, "AIF2CLK" },
 	{ "AIF2 ADC Right", NULL, "AIF2CLK" },
 
 	{ "AIF3 ADC", NULL, "AIF3 ADC Capture Route" },
 
+	/* AIF "ADC" Mono/Stereo Mux Routes */
+	{ "AIF1 AD0 Left Stereo Mux", "Stereo", "AIF1 AD0 Left Mixer" },
+	{ "AIF1 AD0 Left Stereo Mux", "Reverse Stereo", "AIF1 AD0 Right Mixer" },
+	{ "AIF1 AD0 Left Stereo Mux", "Sum Mono", "AIF1 AD0 Left Mixer" },
+	{ "AIF1 AD0 Left Stereo Mux", "Sum Mono", "AIF1 AD0 Right Mixer" },
+	{ "AIF1 AD0 Left Stereo Mux", "Mix Mono", "AIF1 AD0 Left Mixer" },
+	{ "AIF1 AD0 Left Stereo Mux", "Mix Mono", "AIF1 AD0 Right Mixer" },
+
+	{ "AIF1 AD0 Right Stereo Mux", "Stereo", "AIF1 AD0 Right Mixer" },
+	{ "AIF1 AD0 Right Stereo Mux", "Reverse Stereo", "AIF1 AD0 Left Mixer" },
+	{ "AIF1 AD0 Right Stereo Mux", "Sum Mono", "AIF1 AD0 Left Mixer" },
+	{ "AIF1 AD0 Right Stereo Mux", "Sum Mono", "AIF1 AD0 Right Mixer" },
+	{ "AIF1 AD0 Right Stereo Mux", "Mix Mono", "AIF1 AD0 Left Mixer" },
+	{ "AIF1 AD0 Right Stereo Mux", "Mix Mono", "AIF1 AD0 Right Mixer" },
+
+	{ "AIF2 ADC Left Stereo Mux", "Stereo", "AIF2 ADC Left Mixer" },
+	{ "AIF2 ADC Left Stereo Mux", "Reverse Stereo", "AIF2 ADC Right Mixer" },
+	{ "AIF2 ADC Left Stereo Mux", "Sum Mono", "AIF2 ADC Left Mixer" },
+	{ "AIF2 ADC Left Stereo Mux", "Sum Mono", "AIF2 ADC Right Mixer" },
+	{ "AIF2 ADC Left Stereo Mux", "Mix Mono", "AIF2 ADC Left Mixer" },
+	{ "AIF2 ADC Left Stereo Mux", "Mix Mono", "AIF2 ADC Right Mixer" },
+
+	{ "AIF2 ADC Right Stereo Mux", "Stereo", "AIF2 ADC Right Mixer" },
+	{ "AIF2 ADC Right Stereo Mux", "Reverse Stereo", "AIF2 ADC Left Mixer" },
+	{ "AIF2 ADC Right Stereo Mux", "Sum Mono", "AIF2 ADC Left Mixer" },
+	{ "AIF2 ADC Right Stereo Mux", "Sum Mono", "AIF2 ADC Right Mixer" },
+	{ "AIF2 ADC Right Stereo Mux", "Mix Mono", "AIF2 ADC Left Mixer" },
+	{ "AIF2 ADC Right Stereo Mux", "Mix Mono", "AIF2 ADC Right Mixer" },
+
 	/* AIF "ADC" Mux Routes */
 	{ "AIF3 ADC Capture Route", "AIF2 Left", "AIF2 ADC Left Mixer" },
 	{ "AIF3 ADC Capture Route", "AIF2 Right", "AIF2 ADC Right Mixer" },
 
 	/* AIF "ADC" Mixer Routes */
-	{ "AIF1 AD0 Left Mixer", "AIF1 AD0 Mixer AIF1 DA0 Capture Switch", "AIF1 DA0 Left" },
+	{ "AIF1 AD0 Left Mixer", "AIF1 AD0 Mixer AIF1 DA0 Capture Switch", "AIF1 DA0 Left Stereo Mux" },
 	{ "AIF1 AD0 Left Mixer", "AIF1 AD0 Mixer AIF2 DAC Capture Switch", "AIF2 DAC Left Mux" },
 	{ "AIF1 AD0 Left Mixer", "AIF1 AD0 Mixer ADC Capture Switch", "ADC Left" },
 	{ "AIF1 AD0 Left Mixer", "AIF1 AD0 Mixer AIF2 DAC Rev Capture Switch", "AIF2 DAC Right Mux" },
 
-	{ "AIF1 AD0 Right Mixer", "AIF1 AD0 Mixer AIF1 DA0 Capture Switch", "AIF1 DA0 Right" },
+	{ "AIF1 AD0 Right Mixer", "AIF1 AD0 Mixer AIF1 DA0 Capture Switch", "AIF1 DA0 Right Stereo Mux" },
 	{ "AIF1 AD0 Right Mixer", "AIF1 AD0 Mixer AIF2 DAC Capture Switch", "AIF2 DAC Right Mux" },
 	{ "AIF1 AD0 Right Mixer", "AIF1 AD0 Mixer ADC Capture Switch", "ADC Right" },
 	{ "AIF1 AD0 Right Mixer", "AIF1 AD0 Mixer AIF2 DAC Rev Capture Switch", "AIF2 DAC Left Mux" },
 
-	{ "AIF2 ADC Left Mixer", "AIF2 ADC Mixer AIF1 DA0 Capture Switch", "AIF1 DA0 Left" },
+	{ "AIF2 ADC Left Mixer", "AIF2 ADC Mixer AIF1 DA0 Capture Switch", "AIF1 DA0 Left Stereo Mux" },
 	{ "AIF2 ADC Left Mixer", "AIF2 ADC Mixer AIF2 DAC Rev Capture Switch", "AIF2 DAC Right Mux" },
 	{ "AIF2 ADC Left Mixer", "AIF2 ADC Mixer ADC Capture Switch", "ADC Left" },
 
-	{ "AIF2 ADC Right Mixer", "AIF2 ADC Mixer AIF1 DA0 Capture Switch", "AIF1 DA0 Right" },
+	{ "AIF2 ADC Right Mixer", "AIF2 ADC Mixer AIF1 DA0 Capture Switch", "AIF1 DA0 Right Stereo Mux" },
 	{ "AIF2 ADC Right Mixer", "AIF2 ADC Mixer AIF2 DAC Rev Capture Switch", "AIF2 DAC Left Mux" },
 	{ "AIF2 ADC Right Mixer", "AIF2 ADC Mixer ADC Capture Switch", "ADC Right" },
 
 	/* AIF "DAC" Mux Routes */
-	{ "AIF2 DAC Left Mux", "None", "AIF2 DAC Left" },
+	{ "AIF2 DAC Left Mux", "None", "AIF2 DAC Left Stereo Mux" },
 	{ "AIF2 DAC Left Mux", "AIF2 Left", "AIF3 DAC" },
-	{ "AIF2 DAC Left Mux", "AIF2 Right", "AIF2 DAC Left" },
+	{ "AIF2 DAC Left Mux", "AIF2 Right", "AIF2 DAC Left Stereo Mux" },
 
-	{ "AIF2 DAC Right Mux", "None", "AIF2 DAC Right" },
-	{ "AIF2 DAC Right Mux", "AIF2 Left", "AIF2 DAC Right" },
+	{ "AIF2 DAC Right Mux", "None", "AIF2 DAC Right Stereo Mux" },
+	{ "AIF2 DAC Right Mux", "AIF2 Left", "AIF2 DAC Right Stereo Mux" },
 	{ "AIF2 DAC Right Mux", "AIF2 Right", "AIF3 DAC" },
 
+	/* AIF "DAC" Mono/Stereo Mux Routes */
+	{ "AIF1 DA0 Left Stereo Mux", "Stereo", "AIF1 DA0 Left" },
+	{ "AIF1 DA0 Left Stereo Mux", "Reverse Stereo", "AIF1 DA0 Right" },
+	{ "AIF1 DA0 Left Stereo Mux", "Sum Mono", "AIF1 DA0 Left" },
+	{ "AIF1 DA0 Left Stereo Mux", "Sum Mono", "AIF1 DA0 Right" },
+	{ "AIF1 DA0 Left Stereo Mux", "Mix Mono", "AIF1 DA0 Left" },
+	{ "AIF1 DA0 Left Stereo Mux", "Mix Mono", "AIF1 DA0 Right" },
+
+	{ "AIF1 DA0 Right Stereo Mux", "Stereo", "AIF1 DA0 Right" },
+	{ "AIF1 DA0 Right Stereo Mux", "Reverse Stereo", "AIF1 DA0 Left" },
+	{ "AIF1 DA0 Right Stereo Mux", "Sum Mono", "AIF1 DA0 Left" },
+	{ "AIF1 DA0 Right Stereo Mux", "Sum Mono", "AIF1 DA0 Right" },
+	{ "AIF1 DA0 Right Stereo Mux", "Mix Mono", "AIF1 DA0 Left" },
+	{ "AIF1 DA0 Right Stereo Mux", "Mix Mono", "AIF1 DA0 Right" },
+
+	{ "AIF2 DAC Left Stereo Mux", "Stereo", "AIF2 DAC Left" },
+	{ "AIF2 DAC Left Stereo Mux", "Reverse Stereo", "AIF2 DAC Right" },
+	{ "AIF2 DAC Left Stereo Mux", "Sum Mono", "AIF2 DAC Left" },
+	{ "AIF2 DAC Left Stereo Mux", "Sum Mono", "AIF2 DAC Right" },
+	{ "AIF2 DAC Left Stereo Mux", "Mix Mono", "AIF2 DAC Left" },
+	{ "AIF2 DAC Left Stereo Mux", "Mix Mono", "AIF2 DAC Right" },
+
+	{ "AIF2 DAC Right Stereo Mux", "Stereo", "AIF2 DAC Right" },
+	{ "AIF2 DAC Right Stereo Mux", "Reverse Stereo", "AIF2 DAC Left" },
+	{ "AIF2 DAC Right Stereo Mux", "Sum Mono", "AIF2 DAC Left" },
+	{ "AIF2 DAC Right Stereo Mux", "Sum Mono", "AIF2 DAC Right" },
+	{ "AIF2 DAC Right Stereo Mux", "Mix Mono", "AIF2 DAC Left" },
+	{ "AIF2 DAC Right Stereo Mux", "Mix Mono", "AIF2 DAC Right" },
+
 	/* AIF "DAC" Input Routes */
 	{ "AIF1 DA0 Left", NULL, "AIF1CLK" },
 	{ "AIF1 DA0 Right", NULL, "AIF1CLK" },
@@ -764,11 +896,11 @@ static const struct snd_soc_dapm_route sun8i_codec_dapm_routes[] = {
 	{ "DAC Right", NULL, "DAC" },
 
 	/* Main DAC Mixer Routes */
-	{ "DAC Left Mixer", "DAC Mixer AIF1 DA0 Playback Switch", "AIF1 DA0 Left" },
+	{ "DAC Left Mixer", "DAC Mixer AIF1 DA0 Playback Switch", "AIF1 DA0 Left Stereo Mux" },
 	{ "DAC Left Mixer", "DAC Mixer AIF2 DAC Playback Switch", "AIF2 DAC Left Mux" },
 	{ "DAC Left Mixer", "DAC Mixer ADC Playback Switch", "ADC Left" },
 
-	{ "DAC Right Mixer", "DAC Mixer AIF1 DA0 Playback Switch", "AIF1 DA0 Right" },
+	{ "DAC Right Mixer", "DAC Mixer AIF1 DA0 Playback Switch", "AIF1 DA0 Right Stereo Mux" },
 	{ "DAC Right Mixer", "DAC Mixer AIF2 DAC Playback Switch", "AIF2 DAC Right Mux" },
 	{ "DAC Right Mixer", "DAC Mixer ADC Playback Switch", "ADC Right" },
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
