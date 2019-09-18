Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7A1B6758
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 17:45:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Resent-To:Resent-Message-ID:Resent-Date:
	Resent-From:Reply-To:Content-ID:Content-Description:Resent-Sender:Resent-Cc:
	References:List-Owner; bh=I0KfyKRzRgf3dAcRgmN7ZDknpwya6t+I5UwihUH+bkY=; b=DfR
	uXGAs5PF9fxJn2dMi5+qMVUaJ86xxK90bcoKOHp2hYXPogYk+/HvR5or57clyQurZMoJR02LJ1aYd
	Ft608IoT7sXVnVt6l9Ui8jZKB0TPiuRcH41EczsK4PIEAwuIU+yE5LiNnoBtloWsv4wg9ppo0Xu8J
	IM/VG4yZndZ0DWE/9aY9sSCH6UIVQQnL5+8/ls0Oyj5X1RVamx1YM8ScBOr2V5TjG3T+P22Gyk5F5
	L6wT3JPMTeYcRaw3D3NzpFSSZ9L2NsHHnG/uqTv2iC9urbIqzSNO5SrSJU9Kh+4O9cYcOtzbHnLSI
	0XmoOJfNrFuGKUVpnN9aIuE4fEPD4GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAc99-0000Zh-4q; Wed, 18 Sep 2019 15:45:35 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAc8v-0000Yu-76
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 15:45:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Resent-To:Resent-Message-ID:Resent-Date:Resent-From:Sender
 :Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Sender:Resent-Cc:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MmPKWC3O3aiRgwRF5r7v7A55zsox5DrsRAlIJYxJWAk=; b=i8RdZYlhAm0jAUUw4ONhFusY0h
 kFNGaMNLa9M+z4kMnVBpApeYmrNo808g1CRu7S/qsqTTjpEZPeyhFpyUTimTgfrtxO2ph2JapVkDH
 DSrr6r/He6lmUQDRv8fwqX14R4m+POEUnNbMXEhRczQBc/V4YBsmI/nxXb3a0lxnb1dg=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>) id 1iAc8t-00068h-TA
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 15:45:19 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 638592742927; Wed, 18 Sep 2019 16:45:19 +0100 (BST)
Resent-From: Mark Brown <broonie@sirena.co.uk>
Resent-Date: Wed, 18 Sep 2019 16:45:19 +0100
Resent-Message-ID: <20190918154519.GP2596@sirena.co.uk>
Resent-To: linux-arm-kernel@lists.infradead.org
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>) id 1iAbPB-0005hb-IE
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 14:58:05 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 8B06D2742927; Wed, 18 Sep 2019 15:58:04 +0100 (BST)
Resent-From: Mark Brown <broonie@sirena.co.uk>
Resent-Date: Wed, 18 Sep 2019 15:58:04 +0100
Resent-Message-ID: <20190918145804.GK2596@sirena.co.uk>
Resent-To: linux-arm-kernel@lists.infradead.org
Received: from broonie by cassiel.sirena.org.uk with local (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>) id 1iAZSC-0007SR-Vl
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 13:53:04 +0100
Resent-From: Mark Brown <broonie@sirena.org.uk>
Resent-Date: Wed, 18 Sep 2019 13:53:04 +0100
Resent-Message-ID: <20190918125304.GB28629@sirena.org.uk>
Resent-To: linux-arm-kernel@lists.infradead.org
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>) id 1iAYix-000541-SV
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 12:06:19 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 67A692742927; Wed, 18 Sep 2019 13:06:19 +0100 (BST)
Resent-From: Mark Brown <broonie@sirena.co.uk>
Resent-Date: Wed, 18 Sep 2019 13:06:19 +0100
Resent-Message-ID: <20190918120619.GF2596@sirena.co.uk>
Resent-To: linux-arm-kernel@lists.infradead.org
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iAWyo-0004e5-Qe; Wed, 18 Sep 2019 10:14:34 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id E2D832742927; Wed, 18 Sep 2019 11:14:33 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Applied "ASoC: atmel_ssc_dai: Remove wrong spinlock usage" to the
 asoc tree
In-Reply-To: <20190918100344.23629-1-gregory.clement@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20190918101433.E2D832742927@ypsilon.sirena.org.uk>
Date: Wed, 18 Sep 2019 11:14:33 +0100 (BST)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: broonie@sirena.org.uk
X-SA-Exim-Scanned: No (on cassiel.sirena.org.uk);
 SAEximRunCond expanded to false
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_084521_407667_0A5BB2CB 
X-CRM114-Status: GOOD (  21.52  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 Liam Girdwood <lgirdwood@gmail.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: atmel_ssc_dai: Remove wrong spinlock usage

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

From 0dce49efc70536a8c3b4bb5354a71b727ba31b80 Mon Sep 17 00:00:00 2001
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Date: Wed, 18 Sep 2019 12:03:44 +0200
Subject: [PATCH] ASoC: atmel_ssc_dai: Remove wrong spinlock usage

A potential bug was reported in the email "[BUG] atmel_ssc_dai: a
possible sleep-in-atomic bug in atmel_ssc_shutdown"[1]

Indeed in the function atmel_ssc_shutdown() free_irq() was called in a
critical section protected by spinlock.

However this spinlock is only used in atmel_ssc_shutdown() and
atmel_ssc_startup() functions. After further analysis, it occurred that
the call to these function are already protected by mutex used on the
calling functions.

Then we can remove the spinlock which will fix this bug as a side
effect. Thanks to this patch the following message disappears:

"BUG: sleeping function called from invalid context at
kernel/locking/mutex.c:909"

[1]: https://www.spinics.net/lists/alsa-devel/msg71286.html

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Link: https://lore.kernel.org/r/20190918100344.23629-1-gregory.clement@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/atmel/atmel_ssc_dai.c | 12 ++----------
 sound/soc/atmel/atmel_ssc_dai.h |  1 -
 2 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/sound/soc/atmel/atmel_ssc_dai.c b/sound/soc/atmel/atmel_ssc_dai.c
index 48e9eef34c0f..ca603397651c 100644
--- a/sound/soc/atmel/atmel_ssc_dai.c
+++ b/sound/soc/atmel/atmel_ssc_dai.c
@@ -116,19 +116,16 @@ static struct atmel_pcm_dma_params ssc_dma_params[NUM_SSC_DEVICES][2] = {
 static struct atmel_ssc_info ssc_info[NUM_SSC_DEVICES] = {
 	{
 	.name		= "ssc0",
-	.lock		= __SPIN_LOCK_UNLOCKED(ssc_info[0].lock),
 	.dir_mask	= SSC_DIR_MASK_UNUSED,
 	.initialized	= 0,
 	},
 	{
 	.name		= "ssc1",
-	.lock		= __SPIN_LOCK_UNLOCKED(ssc_info[1].lock),
 	.dir_mask	= SSC_DIR_MASK_UNUSED,
 	.initialized	= 0,
 	},
 	{
 	.name		= "ssc2",
-	.lock		= __SPIN_LOCK_UNLOCKED(ssc_info[2].lock),
 	.dir_mask	= SSC_DIR_MASK_UNUSED,
 	.initialized	= 0,
 	},
@@ -317,13 +314,10 @@ static int atmel_ssc_startup(struct snd_pcm_substream *substream,
 
 	snd_soc_dai_set_dma_data(dai, substream, dma_params);
 
-	spin_lock_irq(&ssc_p->lock);
-	if (ssc_p->dir_mask & dir_mask) {
-		spin_unlock_irq(&ssc_p->lock);
+	if (ssc_p->dir_mask & dir_mask)
 		return -EBUSY;
-	}
+
 	ssc_p->dir_mask |= dir_mask;
-	spin_unlock_irq(&ssc_p->lock);
 
 	return 0;
 }
@@ -355,7 +349,6 @@ static void atmel_ssc_shutdown(struct snd_pcm_substream *substream,
 
 	dir_mask = 1 << dir;
 
-	spin_lock_irq(&ssc_p->lock);
 	ssc_p->dir_mask &= ~dir_mask;
 	if (!ssc_p->dir_mask) {
 		if (ssc_p->initialized) {
@@ -369,7 +362,6 @@ static void atmel_ssc_shutdown(struct snd_pcm_substream *substream,
 		ssc_p->cmr_div = ssc_p->tcmr_period = ssc_p->rcmr_period = 0;
 		ssc_p->forced_divider = 0;
 	}
-	spin_unlock_irq(&ssc_p->lock);
 
 	/* Shutdown the SSC clock. */
 	pr_debug("atmel_ssc_dai: Stopping clock\n");
diff --git a/sound/soc/atmel/atmel_ssc_dai.h b/sound/soc/atmel/atmel_ssc_dai.h
index ae764cb541c7..3470b966e449 100644
--- a/sound/soc/atmel/atmel_ssc_dai.h
+++ b/sound/soc/atmel/atmel_ssc_dai.h
@@ -93,7 +93,6 @@ struct atmel_ssc_state {
 struct atmel_ssc_info {
 	char *name;
 	struct ssc_device *ssc;
-	spinlock_t lock;	/* lock for dir_mask */
 	unsigned short dir_mask;	/* 0=unused, 1=playback, 2=capture */
 	unsigned short initialized;	/* true if SSC has been initialized */
 	unsigned short daifmt;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
