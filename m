Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 776AF967EF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:45:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=Ao0NUAOq+7oT+m3/wszavBdjtru+VEqlz5SSUwdNgvE=; b=cth
	L8u4vEHE9PLvSYwH0BwYkEVTPLzXVoZMLd009RJjZlcSSyooFWrMlCee5N2zk+ROSDa2QmfK7HvAl
	ccn40hXU3MrdfAUZOtsJeJbH/AdDAuHtcT9fGwLgvQv7rAONz4VmmoseegVunX3uwT/4zoulenM8p
	dwQ19X1JqA2Sw2Mxe720mD9AYuxIZ44h5ShIKq/dpbCAaNPFrI6Ftm/qxRgoPqQw3RMvyj7w9VR7p
	KQgenIyGiRcPc+fX59n5Kvb/vS/Q8tYEmqQF9E3CGQDncjFRmbN19EWwordDhtUH6UBacz5bKppsm
	BvAVSTQgHJEsaD1zPK3uzUHJyDVdWqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i08CN-0007wZ-F0; Tue, 20 Aug 2019 17:45:35 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i088D-00026l-GJ
 for linux-arm-kernel@bombadil.infradead.org; Tue, 20 Aug 2019 17:41:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Date:Message-Id:In-Reply-To:Subject:Cc:
 To:From:Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yCDyVLCiFyaHGZVMltg2SfBdT7xmop4SmEPuiPFwdPM=; b=NeKUmqUKzVYTJgV0hz9JErKcfs
 dqazP5hgmUwRQ3FF2s0FJFlf37UgA9B1Npwr/0lUfxvgmcd/HVGntXd9cHIHKvDNY+zLLnDy2taOV
 ps804UD7lICdbC7pgbXQdy78HQeo0izlz1MRCvJxe4n9Edqoq0/v7VmRYLGv9LA9QsTEvW09yVIiE
 6bh4d6DDX7+c/C0yTYmhaMT3hJdohix/nzL4zyHElghxaSQXTyg65J3WsFFL2ASUJLG2Yvy9qR0TX
 ssvLLS3xcXXto455zG+vbDKI6eErog+F5wOS2ArK+8iz+Xcqg16qKh2/uL6yJXe50xgqaciTLQOxe
 gWD5785Q==;
Received: from mail-wr1-f100.google.com ([209.85.221.100])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i088A-0002z2-JR
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:41:15 +0000
Received: by mail-wr1-f100.google.com with SMTP id r3so13285387wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:41:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=yCDyVLCiFyaHGZVMltg2SfBdT7xmop4SmEPuiPFwdPM=;
 b=p3mRxZcuF8L/7CGlc9f6IA4jxgKE4qCfV7MUcTnVCbX3LqyeBNDNzKgPN4PYG8hYYJ
 Q+bfOBbrpzmel5jpu4lqXdVuJR2YiGddJKNTISNTdzkfHIIXpqB3+G2upKzr9gIcKWrf
 9O2+m6S6KswWcY3FqAGZbfpbZye0B+/+Va41El8rgt003wQ+sYFqMN90nFtkxfrSK5/P
 nXN968pz+yC49f9yRweuGjLUpjKlh8cipZoBe2UB9N5MIClbroerX4R7biUgwfoMUTqO
 IzEgF6mxS1qjVHISMciYSNLTVl3b42XOd2q0IXD+quI8OaiZLYvV3jQmEFmskeXQ7gPm
 BjTQ==
X-Gm-Message-State: APjAAAV17Z4RolM14mR19gQq1oUrGGubdb1+1ytK96WpPpmCoo2IFAd6
 3dLChKQSnq2kUvwfO0f59FBynVXDkqLp+atpns6Z3mdXRTXnZhVD/7yScXD8nwJMtw==
X-Google-Smtp-Source: APXvYqz5YHpKm90mjMqOxMGkNMOoE2BSG7fts0HS8pd2YGeQKJqMEr3P96B8XrAPliZ9bt9z/gCCJ/bhsYWk
X-Received: by 2002:adf:e710:: with SMTP id c16mr36940977wrm.292.1566322868040; 
 Tue, 20 Aug 2019 10:41:08 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id y18sm299785wrn.82.2019.08.20.10.41.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:41:08 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0883-00033J-LP; Tue, 20 Aug 2019 17:41:07 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 0F796274314E; Tue, 20 Aug 2019 18:41:07 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Applied "ASoC: sun4i-i2s: Don't use the oversample to calculate BCLK"
 to the asoc tree
In-Reply-To: <c3595e3a9788c2ef2dcc30aa3c8c4953bb5cc249.1566242458.git-series.maxime.ripard@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820174107.0F796274314E@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 18:41:07 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.100 listed in list.dnswl.org]
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

   ASoC: sun4i-i2s: Don't use the oversample to calculate BCLK

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

From 7df8f9a20196072162d9dc8fe99943f2d35f23d5 Mon Sep 17 00:00:00 2001
From: Maxime Ripard <maxime.ripard@bootlin.com>
Date: Mon, 19 Aug 2019 21:25:14 +0200
Subject: [PATCH] ASoC: sun4i-i2s: Don't use the oversample to calculate BCLK

The BCLK divider should be calculated using the parameters that actually
make the BCLK rate: the number of channels, the sampling rate and the
sample width.

We've been using the oversample_rate previously because in the former SoCs,
the BCLK's parent is MCLK, which in turn is being used to generate the
oversample rate, so we end up with something like this:

oversample = mclk_rate / sampling_rate
bclk_div = oversample / word_size / channels

So, bclk_div = mclk_rate / sampling_rate / word_size / channels.

And this is actually better, since the oversampling ratio only plays a role
because the MCLK is its parent, not because of what BCLK is supposed to be.

Furthermore, that assumption of MCLK being the parent has been broken on
newer SoCs, so let's use the proper formula, and have the parent rate as an
argument.

Fixes: 7d2993811a1e ("ASoC: sun4i-i2s: Add support for H3")
Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
Fixes: 66ecce332538 ("ASoC: sun4i-i2s: Add compatibility with A64 codec I2S")
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Link: https://lore.kernel.org/r/c3595e3a9788c2ef2dcc30aa3c8c4953bb5cc249.1566242458.git-series.maxime.ripard@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-i2s.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/sound/soc/sunxi/sun4i-i2s.c b/sound/soc/sunxi/sun4i-i2s.c
index 70608fa30bf2..d879db581073 100644
--- a/sound/soc/sunxi/sun4i-i2s.c
+++ b/sound/soc/sunxi/sun4i-i2s.c
@@ -222,10 +222,11 @@ static const struct sun4i_i2s_clk_div sun4i_i2s_mclk_div[] = {
 };
 
 static int sun4i_i2s_get_bclk_div(struct sun4i_i2s *i2s,
-				  unsigned int oversample_rate,
+				  unsigned long parent_rate,
+				  unsigned int sampling_rate,
 				  unsigned int word_size)
 {
-	int div = oversample_rate / word_size / 2;
+	int div = parent_rate / sampling_rate / word_size / 2;
 	int i;
 
 	for (i = 0; i < ARRAY_SIZE(sun4i_i2s_bclk_div); i++) {
@@ -315,8 +316,8 @@ static int sun4i_i2s_set_clk_rate(struct snd_soc_dai *dai,
 		return -EINVAL;
 	}
 
-	bclk_div = sun4i_i2s_get_bclk_div(i2s, oversample_rate,
-					  word_size);
+	bclk_div = sun4i_i2s_get_bclk_div(i2s, i2s->mclk_freq,
+					  rate, word_size);
 	if (bclk_div < 0) {
 		dev_err(dai->dev, "Unsupported BCLK divider: %d\n", bclk_div);
 		return -EINVAL;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
