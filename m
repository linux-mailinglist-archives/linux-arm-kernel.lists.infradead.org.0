Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDDAE2E173
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 17:45:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=9zVMi/oIagltrqORXdDvp8xXhSLaxiEzCe9BLTXAm1c=; b=BVW
	ld6tHxAxe0kRmTTYuUVVU9MyztH1JIgMVNQ003vYWRGkCY3SCJ7C5wIxkd2pwnYTmD9t5d6tFM5/s
	Xyq8t+a7gz17g6AgFN4bLJm0rmkJr/nasJmfiBCadsFZGuzgal6NW2kR6L2QPvAJ4nf1J+FaC6jd1
	lf7FsjfcG1MgJOGF6PRsIGdqBgyNI9+Hv1sH+q3iiHGy0mnrwN7JmtVbWajo4C03d+btTrMkB5Pox
	YOkJQLlQRqt6yijm4R5ZFXm4IokD+KQWJC48lcOYmKcqtreishIdrkyX23A+MzOYE3TwsqZFs+FRd
	wljhSOIrpWs62Anjw3Wasnm8/kh7vfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW0lx-0007ww-Pn; Wed, 29 May 2019 15:45:49 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW0lq-0007rb-T0
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 15:45:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=AGzOto7qa/uRKqkLQ40iD6LHzhbRPnB+Ym6gwGx0xHU=; b=Qg0MbLUMOHLp
 wBdRzs7eszD66gPlCdHVCq7LgxQcfisF+SpHyCxmy3osZO3L/vACk+h26FHCqIMynZ99qS9bbpUxH
 1dRO8t23yZz0kREcbxPI92e+oD++ZfujONLwxCHnZvi3lQCbAC/Xk2d48WGKxeaLTV41olNCC7TOY
 JoZ9c=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hW0le-00051q-J3; Wed, 29 May 2019 15:45:30 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id F1F06440046; Wed, 29 May 2019 16:45:29 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Georgii Staroselskii <georgii.staroselskii@emlid.com>
Subject: Applied "ASoC: sun4i-codec: fix first delay on Speaker" to the asoc
 tree
In-Reply-To: <1559040459-16488-1-git-send-email-georgii.staroselskii@emlid.com>
X-Patchwork-Hint: ignore
Message-Id: <20190529154529.F1F06440046@finisterre.sirena.org.uk>
Date: Wed, 29 May 2019 16:45:29 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_084543_082640_B8909CC3 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: alsa-devel@alsa-project.org, maxime.ripard@bootlin.com,
 dannym@scratchpost.org, tiwai@suse.com, lgirdwood@gmail.com, perex@perex.cz,
 georgii.staroselskii@emlid.com, wens@csie.org, Mark Brown <broonie@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: sun4i-codec: fix first delay on Speaker

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.2

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

From 1f2675f6655838aaf910f911fd0abc821e3ff3df Mon Sep 17 00:00:00 2001
From: Georgii Staroselskii <georgii.staroselskii@emlid.com>
Date: Tue, 28 May 2019 13:47:39 +0300
Subject: [PATCH] ASoC: sun4i-codec: fix first delay on Speaker

Allwinner DAC seems to have a delay in the Speaker audio routing. When
playing a sound for the first time, the sound gets chopped. On a second
play the sound is played correctly. After some time (~5s) the issue gets
back.

This commit seems to be fixing the same issue as bf14da7 but
for another codepath.

This is the DTS that was used to debug the problem.

&codec {
        allwinner,pa-gpios = <&r_pio 0 11 GPIO_ACTIVE_HIGH>; /* PL11 */
        allwinner,audio-routing =
                "Speaker", "LINEOUT";

        status = "okay";
}

Signed-off-by: Georgii Staroselskii <georgii.staroselskii@emlid.com>
Reviewed-by: Chen-Yu Tsai <wens@csie.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/sunxi/sun4i-codec.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/sound/soc/sunxi/sun4i-codec.c b/sound/soc/sunxi/sun4i-codec.c
index 15d08e343b47..28d2f7713f8d 100644
--- a/sound/soc/sunxi/sun4i-codec.c
+++ b/sound/soc/sunxi/sun4i-codec.c
@@ -1329,6 +1329,15 @@ static int sun4i_codec_spk_event(struct snd_soc_dapm_widget *w,
 	gpiod_set_value_cansleep(scodec->gpio_pa,
 				 !!SND_SOC_DAPM_EVENT_ON(event));
 
+	if (SND_SOC_DAPM_EVENT_ON(event)) {
+		/*
+		 * Need a delay to wait for DAC to push the data. 700ms seems
+		 * to be the best compromise not to feel this delay while
+		 * playing a sound.
+		 */
+		msleep(700);
+	}
+
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
