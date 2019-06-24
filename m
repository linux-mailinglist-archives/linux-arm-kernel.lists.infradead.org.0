Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E56C528B0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=akXejFaq7QCWsjtT3Z5giHunTUtrgD1+BVcfiLXoxOQ=; b=Ze0
	W9YHpInkukNEXxRHpXO6dZfr24F08PSG8tUtvUpDcaHMWaDt5N9uwDNOgN0GjNEDaOiz6K+pvxbUu
	aKSV1l3GoN41XdwdN0PubXQ1AVlb2pKMsOaTmJoX1RnlF5beImyJDtvL8K45EcqUPXeQfN1KhBbPn
	LgVMLrIvmxQApe0nrijwlQUSdKp5UrMny98wQpk15ZfOFitVqoVXnTpiBBjoUjX6deV6IF2LqgIeK
	nab57lx1WQd78YKwzDJK0WML2zM/tN2yfHmsWpk/X6bmvk4heD0zWwDf2Cdf8im15Q9sLQ2/q2q1d
	qXfbFTpdyiJm0ZiHpPIt9SoEkcKiPVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfiAn-0005p6-J1; Tue, 25 Jun 2019 09:55:33 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfi9M-0005Cc-Qk; Tue, 25 Jun 2019 09:54:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=zx9LoJRA5VJOsRJ+xBMTylTkTEgRWd6viN1kglPW6EM=; b=uKFHQxrVpH8X
 dVpD/orDeKDSABWJfcieBWLyp3ClSXXnpcDhLRzc3zeMTVQo6+BwUWzl3PoKSxu0f1SJDoWumFrT+
 Yklo0nb7sxV1cZK4iRNN5jSsBeYVM/j8t3M1v54LvNzSL+VJ1A15g1ImipVt/yxSKPx+rEmYCVK+W
 Zpba4=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hfi9G-0004ma-Ha; Tue, 25 Jun 2019 09:53:58 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 96F5D440046; Mon, 24 Jun 2019 17:32:13 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Applied "ASoC: rk3399_gru_sound: Support 32,
 44.1 and 88.2 kHz sample rates" to the asoc tree
In-Reply-To: <20190621155808.17182-1-enric.balletbo@collabora.com>
X-Patchwork-Hint: ignore
Message-Id: <20190624163213.96F5D440046@finisterre.sirena.org.uk>
Date: Mon, 24 Jun 2019 17:32:13 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_025405_180025_2CB30AB2 
X-CRM114-Status: GOOD (  14.65  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 Xing Zheng <zhengxing@rock-chips.com>, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, kernel@collabora.com,
 Benson Leung <bleung@chromium.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: rk3399_gru_sound: Support 32, 44.1 and 88.2 kHz sample rates

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

From 30b233b1cb4291d39ca08a95566721e8a52e5ee3 Mon Sep 17 00:00:00 2001
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Date: Fri, 21 Jun 2019 17:58:08 +0200
Subject: [PATCH] ASoC: rk3399_gru_sound: Support 32, 44.1 and 88.2 kHz sample
 rates

According to the datasheet the max98357a also supports 32, 44.1 and
88.2 kHz sample rate. This support was also introduced recently by
commit fdf34366d324 ("ASoC: max98357a: add missing supported rates").

Actually the machine driver validates the supported sample rates but
this is not really needed because the component driver can all apply
whatever constraints are needed and do their own validation. So, remove
the checks from the machine driver as are not needed at all. This way,
we also support 32, 44.1 and 88.2 kHz sample rates and we get rid of the
errors like the below.

  rk3399-gru-sound sound: rockchip_sound_max98357a_hw_params() doesn't support this sample rate: 44100
  rk3399-gru-sound sound: ASoC: machine hw_params failed: -22

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/rockchip/rk3399_gru_sound.c | 14 +-------------
 1 file changed, 1 insertion(+), 13 deletions(-)

diff --git a/sound/soc/rockchip/rk3399_gru_sound.c b/sound/soc/rockchip/rk3399_gru_sound.c
index 879069fc0b94..769d5795919c 100644
--- a/sound/soc/rockchip/rk3399_gru_sound.c
+++ b/sound/soc/rockchip/rk3399_gru_sound.c
@@ -66,19 +66,7 @@ static int rockchip_sound_max98357a_hw_params(struct snd_pcm_substream *substrea
 	unsigned int mclk;
 	int ret;
 
-	/* max98357a supports these sample rates */
-	switch (params_rate(params)) {
-	case 8000:
-	case 16000:
-	case 48000:
-	case 96000:
-		mclk = params_rate(params) * SOUND_FS;
-		break;
-	default:
-		dev_err(rtd->card->dev, "%s() doesn't support this sample rate: %d\n",
-				__func__, params_rate(params));
-		return -EINVAL;
-	}
+	mclk = params_rate(params) * SOUND_FS;
 
 	ret = snd_soc_dai_set_sysclk(rtd->cpu_dai, 0, mclk, 0);
 	if (ret) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
