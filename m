Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3D41607FD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 03:19:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVr15SbC722BspcPF+u5BiVVvF10vmrxwPBLNB8YlN4=; b=e71lyWiJHQbb3W
	qq7oeCBr7IOdqmcay0U2p1LsXjiGpfM0P8WoA+bXXKQwgETP06hggn9NhUWbtjP2Fx4M0Q77JOG9c
	BAhNKBDmQu6cCVXCabL0BSnC1k63pqxZyXGzw6d9+LmGyOELSlFezfnLaWzpNoNCa0BSQEmwO1l7B
	5jFec80iVFC9GRG9K7PWHnQlISuqmeVWteWMiYVXEh1FifNNuhtCJp1NP457BKl/fb/I91Dl3v1Fb
	KpOsAVG8H/AT592ElIicZcvL4QSlcdhI6djJ/lQhM3VTaAmJZGtD6pdTnahkR85kQm8CuXXQDIBWs
	uEOo3Kcq+eYTGKNsFqRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3Vzx-00067a-Ju; Mon, 17 Feb 2020 02:19:01 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3VzN-0005yg-C2
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 02:18:27 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 963FD6D60;
 Sun, 16 Feb 2020 21:18:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 16 Feb 2020 21:18:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Xta2m6BWLN6wl
 eLae8H583Fhi6IaoW1biWy4wEHuQao=; b=AZYvXl5GzgNzpH5ntiIxRyMoMXf2t
 VGIKhCZOPhequCvRRQcGJIEPeVdonyoPNNf/HuFP2/RURpqerVp9nGxFG3Khl/Lc
 KFRdydKNUeI9xRSP5ybI1YK/1xQy2SdY17PHBROgpxMqzWMW21dQYbUY1KAqjNvE
 qZ9JMXkdtUIb719bu6KVfZZ+OPpMwL30GWTUVxlYzA7ga6HEo/OodRlfe9Ae6Pbv
 Lg4vPuRFD94t0LTOKxtWgX2yW6YxZs3H/8xDYqlBUhIv+ge9cdEqxWzw2lzK0ZrB
 CHBKMYK4PTSwok9VqchP6lLs0ZzAOeTuLgqp2L3clD0DfaWyCvp0OfDow==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Xta2m6BWLN6wleLae8H583Fhi6IaoW1biWy4wEHuQao=; b=Pz0iBWso
 EKdiVL1QP34f55SzauLNu3+49uh04u+P/sCZJj4TdXg1XHt9Vtm1bO9pye7Gw8/t
 ify+l1xQnAFio0c0Z0K6QlGZdg9EJizCRuhlcyUNuy+FYc+RE6Jlox6GLJDgYSes
 cTwRvbtx2PWfxPljGaA+WWAGcT4KO3e94wQWHAlAy1mpBXGzzLFs9SatXSl3zC7n
 nZzY+be8cBTmoYwGXAT+6V2e+16IHPpkneH2u78YFEyAC69U7buTyhIdn52jhy6b
 VeMRmbxt9jFwbXljrNAY4gf2BmduQeujHvoq4I0TTfPgmS4Ovb+VwXWQAWCUS4OD
 wvDtN51blwRtgg==
X-ME-Sender: <xms:6PdJXgavXM386504ZcSySNlzSlNSS4CschW1e3VdGpQUcVF7boI_6w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:6PdJXnQp-4tvATdtBMhROemLi7clmN6_PlUQ-Grvwv0gWUma6PtPNQ>
 <xmx:6PdJXjzv-oGEQSx7tRhBykyyUpYl4Ac6jww1_OuqwpyppNi1j6JnFQ>
 <xmx:6PdJXjcX4CzOh1Rm80bJ0iozCwY1slfmZlFC2t3VEEmSbERcWpjdAw>
 <xmx:6_dJXjuG6z4c-MnFfD3NmWFoWQEK8VxGWotgFN3ZijGj9D8Gpuja4Q>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2CE543060FCB;
 Sun, 16 Feb 2020 21:18:16 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Luca Weiss <luca@z3ntu.xyz>
Subject: [PATCH 4/8] ASoC: sun50i-codec-analog: Make headphone routes stereo
Date: Sun, 16 Feb 2020 20:18:09 -0600
Message-Id: <20200217021813.53266-5-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217021813.53266-1-samuel@sholland.org>
References: <20200217021813.53266-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_181825_758115_7AB76CEC 
X-CRM114-Status: UNSURE (   7.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
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

This matches the hardware more accurately, and is necessary for
including the (stereo) headphone mute switch in the DAPM graph.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun50i-codec-analog.c | 28 +++++++++++++++++++--------
 1 file changed, 20 insertions(+), 8 deletions(-)

diff --git a/sound/soc/sunxi/sun50i-codec-analog.c b/sound/soc/sunxi/sun50i-codec-analog.c
index 17165f1ddb63..f98851067f97 100644
--- a/sound/soc/sunxi/sun50i-codec-analog.c
+++ b/sound/soc/sunxi/sun50i-codec-analog.c
@@ -311,9 +311,15 @@ static const struct snd_soc_dapm_widget sun50i_a64_codec_widgets[] = {
 	 */
 
 	SND_SOC_DAPM_REGULATOR_SUPPLY("cpvdd", 0, 0),
-	SND_SOC_DAPM_MUX("Headphone Source Playback Route",
+	SND_SOC_DAPM_MUX("Left Headphone Source",
 			 SND_SOC_NOPM, 0, 0, sun50i_codec_hp_src),
-	SND_SOC_DAPM_OUT_DRV("Headphone Amp", SUN50I_ADDA_HP_CTRL,
+	SND_SOC_DAPM_MUX("Right Headphone Source",
+			 SND_SOC_NOPM, 0, 0, sun50i_codec_hp_src),
+	SND_SOC_DAPM_OUT_DRV("Left Headphone Amp",
+			     SND_SOC_NOPM, 0, 0, NULL, 0),
+	SND_SOC_DAPM_OUT_DRV("Right Headphone Amp",
+			     SND_SOC_NOPM, 0, 0, NULL, 0),
+	SND_SOC_DAPM_SUPPLY("Headphone Amp", SUN50I_ADDA_HP_CTRL,
 			     SUN50I_ADDA_HP_CTRL_HPPA_EN, 0, NULL, 0),
 	SND_SOC_DAPM_OUTPUT("HP"),
 
@@ -405,13 +411,19 @@ static const struct snd_soc_dapm_route sun50i_a64_codec_routes[] = {
 	{ "Right ADC", NULL, "Right ADC Mixer" },
 
 	/* Headphone Routes */
-	{ "Headphone Source Playback Route", "DAC", "Left DAC" },
-	{ "Headphone Source Playback Route", "DAC", "Right DAC" },
-	{ "Headphone Source Playback Route", "Mixer", "Left Mixer" },
-	{ "Headphone Source Playback Route", "Mixer", "Right Mixer" },
-	{ "Headphone Amp", NULL, "Headphone Source Playback Route" },
+	{ "Left Headphone Source", "DAC", "Left DAC" },
+	{ "Left Headphone Source", "Mixer", "Left Mixer" },
+	{ "Left Headphone Amp", NULL, "Left Headphone Source" },
+	{ "Left Headphone Amp", NULL, "Headphone Amp" },
+	{ "HP", NULL, "Left Headphone Amp" },
+
+	{ "Right Headphone Source", "DAC", "Right DAC" },
+	{ "Right Headphone Source", "Mixer", "Right Mixer" },
+	{ "Right Headphone Amp", NULL, "Right Headphone Source" },
+	{ "Right Headphone Amp", NULL, "Headphone Amp" },
+	{ "HP", NULL, "Right Headphone Amp" },
+
 	{ "Headphone Amp", NULL, "cpvdd" },
-	{ "HP", NULL, "Headphone Amp" },
 
 	/* Microphone Routes */
 	{ "Mic1 Amplifier", NULL, "MIC1"},
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
