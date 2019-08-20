Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9781E967D8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:42:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=hmgKwwr4sIAPvl7d5S3jdTjm4a96NUiibqoJK5xIm2w=; b=lFe
	e9uyC0g63rRh9eqzdOd2X9L7/VrjE/Dfh7yhiFwXZeR/sD4nyUEiIbJe3clCO5yn8y1eZnahYyzuG
	Szw++mI9YraofMEXVSOPMxC1Jhuna4x+maGUwxyuP8/WBXE3g7P3oCTsXuD2U8/I/nu+Em2tF2rU0
	vhsh9u6dqgI8JEQkSKqn455oOeff4DYkRFssEvj5tFbsV7JplT3Z5Xc65EkDS/NXH8IUhcmeXUVvC
	//LzjcteCkwUTGrS33veueeoedH6UkP4IYIqNrOBgRJwwCk+v4dYl2+pgQlyFzOkW5z3byjU8npek
	VGoFDilqek0W2NKhINtAzMN/m4WlvRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i089n-0003Tu-20; Tue, 20 Aug 2019 17:42:55 +0000
Received: from mail-wr1-f97.google.com ([209.85.221.97])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0882-0001vl-MX
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:41:11 +0000
Received: by mail-wr1-f97.google.com with SMTP id p17so13248852wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:41:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=rEm//JA9Ode+pkJQsVxasRJPsyZWnLEZfrP5SRv2v4A=;
 b=Ot5AzNoCqakpUvMlEaJ2+rsT5q5ObMK0LgzksfJp7M3sRgSUGhjCJ6YPvp1tEpBsr0
 xGtejk5pYZl0G3Fgc1gl7qB/7p2ksbtKH93/AUtDWAB+dkcElmJcoI7BHcf5LX99IAcL
 T8zZRVOogGlEXGogTrWwsg4ujJ4vL1we0PSibL8NPQ/PaKdH0NRig/82665v8YIsKPkr
 hgqqt8oyxVVDgUdvf0hsfPahsiOF4LzeqbjslThqtYzlbE8YVCAR3RE5PkSjRvZ+Nz3f
 QQr3CNwX/iffzfV6BPxASwwnK/yNVrXFAjnr5ueVOoU2mmvpoNHbTt8wZNsS7PkRThER
 nk+Q==
X-Gm-Message-State: APjAAAW7TBcXkmyoDt4Dv1MlHlC5fDa8ZoAgS6MzWhq9heYgN6XFZEID
 UbguQfbWauzCXZuL6YthtdpxRhrXn5zxvPgTqNQHJvKQz3xUuG/Yn+MTJwDZGUvrYA==
X-Google-Smtp-Source: APXvYqx2NvCEqcvM7LJG+fzCYUWBys0UGZitIliEf8ce3MjbJm4BQPX76bNDLkREPboSx+tHL788Fsk8liDZ
X-Received: by 2002:a5d:55cf:: with SMTP id i15mr36897292wrw.151.1566322864978; 
 Tue, 20 Aug 2019 10:41:04 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id a4sm313012wro.12.2019.08.20.10.41.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:41:04 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0880-00032I-L5; Tue, 20 Aug 2019 17:41:04 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 006C12743150; Tue, 20 Aug 2019 18:41:03 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "ASoC: sun4i-i2s: Pass the channels number as an argument" to
 the asoc tree
In-Reply-To: <48887cf7abfaab6597db233b24d7a088a913e48a.1566242458.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820174104.006C12743150@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 18:41:03 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_104106_733913_58A8330A 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.97 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alsa-devel@alsa-project.org, lgirdwood@gmail.com,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 codekipper@gmail.com, Chen-Yu Tsai <wens@csie.org>,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: sun4i-i2s: Pass the channels number as an argument

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.4

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 0083a507a78fdfa868acc0709408b59e72488a61 Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Mon, 19 Aug 2019 21:25:25 +0200
Subject: [PATCH] ASoC: sun4i-i2s: Pass the channels number as an argument

The channels number have been hardcoded to 2 so far, while the controller
supports more than that.

Remove the instance where it has been hardcoded to compute the BCLK
divider, and pass it through as an argument to ease further support of more
channels.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Link: https://lore.kernel.org/r/48887cf7abfaab6597db233b24d7a088a913e48a.1566242458.git-series.maxime.ripard@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 4c636f1cf7dc..6b172dfbc25d 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -238,10 +238,11 @@ static unsigned long sun8i_i2s_get_bclk_parent_rate(const struct sun4i_i2s *i2s)
 static int sun4i_i2s_get_bclk_div(struct sun4i_i2s *i2s,
 				  unsigned long parent_rate,
 				  unsigned int sampling_rate,
+				  unsigned int channels,
 				  unsigned int word_size)
 {
 	const struct sun4i_i2s_clk_div *dividers = i2s->variant->bclk_dividers;
-	int div = parent_rate / sampling_rate / word_size / 2;
+	int div = parent_rate / sampling_rate / word_size / channels;
 	int i;
 
 	for (i = 0; i < i2s->variant->num_bclk_dividers; i++) {
@@ -286,6 +287,7 @@ static bool sun4i_i2s_oversample_is_valid(unsigned int oversample)
 
 static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 				  unsigned int rate,
+				  unsigned int channels,
 				  unsigned int word_size)
 {
 	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
@@ -333,7 +335,7 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 
 	bclk_parent_rate = i2s->variant->get_bclk_parent_rate(i2s);
 	bclk_div = sun4i_i2s_get_bclk_div(i2s, bclk_parent_rate,
-					  rate, word_size);
+					  rate, channels, word_size);
 	if (bclk_div < 0) {
 		dev_err(dai->dev, "Unsupported BCLK divider: %d\n", bclk_div);
 		return -EINVAL;
@@ -488,7 +490,7 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	regmap_field_write(i2s->field_fmt_sr, sr);
 
 	return sun4i_i2s_set_clk_rate(dai, params_rate(params),
-				      params_width(params));
+				      2, params_width(params));
 }
 
 static int sun4i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
