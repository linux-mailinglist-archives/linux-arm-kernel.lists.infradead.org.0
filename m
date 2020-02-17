Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B1C160805
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 03:19:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8nkAVMFTXLFJGHZsMGXsPJXzYUxajqOMAguh14nIM10=; b=eLl1nA5PhyiGjs
	k9NZA/B5HzZRUC/RW40fUnOanFTcTRlsG1/dd5AWGd9xFZBBbbdvEP1e4nfMrQ28RGYPW1ZXjCy6V
	0H3rluQT7FmhYUo0AH4+45UozH4CsZsL4YaY1PuFpFEjXEe8zkrYhPXe2TLs+nNmhtG7ddybIeDMe
	Pf68/sbxB45Ku9HGptuhzgUFlze6XNtPAyTiLgiuTtxuzrt9EvdLkpDaiikDlS+Gvx2OZ1hElHoSA
	MKyeAVWgyUz4EHnvOaUWpqjAC0bXw0aHpdf2ue9aBCc1zRKb/CR3ysVo9lHDqn283D2YRcwPhL8Ty
	M0+eDY4JCuFNfKj9Tc0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3W0E-0006XE-Qs; Mon, 17 Feb 2020 02:19:18 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3VzN-0005yf-C3
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 02:18:28 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 957BC6D5A;
 Sun, 16 Feb 2020 21:18:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 16 Feb 2020 21:18:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Apb+TtYDINvK9
 uZ9r+oVYbxjc0AlZfJeyDhd5kRGQlI=; b=pWHVy+m5e622nR2vd+ayxQPevzsgs
 u+0iSGk/pLt+uLaZ2BKOrO7Oy0im/IjPPWTBNeU65XzlnhpQBSiTHGUD9wWMhUiI
 3NwWCpuIkIli8fnUtzAeX9x+x2iFwcQdt3mDF9Bz2yAwVM8XvJndyQCHi3+cpzFT
 bzz+UiX8KEGw8Q85AFdncWwtlgDF0A7lZdSEMVTsySFHlHv3RBbi4DgNLbHZILfu
 uJv3PsBLNbCN4EbjHbNus91afGG/wWgqcDE2UsKp/g7ipy8qIVd2fwRHxvXI2Maq
 ZYi0v5a0Eza/tPc2/tdxFZJ2lpx2exxM9A1Svlxw1q64B7lV+lTnoTK9w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Apb+TtYDINvK9uZ9r+oVYbxjc0AlZfJeyDhd5kRGQlI=; b=AUYoSPzG
 fQirV7Xsea1GglhB4YDBzB4Nfk95Yft1+sPR9vCSyLToW4bt/BGeMD/kdsuuZdRt
 VJ20kq4inOgeBaUVJ+FM9IUkmwv65W57AAJhALC0slLj72ntyhdsRE0q/Jq8Eldb
 U1gJlZ6wzIQ4/8MhHWoo3I7aDQdWYxLwu0sHTqJwOlponGy3U25mm70pIY66kqPL
 ZxFGNXb4Fg4blJLJgeduwOemUrYTutPIZ6pvXP6TDW7oGhvVCh05EwXmELxGe3AQ
 i+7hRjr9MNjbGztaryIgSQMmAr1NqecbvGSjNiLY8pjwv3u/aoheWQcRl5SiF6RU
 RkTQm2S9B9rmqw==
X-ME-Sender: <xms:6PdJXlGar6itgvb3IIKt4Zi9EVPWx7qbk2o1DvmUDPUg3XmULIcU7w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:6PdJXlGLQXDZ4ZxIjE3JuDwy17Tmf5Q8wojJn4zllGv-7_8VUAcG2Q>
 <xmx:6PdJXmDnYWgmqeWlNsf4jz1mH0RN22gy8i8oMnj-cMbZVufPEYzeCA>
 <xmx:6PdJXh0dWJAQEm-eDQC9b4_wbmVB53viQ9AQRhPpiuEphMgX4Er-CQ>
 <xmx:6_dJXsDuJpnF_sBVK2u2ondG4ZFUJW1mdOlGkFN6HatIaZQvyPIv_w>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id A99BB3060EE4;
 Sun, 16 Feb 2020 21:18:15 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Luca Weiss <luca@z3ntu.xyz>
Subject: [PATCH 3/8] ASoC: sun50i-codec-analog: Group and sort mixer routes
Date: Sun, 16 Feb 2020 20:18:08 -0600
Message-Id: <20200217021813.53266-4-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217021813.53266-1-samuel@sholland.org>
References: <20200217021813.53266-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_181825_758052_4AB9279C 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort the controls in the same order as the bits in the register. Then
group the routes by sink, and sort them in the same order as the
controls. This makes it much easier to verify that all mixer inputs are
accounted for.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun50i-codec-analog.c | 58 +++++++++++++--------------
 1 file changed, 28 insertions(+), 30 deletions(-)

diff --git a/sound/soc/sunxi/sun50i-codec-analog.c b/sound/soc/sunxi/sun50i-codec-analog.c
index 4ad262c2e59b..17165f1ddb63 100644
--- a/sound/soc/sunxi/sun50i-codec-analog.c
+++ b/sound/soc/sunxi/sun50i-codec-analog.c
@@ -121,50 +121,50 @@
 
 /* mixer controls */
 static const struct snd_kcontrol_new sun50i_a64_codec_mixer_controls[] = {
-	SOC_DAPM_DOUBLE_R("DAC Playback Switch",
+	SOC_DAPM_DOUBLE_R("Mic1 Playback Switch",
 			  SUN50I_ADDA_OL_MIX_CTRL,
 			  SUN50I_ADDA_OR_MIX_CTRL,
-			  SUN50I_ADDA_OL_MIX_CTRL_DACL, 1, 0),
-	SOC_DAPM_DOUBLE_R("DAC Reversed Playback Switch",
+			  SUN50I_ADDA_OL_MIX_CTRL_MIC1, 1, 0),
+	SOC_DAPM_DOUBLE_R("Mic2 Playback Switch",
 			  SUN50I_ADDA_OL_MIX_CTRL,
 			  SUN50I_ADDA_OR_MIX_CTRL,
-			  SUN50I_ADDA_OL_MIX_CTRL_DACR, 1, 0),
+			  SUN50I_ADDA_OL_MIX_CTRL_MIC2, 1, 0),
 	SOC_DAPM_DOUBLE_R("Line In Playback Switch",
 			  SUN50I_ADDA_OL_MIX_CTRL,
 			  SUN50I_ADDA_OR_MIX_CTRL,
 			  SUN50I_ADDA_OL_MIX_CTRL_LINEINL, 1, 0),
-	SOC_DAPM_DOUBLE_R("Mic1 Playback Switch",
+	SOC_DAPM_DOUBLE_R("DAC Playback Switch",
 			  SUN50I_ADDA_OL_MIX_CTRL,
 			  SUN50I_ADDA_OR_MIX_CTRL,
-			  SUN50I_ADDA_OL_MIX_CTRL_MIC1, 1, 0),
-	SOC_DAPM_DOUBLE_R("Mic2 Playback Switch",
+			  SUN50I_ADDA_OL_MIX_CTRL_DACL, 1, 0),
+	SOC_DAPM_DOUBLE_R("DAC Reversed Playback Switch",
 			  SUN50I_ADDA_OL_MIX_CTRL,
 			  SUN50I_ADDA_OR_MIX_CTRL,
-			  SUN50I_ADDA_OL_MIX_CTRL_MIC2, 1, 0),
+			  SUN50I_ADDA_OL_MIX_CTRL_DACR, 1, 0),
 };
 
 /* ADC mixer controls */
 static const struct snd_kcontrol_new sun50i_codec_adc_mixer_controls[] = {
-	SOC_DAPM_DOUBLE_R("Mixer Capture Switch",
+	SOC_DAPM_DOUBLE_R("Mic1 Capture Switch",
 			  SUN50I_ADDA_L_ADCMIX_SRC,
 			  SUN50I_ADDA_R_ADCMIX_SRC,
-			  SUN50I_ADDA_L_ADCMIX_SRC_OMIXRL, 1, 0),
-	SOC_DAPM_DOUBLE_R("Mixer Reversed Capture Switch",
+			  SUN50I_ADDA_L_ADCMIX_SRC_MIC1, 1, 0),
+	SOC_DAPM_DOUBLE_R("Mic2 Capture Switch",
 			  SUN50I_ADDA_L_ADCMIX_SRC,
 			  SUN50I_ADDA_R_ADCMIX_SRC,
-			  SUN50I_ADDA_L_ADCMIX_SRC_OMIXRR, 1, 0),
+			  SUN50I_ADDA_L_ADCMIX_SRC_MIC2, 1, 0),
 	SOC_DAPM_DOUBLE_R("Line In Capture Switch",
 			  SUN50I_ADDA_L_ADCMIX_SRC,
 			  SUN50I_ADDA_R_ADCMIX_SRC,
 			  SUN50I_ADDA_L_ADCMIX_SRC_LINEINL, 1, 0),
-	SOC_DAPM_DOUBLE_R("Mic1 Capture Switch",
+	SOC_DAPM_DOUBLE_R("Mixer Capture Switch",
 			  SUN50I_ADDA_L_ADCMIX_SRC,
 			  SUN50I_ADDA_R_ADCMIX_SRC,
-			  SUN50I_ADDA_L_ADCMIX_SRC_MIC1, 1, 0),
-	SOC_DAPM_DOUBLE_R("Mic2 Capture Switch",
+			  SUN50I_ADDA_L_ADCMIX_SRC_OMIXRL, 1, 0),
+	SOC_DAPM_DOUBLE_R("Mixer Reversed Capture Switch",
 			  SUN50I_ADDA_L_ADCMIX_SRC,
 			  SUN50I_ADDA_R_ADCMIX_SRC,
-			  SUN50I_ADDA_L_ADCMIX_SRC_MIC2, 1, 0),
+			  SUN50I_ADDA_L_ADCMIX_SRC_OMIXRR, 1, 0),
 };
 
 static const DECLARE_TLV_DB_SCALE(sun50i_codec_out_mixer_pregain_scale,
@@ -373,24 +373,32 @@ static const struct snd_soc_dapm_widget sun50i_a64_codec_widgets[] = {
 
 static const struct snd_soc_dapm_route sun50i_a64_codec_routes[] = {
 	/* Left Mixer Routes */
+	{ "Left Mixer", "Mic1 Playback Switch", "Mic1 Amplifier" },
+	{ "Left Mixer", "Mic2 Playback Switch", "Mic2 Amplifier" },
+	{ "Left Mixer", "Line In Playback Switch", "LINEIN" },
 	{ "Left Mixer", "DAC Playback Switch", "Left DAC" },
 	{ "Left Mixer", "DAC Reversed Playback Switch", "Right DAC" },
-	{ "Left Mixer", "Mic1 Playback Switch", "Mic1 Amplifier" },
 
 	/* Right Mixer Routes */
+	{ "Right Mixer", "Mic1 Playback Switch", "Mic1 Amplifier" },
+	{ "Right Mixer", "Mic2 Playback Switch", "Mic2 Amplifier" },
+	{ "Right Mixer", "Line In Playback Switch", "LINEIN" },
 	{ "Right Mixer", "DAC Playback Switch", "Right DAC" },
 	{ "Right Mixer", "DAC Reversed Playback Switch", "Left DAC" },
-	{ "Right Mixer", "Mic1 Playback Switch", "Mic1 Amplifier" },
 
 	/* Left ADC Mixer Routes */
+	{ "Left ADC Mixer", "Mic1 Capture Switch", "Mic1 Amplifier" },
+	{ "Left ADC Mixer", "Mic2 Capture Switch", "Mic2 Amplifier" },
+	{ "Left ADC Mixer", "Line In Capture Switch", "LINEIN" },
 	{ "Left ADC Mixer", "Mixer Capture Switch", "Left Mixer" },
 	{ "Left ADC Mixer", "Mixer Reversed Capture Switch", "Right Mixer" },
-	{ "Left ADC Mixer", "Mic1 Capture Switch", "Mic1 Amplifier" },
 
 	/* Right ADC Mixer Routes */
+	{ "Right ADC Mixer", "Mic1 Capture Switch", "Mic1 Amplifier" },
+	{ "Right ADC Mixer", "Mic2 Capture Switch", "Mic2 Amplifier" },
+	{ "Right ADC Mixer", "Line In Capture Switch", "LINEIN" },
 	{ "Right ADC Mixer", "Mixer Capture Switch", "Right Mixer" },
 	{ "Right ADC Mixer", "Mixer Reversed Capture Switch", "Left Mixer" },
-	{ "Right ADC Mixer", "Mic1 Capture Switch", "Mic1 Amplifier" },
 
 	/* ADC Routes */
 	{ "Left ADC", NULL, "Left ADC Mixer" },
@@ -410,16 +418,6 @@ static const struct snd_soc_dapm_route sun50i_a64_codec_routes[] = {
 
 	/* Microphone Routes */
 	{ "Mic2 Amplifier", NULL, "MIC2"},
-	{ "Left Mixer", "Mic2 Playback Switch", "Mic2 Amplifier" },
-	{ "Right Mixer", "Mic2 Playback Switch", "Mic2 Amplifier" },
-	{ "Left ADC Mixer", "Mic2 Capture Switch", "Mic2 Amplifier" },
-	{ "Right ADC Mixer", "Mic2 Capture Switch", "Mic2 Amplifier" },
-
-	/* Line-in Routes */
-	{ "Left Mixer", "Line In Playback Switch", "LINEIN" },
-	{ "Right Mixer", "Line In Playback Switch", "LINEIN" },
-	{ "Left ADC Mixer", "Line In Capture Switch", "LINEIN" },
-	{ "Right ADC Mixer", "Line In Capture Switch", "LINEIN" },
 
 	/* Line-out Routes */
 	{ "Line Out Source Playback Route", "Stereo", "Left Mixer" },
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
