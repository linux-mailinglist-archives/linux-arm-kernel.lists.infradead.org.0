Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A38C7967BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 19:42:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=Ct6NpUFddnH9REDrpuf/sFXAtDr/4jNwQtGlwejalZ4=; b=GPv
	egVct7CKdU3BMhUYB/U/hkdcni2nSiYMbG3LDilMpGBMCC0bwQoubVMUIxDQXlbS5YIsqMJ0ym/kV
	8/+0sm04Y3Krq022qZUYndqhDTSEnzSwcfJ3B2wyDQEqNEZnLqqJiNEdC8DOdq6oi52BDriKvD3pe
	n5lmurpHqJvb5muZJWGt80833NbeGg7uIdgQeMiX+J7bqIUNpv5/TGUYaFG7lz4gp2DdBep8dxnPd
	Q9/9nqASj8c5I3nvF0s8q38iaxOAkU41T+mlensjcaLO28bI7WsB/1POwaJrH48tRidNERnPDfKPX
	0zv5uduCDD20fOIDUfjcQkuwVIaIgfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i088s-0002Xk-UY; Tue, 20 Aug 2019 17:41:59 +0000
Received: from mail-ed1-f100.google.com ([209.85.208.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0882-0001vj-6G
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:41:09 +0000
Received: by mail-ed1-f100.google.com with SMTP id p28so7259590edi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:41:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=W8Kj656ZzAu9ZCWcFyzALBjAvF+qnepQqiVrSJyXBEw=;
 b=PhsCAS3mlbMH7x4SLCDlstCclBq9TmihIrW7sEzYBbnntERF+Dao53u8GSJUo7yG3r
 hpdz5umUMbEhoCV5Q4nHubvteA0Ab2M9FO60zeovbQe4N+hjE44r3j365oc58xz2gTen
 Iy7sqiMvVWG9Pzpes4a+VtbtCKl436ZEYWV3gD6ljb090Z/5zIPyxfXrTfk482gfiybN
 tzLaZCO98+X+oUE4yMjFYBfZkQLOIqczW0p7QkTO6/X0q8DeA0rEEUVsehZ7pG0ebs5s
 kClzkGRZu/mXfvbEmiLnjmodcUZ6GmpKwazKCk1Er/InskHpZ2sxsbTsO1DHPNA1DyAX
 MX4w==
X-Gm-Message-State: APjAAAUw7ArUbsrCdtV1TQfX6fjrAILPeSn1taInypyCsM0zB0v+fY+s
 8hzV30rK76xomDkXyL0PY7MygHAimWOSo7Si3T1iMI7oGGB28QAlM84C1dXhw6h9LQ==
X-Google-Smtp-Source: APXvYqycUJGNwyDQAqgE9ikjjh0O2ad6gVXSpxvz0n3pOCKBILB1jeJoM8Yz5wKLX5S7xlfpyPxZQ/c1gXEv
X-Received: by 2002:a50:9999:: with SMTP id m25mr32699134edb.183.1566322864685; 
 Tue, 20 Aug 2019 10:41:04 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id f3sm221529edx.19.2019.08.20.10.41.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:41:04 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0880-00032E-8q; Tue, 20 Aug 2019 17:41:04 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 8E819274314E; Tue, 20 Aug 2019 18:41:03 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Applied "ASoC: mchp-i2s-mcc: Fix unprepare of GCLK" to the asoc tree
In-Reply-To: <20190820162411.24836-2-codrin.ciubotariu@microchip.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820174103.8E819274314E@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 18:41:03 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_104106_231475_70F55FB4 
X-CRM114-Status: GOOD (  17.32  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.100 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, ludovic.desroches@microchip.com,
 Mark Brown <broonie@kernel.org>, tiwai@suse.com, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: mchp-i2s-mcc: Fix unprepare of GCLK

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.3

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

From 988b59467b2b14523a266957affbe9eca3e99fc9 Mon Sep 17 00:00:00 2001
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Date: Tue, 20 Aug 2019 19:24:09 +0300
Subject: [PATCH] ASoC: mchp-i2s-mcc: Fix unprepare of GCLK

If hw_free() gets called after hw_params(), GCLK remains prepared,
preventing further use of it. This patch fixes this by unpreparing the
clock in hw_free() or if hw_params() gets an error.

Fixes: 7e0cdf545a55 ("ASoC: mchp-i2s-mcc: add driver for I2SC Multi-Channel Controller")
Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Link: https://lore.kernel.org/r/20190820162411.24836-2-codrin.ciubotariu@microchip.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/atmel/mchp-i2s-mcc.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/sound/soc/atmel/mchp-i2s-mcc.c b/sound/soc/atmel/mchp-i2s-mcc.c
index 86495883ca3f..319f975586f1 100644
--- a/sound/soc/atmel/mchp-i2s-mcc.c
+++ b/sound/soc/atmel/mchp-i2s-mcc.c
@@ -670,8 +670,13 @@ static int mchp_i2s_mcc_hw_params(struct snd_pcm_substream *substream,
 	}
 
 	ret = regmap_write(dev->regmap, MCHP_I2SMCC_MRA, mra);
-	if (ret < 0)
+	if (ret < 0) {
+		if (dev->gclk_use) {
+			clk_unprepare(dev->gclk);
+			dev->gclk_use = 0;
+		}
 		return ret;
+	}
 	return regmap_write(dev->regmap, MCHP_I2SMCC_MRB, mrb);
 }
 
@@ -708,9 +713,13 @@ static int mchp_i2s_mcc_hw_free(struct snd_pcm_substream *substream,
 		regmap_write(dev->regmap, MCHP_I2SMCC_CR, MCHP_I2SMCC_CR_CKDIS);
 
 		if (dev->gclk_running) {
-			clk_disable_unprepare(dev->gclk);
+			clk_disable(dev->gclk);
 			dev->gclk_running = 0;
 		}
+		if (dev->gclk_use) {
+			clk_unprepare(dev->gclk);
+			dev->gclk_use = 0;
+		}
 	}
 
 	return 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
