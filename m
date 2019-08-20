Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 500BC967E5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:44:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=Lj9w0vpx0hitUkGG6+t4WenH1qok6W9P7HmOUiHQXiM=; b=ZWA
	QGJ8iTYHRjL+fHRI7XkBJM7V3rPCC8fc5h19eiqQxJLlmnZBTpmIy5WSZXKBXzRGr5HlOWZ3xRH84
	PYe2CUeq1e8CZf3ftNAxLpg3brd3LPR0hiTlY1NQcWewTgbDDmY6LLOPEEpkZ3b1vEwarXgq50ity
	lH4D0eWmyjGWBEIOtZO+q85IHKcY2f8BtWWulvosIqkVE/9Ascn6iDokxudNYE5YNR1Hl8mltWP9n
	NMnvR4fKgZ+RVHUH0i/yKw8hIXEHGn4bmKDDVc7aCiXPFaPfcz1GqZJpW84BYZ4343JG8AtN4hblA
	pSoxad62vq5XtNocsWo+o0mErI8MDtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i08BE-0005WD-Cb; Tue, 20 Aug 2019 17:44:24 +0000
Received: from mail-wr1-f97.google.com ([209.85.221.97])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0884-0001z6-P7
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:41:15 +0000
Received: by mail-wr1-f97.google.com with SMTP id s18so13286936wrn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:41:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=L1Zn2ORD9FSrc1HVb+RScuNQ8y1rYfCN6SkmynQKZbI=;
 b=eRWw2wi8x9ivAtGrkZyfuwKRv3NDWofSDkD0CCoHspkPIx0IYAe5//jlIIe1eLKuEJ
 KBP1Ys8rUbjFN7yhn45ApvdtlR8iCh5ddJGN5sPwfQYA/73b3BYvYciW6NtCvN2SoYwG
 3IejIYMe1Xsuk8Dszw0SHMYwuQk4kbKOmZvxJmHG3pIKp/mgDWNggD12ZtVSfA3gIPYw
 davXiiJszRPPUSxPbTuLY557QWom2TM0aP5OXIBppAplXMe2fyOyQQLm3BMUKqgcMkMy
 HTKojH8BwfVH68EH+g0iiPsdZY/BYs2UpYXWiIKSnlFrruxcLK1G/P7dopTtEvo9DfWZ
 wPrg==
X-Gm-Message-State: APjAAAWlVYtaa5zlWbHS46Vkyk687YB0zWJBDk5+btAjEm6gz+WDDNKs
 G4+XKDvo/D91WhrM5b6ocjFcB4qiY3bpXvvvWoRqDne7/NtNWtG7p1yzaSTMNc5PDQ==
X-Google-Smtp-Source: APXvYqy5TDi0UH/U2hkLDnHw3HPv5V5xfoaG9/13O8LBHUJJ0XtWYmNWX6MMUl3awmli3v9kooxjXG/VO8dN
X-Received: by 2002:a5d:4950:: with SMTP id r16mr35050963wrs.347.1566322867715; 
 Tue, 20 Aug 2019 10:41:07 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id x15sm1831wmj.21.2019.08.20.10.41.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:41:07 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0883-00033G-FN; Tue, 20 Aug 2019 17:41:07 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id D4AE3274314C; Tue, 20 Aug 2019 18:41:06 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "ASoC: sun4i-i2s: Replace call to params_channels by local
 variable" to the asoc tree
In-Reply-To: <c0faaac69ad40248f24eed3c3b2fa1ccc4a85b70.1566242458.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820174106.D4AE3274314C@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 18:41:06 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_104108_820537_AE117FB7 
X-CRM114-Status: GOOD (  15.70  )
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

   ASoC: sun4i-i2s: Replace call to params_channels by local variable

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

From c7dd0828c088a71f30de8d249f63b2fa9f0d322d Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Mon, 19 Aug 2019 21:25:10 +0200
Subject: [PATCH] ASoC: sun4i-i2s: Replace call to params_channels by local
 variable

The sun4i_i2s_hw_params already has a variable holding the value returned
by params_channels, so let's just use that variable instead of calling
params_channels multiple times.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Link: https://lore.kernel.org/r/c0faaac69ad40248f24eed3c3b2fa1ccc4a85b70.1566242458.git-series.maxime.ripard@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index d879db581073..77b7b81daf74 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -412,10 +412,9 @@ static int sun4i_i2s_hw_params(struct snd_pcm_substream *substream,
 
 	/* Configure the channels */
 	regmap_field_write(i2s->field_txchansel,
-			   SUN4I_I2S_CHAN_SEL(params_channels(params)));
-
+			   SUN4I_I2S_CHAN_SEL(channels));
 	regmap_field_write(i2s->field_rxchansel,
-			   SUN4I_I2S_CHAN_SEL(params_channels(params)));
+			   SUN4I_I2S_CHAN_SEL(channels));
 
 	if (i2s->variant->has_chsel_tx_chen)
 		regmap_update_bits(i2s->regmap, SUN8I_I2S_TX_CHAN_SEL_REG,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
