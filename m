Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6340C967B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:41:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=M22vPA9Vq9Iy+awoKcjiLffEX6WhFo6WukpSrWyL+Ro=; b=jgI
	365nZxHjXuVHRDNdPyB5VxJ2O/bC498c22dPnoMmXENwRxypo1s8vy4+HxX2+batummoEb7Czj4uv
	hFRM1apg7clp1qRpdwJ644xOvogxhHJzLQU5i8tsuj4gU2B7cestDPJhmJweAZDOhCa22lhghH/I5
	qF0c/z/mKwwRuzXyXXB7vHeT+YN94nU6iTZWUTl0lXpq3xTY4/7MC4bhEMgfZIrYewYgtvvs5dHtS
	21YsM6dbJS335es6oqMuDoz6BHfTRNn0ILpbZNC+yZUZELS3nJvfP9J2c+ZROvWnZFXo/eXu5un53
	nAl2l5idvOoYBZcIzjk0aD3R9xD4ljw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i088f-0002Ia-9B; Tue, 20 Aug 2019 17:41:45 +0000
Received: from mail-wr1-f98.google.com ([209.85.221.98])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0882-0001vk-IA
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:41:09 +0000
Received: by mail-wr1-f98.google.com with SMTP id j16so13258392wrr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:41:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=ABCcOn5GHJ8lNU8EGGWNRlyaGFZyomNizJdK6sCFsYs=;
 b=HOO+heDgx5K2199cmOo/8QjOR9E/oyZpV+Y8M1HaHvalq0ZNmvzGo8XbkVzwPSBIFe
 5O+gKpspkm4rlS5DvQVP/r2iv1VQ2AFyk+YTRjlZf3ddZagtjHp/ViMZz6u+8LpJZNlK
 NfpEgmGJF52lgLg2049Qe9R6OsDQSGS6RZdkVf3uciFSz7wq52/3mHeiq270ThXUshJv
 DvaD3moKN6S4x0xx1kK4NjMbrZHJH88KJBqoQ4n1SLy2pm2UMgpleIrYPI28YgTf2cc+
 kY7nzuVq60UZEyauFxjKhAcHlAiS6Gd6NSBgb7EpLZy4Pc6sibiOascya+Dh6iqNjc4c
 XESA==
X-Gm-Message-State: APjAAAXTBY4wjRtyKFiFYK+L/s+ikpILU6SOlVt6GAMmXtbiVCzM4zUj
 rm+pNpPsoPAK0X+TKN+n+WYFgl08ImPFudS3zigKcOQlZfbfJ8JDWHj2xVGi8dCrAA==
X-Google-Smtp-Source: APXvYqya89xuBIGdtG+azWgCNH3nH0mRaN7p+fQCVe4tmxScBaCkLVxmDB+YfrCLKVXwVasNjDM2XMTuqfy0
X-Received: by 2002:adf:82cd:: with SMTP id 71mr31193025wrc.265.1566322864760; 
 Tue, 20 Aug 2019 10:41:04 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id x12sm314086wrv.41.2019.08.20.10.41.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:41:04 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0880-00032F-Fp; Tue, 20 Aug 2019 17:41:04 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C506D274314F; Tue, 20 Aug 2019 18:41:03 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "ASoC: sun4i-i2s: Support more channels" to the asoc tree
In-Reply-To: <27d9de5cd56f3a544851b8cd8af08bf836d19637.1566242458.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820174103.C506D274314F@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 18:41:03 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_104106_602886_1F4B9C77 
X-CRM114-Status: GOOD (  16.82  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.98 listed in list.dnswl.org]
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

   ASoC: sun4i-i2s: Support more channels

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

From bbf9a127abca4aac5cc75f882bc7efcc398e86ae Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Mon, 19 Aug 2019 21:25:26 +0200
Subject: [PATCH] ASoC: sun4i-i2s: Support more channels

We've been limited to 2 channels in the driver while the controller
supports from 1 to 8 channels, in both capture and playback. let's remove
the hardcoded checks and numbers, and extend the range of channel numbers
we can use.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Link: https://lore.kernel.org/r/27d9de5cd56f3a544851b8cd8af08bf836d19637.1566242458.git-series.maxime.ripard@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 6b172dfbc25d..9e691baee1e8 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -400,9 +400,6 @@ static int sun4i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
 {
 	unsigned int channels = params_channels(params);
 
-	if (channels != 2)
-		return -EINVAL;
-
 	/* Map the channels for playback and capture */
 	regmap_write(i2s->regmap, SUN4I_I2S_TX_CHAN_MAP_REG, 0x76543210);
 	regmap_write(i2s->regmap, SUN4I_I2S_RX_CHAN_MAP_REG, 0x00003210);
@@ -423,9 +420,6 @@ static int sun8i_i2s_set_chan_cfg(const struct sun4i_i2s *i2s,
 {
 	unsigned int channels = params_channels(params);
 
-	if (channels != 2)
-		return -EINVAL;
-
 	/* Map the channels for playback and capture */
 	regmap_write(i2s->regmap, SUN8I_I2S_TX_CHAN_MAP_REG, 0x76543210);
 	regmap_write(i2s->regmap, SUN8I_I2S_RX_CHAN_MAP_REG, 0x76543210);
@@ -458,6 +452,7 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 			       struct snd_soc_dai *dai)
 {
 	struct sun4i_i2s *i2s = snd_soc_dai_get_drvdata(dai);
+	unsigned int channels = params_channels(params);
 	int ret, sr, wss;
 	u32 width;
 
@@ -490,7 +485,7 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 	regmap_field_write(i2s->field_fmt_sr, sr);
 
 	return sun4i_i2s_set_clk_rate(dai, params_rate(params),
-				      2, params_width(params));
+				      channels, params_width(params));
 }
 
 static int sun4i_i2s_set_soc_fmt(const struct sun4i_i2s *i2s,
@@ -814,15 +809,15 @@ static struct snd_soc_dai_driver sun4i_i2s_dai = {
 	.probe = sun4i_i2s_dai_probe,
 	.capture = {
 		.stream_name = "Capture",
-		.channels_min = 2,
-		.channels_max = 2,
+		.channels_min = 1,
+		.channels_max = 8,
 		.rates = SNDRV_PCM_RATE_8000_192000,
 		.formats = SNDRV_PCM_FMTBIT_S16_LE,
 	},
 	.playback = {
 		.stream_name = "Playback",
-		.channels_min = 2,
-		.channels_max = 2,
+		.channels_min = 1,
+		.channels_max = 8,
 		.rates = SNDRV_PCM_RATE_8000_192000,
 		.formats = SNDRV_PCM_FMTBIT_S16_LE,
 	},
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
