Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2696160806
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 03:19:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/YDIwkkFZmWKJWkOGfz0+JnFKXCmJo6Uq1i8cjPnm/k=; b=fXj1EJBhVCIgIE
	r9laGL14WYwgGt2oo8HUfFRkAGFYB1Jh9/tlgGM26CsDqd5p9fqIY68SiWol7HTZujs9zu7qi9QHy
	GTEl2exV/R4MlpfGVyHO6+OlBIeLaRrOzQeqhrQniIPNJUe971nyqaVxJ13w8Vi0swIqM6zv3rZfa
	W1kSNiIqknRi2mi02EYcF0u2Bo0rU8+Qy2pZWAi8Xj/rMYNGcweGNI3rUxCGbXcEBkxzSmq7kCcGD
	63XX4NMEJMDr/1SxiSmtlR0y+6js5kx6YvBoWTOPD6SWjSU3CyqMwhqyA58xep29l0rmEtadhw0cl
	lcpPzoYFugnQ0YlhwDlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3W0W-0006kc-BE; Mon, 17 Feb 2020 02:19:36 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3VzP-0005zU-Np
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 02:18:29 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id B79BA6D7E;
 Sun, 16 Feb 2020 21:18:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 16 Feb 2020 21:18:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=zYX2qLatCNdpd
 Bo0QvRl91j/VbKbgJTqwWqJS1iqsak=; b=AZW+oQc5nfwi2kgFo4CgjayWx9kbs
 MYgu22ULF5nRmT+lYBNF+F3jDpmpn6eaWsOV3tMZleMnK2SbcOTUGf+OikWXNtfq
 wbkEatGPM+aMJXu4gSQR2mz03rloKZRSLbcAyjz14z74vZPIDsGFnFLx06FfmBkL
 iwODOFQBq/ipv8dx+jvtpFb2f1q/6PVk3PlUaVP2CVd5K+/26p6n3bC8tAzoiDQY
 gNIjXDdWIdr4FoxTCcg3WcaxRfC6ZmuhNwby8de9/Tnc9/jEH/fmlKbfUUtKWfyt
 qHhyDaQzLie3mzkDP9bACnLsQLFrIHHqX4H0r4zRu1eS0+/kUn+ru7+Xg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=zYX2qLatCNdpdBo0QvRl91j/VbKbgJTqwWqJS1iqsak=; b=BIPCmFZS
 XYN7h6H76LULXxcJByy9dkq0jKfRjPLAORsMawqpORc1dxwWcZVcA90DN1KjgDpo
 9C3D7JDM0mHSlFQ8+pHb3DfMWsI8pgkQMC9Y50Eo1CASuWj4NJoclClCISsb7OT0
 0g0HLz8tam/yfNjldwT/qmb4tYH53HJZ7XJAmr3UFD78tulUwXSAvvbEeYTLIPeC
 mpFP/RNUn857s4oX7fDpG7eNp7IAJNF/tLzea37KzPaZCtT/S7wDsheWYwstwj9t
 A5D8Q+GY0WclecNuBjbyaTe02aWt9N12D6IP8DqhHlk5Hqkd3DTw0XUen3/xHyvJ
 B9LQuxmfNHBK/w==
X-ME-Sender: <xms:5_dJXrnb5_XxFkxr4SQtji45JG1wPKYpXhqZeZfVggsckIoaxtUTIg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:5_dJXkrWBUVsDJ57evoxkFp8L4C5WxtNRIiKeEVUuQNLYoZ6Xw5NMg>
 <xmx:5_dJXm_zuqEYOMJOgklZOXR29zZvQl8HtWsKrEYpO7Lvm3EyEsTd4w>
 <xmx:5_dJXt6lfkJpmjcD2Jj0CzBdE8DKXDK5uQ0ULXgDerz2LBqL40SwXg>
 <xmx:6_dJXrQvgWei-xVhcM1pqr2CT0Sm4e1cLMMAKDfcdF2aEOHMmS5AzA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id A6BA73060EF5;
 Sun, 16 Feb 2020 21:18:14 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Luca Weiss <luca@z3ntu.xyz>
Subject: [PATCH 1/8] ASoC: sun50i-codec-analog: Fix duplicate use of ADC
 enable bits
Date: Sun, 16 Feb 2020 20:18:06 -0600
Message-Id: <20200217021813.53266-2-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200217021813.53266-1-samuel@sholland.org>
References: <20200217021813.53266-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_181827_915709_6CC61532 
X-CRM114-Status: UNSURE (   8.05  )
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
Cc: Ondrej Jirman <megous@megous.com>, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The same enable bits are currently used for both the "Left/Right ADC"
and the "Left/Right ADC Mixer" widgets. This happens to work in practice
because the widgets are always enabled/disabled at the same time, but
each register bit should only be associated with a single widget.

To keep symmetry with the DAC widgets, keep the bits on the ADC widgets,
and remove them from the ADC Mixer widgets.

Fixes: 42371f327df0 ("ASoC: sunxi: Add new driver for Allwinner A64 codec's analog path controls")
Reported-by: Ondrej Jirman <megous@megous.com>
Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 sound/soc/sunxi/sun50i-codec-analog.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/sound/soc/sunxi/sun50i-codec-analog.c b/sound/soc/sunxi/sun50i-codec-analog.c
index f5b7069bcca2..cbdb31c3b7bd 100644
--- a/sound/soc/sunxi/sun50i-codec-analog.c
+++ b/sound/soc/sunxi/sun50i-codec-analog.c
@@ -363,12 +363,10 @@ static const struct snd_soc_dapm_widget sun50i_a64_codec_widgets[] = {
 			   SUN50I_ADDA_MIX_DAC_CTRL_RMIXEN, 0,
 			   sun50i_a64_codec_mixer_controls,
 			   ARRAY_SIZE(sun50i_a64_codec_mixer_controls)),
-	SND_SOC_DAPM_MIXER("Left ADC Mixer", SUN50I_ADDA_ADC_CTRL,
-			   SUN50I_ADDA_ADC_CTRL_ADCLEN, 0,
+	SND_SOC_DAPM_MIXER("Left ADC Mixer", SND_SOC_NOPM, 0, 0,
 			   sun50i_codec_adc_mixer_controls,
 			   ARRAY_SIZE(sun50i_codec_adc_mixer_controls)),
-	SND_SOC_DAPM_MIXER("Right ADC Mixer", SUN50I_ADDA_ADC_CTRL,
-			   SUN50I_ADDA_ADC_CTRL_ADCREN, 0,
+	SND_SOC_DAPM_MIXER("Right ADC Mixer", SND_SOC_NOPM, 0, 0,
 			   sun50i_codec_adc_mixer_controls,
 			   ARRAY_SIZE(sun50i_codec_adc_mixer_controls)),
 };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
