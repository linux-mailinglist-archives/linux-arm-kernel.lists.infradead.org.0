Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7085916080B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 03:20:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9I2ma2+sUoh7YSxNU5TAId8V8vH8n0AJ4B6bxA49xm4=; b=MUp3sbDHJNodxK
	zjlukPM1lwnmQKUe7sTOBwOp6YBI+tBqxeHWN+G2Njrz8ULwiWkH3HGbow2UYE65k42/Fvo/Z8AG/
	Pqw6diKvR5FfINoDIE4OWd40+yach5HPjsdQMr8Tn1kV4fiAi+pWaFrCDOXArPYcZ07SvCLpf+9XA
	FTjj1chqsNOKQSfbqUxkth1uw4qX5YN7b2UW8b/NMv2+xCtwlIDevw3i0HClN3Mfojtix2eGw+uY1
	GjpBBTJ1x1CTl+xj3w55+k7S/hJV+/ligaWp40HE0fVa6Yi0sF7+UXSXx2Io8Kum3MUXVh7WdEJrw
	QCfLGltCCI/Oi3CLhMXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3W10-0007Ec-64; Mon, 17 Feb 2020 02:20:06 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3VzP-0005zV-P2
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 02:18:29 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 988936D76;
 Sun, 16 Feb 2020 21:18:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 16 Feb 2020 21:18:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=rZE5jshbl3oVN
 3i0+/l30LzdznQBowgsQ8ja5ppeVIc=; b=hoqWU1muNZelcwgOlCbeT9L4n5rCR
 Ohn1r90wQHvmG4wDlzgpczd0md0Pwm9dHAPiQV2BuD0SiycaA413v+HO3QKSqAKy
 hlTYHE+m2O6GBxKNOEYQr251XqvKer1UHiv03MpnHKrK4CnGrOSnKTyuBr/lZmRV
 nPpOdauXzU/sh8fmFnnHSqLR1OmhhDMlPs/p7n8UjbhVQU3gsjJasTrdruVgxEDd
 ajCxtbww+OQXWwa0XiTln0wMjQMo1f5aIgvj7cksVGfej7WjT6ZW/nd7IUhSAiEF
 rk4CBlitRt8AoMBDWs1jlEeENppd/4x/toflXgpc9I59jI3dlJh3oCjJA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=rZE5jshbl3oVN3i0+/l30LzdznQBowgsQ8ja5ppeVIc=; b=EJW1BZoO
 h6QEndVtxj+KipqxkP5LB2i+xZXU+csYOMU7pLw4gWR6y2qCQnaMo02MHh4a35Xx
 VJEZ2TmTQnkvBcI4APVJRdlAyYOkHZrhUWM9nRi6d+R3nKSVt3gjfoAII49oooxB
 yO9Ag4N72/N18llH+eDZBrsxPcDDWurQ712XV+vTGQsRPP/FaSJUU3i1G/APX4np
 wgzMDCRtNyyJIPqpCnfz91MMQVj1zVM60o+H8gULcs5TjpY5ysre9iOkV/AHkStk
 FqEMw8PiAzMKycsTQzwubQSfUpae05WNEVc0bc9CoUnAixRLTMGAAoUMK1aYWZEE
 LMmqI7v85YKh2A==
X-ME-Sender: <xms:6vdJXtHTavFPOASuajjgaeRzrmiPyVksByFLs3BLSWfEM-5qfr1pkQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:6vdJXj4zJHrwOcMTT9QfePBqGmtiI8bYduxZJX7O1libaHFgk7zS-A>
 <xmx:6vdJXuYbJs8SoOA6Hr9_NJChDEJ_ewwTb-ipByL5u9agWLeS3bJo-A>
 <xmx:6vdJXphWUccKgvbt3VlAQfzNK0xJnAxsTNfpLsEDzfv84Xv3vuAnUQ>
 <xmx:6_dJXowvWCjWFhD4mWQWfWL_iRpqfjXm5T86dNUGM9pa0U-ftZK7SQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2B0FC3060FE0;
 Sun, 16 Feb 2020 21:18:18 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Luca Weiss <luca@z3ntu.xyz>
Subject: [PATCH 8/8] ASoC: sun50i-codec-analog: Enable DAPM for earpiece switch
Date: Sun, 16 Feb 2020 20:18:13 -0600
Message-Id: <20200217021813.53266-9-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217021813.53266-1-samuel@sholland.org>
References: <20200217021813.53266-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_181827_963313_34CD8EEC 
X-CRM114-Status: UNSURE (   8.94  )
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

By including the earpiece mute switch in the DAPM graph, both the
earpiece amplifier and the Mixer/DAC inputs can be powered off when
the earpiece is muted.

The mute switch is between the source selection and the amplifier,
as per the diagram in the SoC manual.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun50i-codec-analog.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/sound/soc/sunxi/sun50i-codec-analog.c b/sound/soc/sunxi/sun50i-codec-analog.c
index 84bb76cad74f..6c89b0716bbd 100644
--- a/sound/soc/sunxi/sun50i-codec-analog.c
+++ b/sound/soc/sunxi/sun50i-codec-analog.c
@@ -232,11 +232,6 @@ static const struct snd_kcontrol_new sun50i_a64_codec_controls[] = {
 		       SUN50I_ADDA_EARPIECE_CTRL1,
 		       SUN50I_ADDA_EARPIECE_CTRL1_ESP_VOL, 0x1f, 0,
 		       sun50i_codec_earpiece_vol_scale),
-
-	SOC_SINGLE("Earpiece Playback Switch",
-		   SUN50I_ADDA_EARPIECE_CTRL1,
-		   SUN50I_ADDA_EARPIECE_CTRL1_ESPPA_MUTE, 1, 0),
-
 };
 
 static const char * const sun50i_codec_hp_src_enum_text[] = {
@@ -295,6 +290,11 @@ static const struct snd_kcontrol_new sun50i_codec_earpiece_src[] = {
 		      sun50i_codec_earpiece_src_enum),
 };
 
+static const struct snd_kcontrol_new sun50i_codec_earpiece_switch =
+	SOC_DAPM_SINGLE("Playback Switch",
+			SUN50I_ADDA_EARPIECE_CTRL1,
+			SUN50I_ADDA_EARPIECE_CTRL1_ESPPA_MUTE, 1, 0);
+
 static const struct snd_soc_dapm_widget sun50i_a64_codec_widgets[] = {
 	/* DAC */
 	SND_SOC_DAPM_DAC("Left DAC", NULL, SUN50I_ADDA_MIX_DAC_CTRL,
@@ -341,6 +341,8 @@ static const struct snd_soc_dapm_widget sun50i_a64_codec_widgets[] = {
 
 	SND_SOC_DAPM_MUX("Earpiece Source Playback Route",
 			 SND_SOC_NOPM, 0, 0, sun50i_codec_earpiece_src),
+	SND_SOC_DAPM_SWITCH("Earpiece",
+			    SND_SOC_NOPM, 0, 0, &sun50i_codec_earpiece_switch),
 	SND_SOC_DAPM_OUT_DRV("Earpiece Amp", SUN50I_ADDA_EARPIECE_CTRL1,
 			     SUN50I_ADDA_EARPIECE_CTRL1_ESPPA_EN, 0, NULL, 0),
 	SND_SOC_DAPM_OUTPUT("EARPIECE"),
@@ -462,7 +464,8 @@ static const struct snd_soc_dapm_route sun50i_a64_codec_routes[] = {
 	{ "Earpiece Source Playback Route", "DACR", "Right DAC" },
 	{ "Earpiece Source Playback Route", "Left Mixer", "Left Mixer" },
 	{ "Earpiece Source Playback Route", "Right Mixer", "Right Mixer" },
-	{ "Earpiece Amp", NULL, "Earpiece Source Playback Route" },
+	{ "Earpiece", "Playback Switch", "Earpiece Source Playback Route" },
+	{ "Earpiece Amp", NULL, "Earpiece" },
 	{ "EARPIECE", NULL, "Earpiece Amp" },
 };
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
