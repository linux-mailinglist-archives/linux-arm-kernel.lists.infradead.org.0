Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1185EB608B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Sep 2019 11:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RAr+o0UF4RyTwr1sy69l0FM7SUE+ZOIS7yfkRFNk1NM=; b=BwOPdUMaatbDXL
	oRc/bwibNiK3n0DjsQSXMGIgcAmvtyIvwNaKAUcfWIN+KPQ0mzpoHcTnxTlI/VW7RuC7MjrA6ESBX
	j68Yrvu8SxH9ehToyhaPoVX0IyiW7unKJxylILL0mYB0NLyhdqoRDwBMlzwXQEFZiU+xwVRVKX4Gw
	rZbOPQw7WIV+T4XGs3FJH/HXgKpoWNFpu9ftEl+NY5F3/87C4g+1spYgVPGf7PW98VTQdgAbvWfsU
	tZyH2QM86L4oyVs/VBXvp3HsqO/uEMcmipnXJWc46Nw7AQOQpz/5k2cDL9QqkZRLqANELPOlF26ZH
	7ZcP9CLPX5VjXfpDSsfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAWTc-0001Or-1d; Wed, 18 Sep 2019 09:42:20 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAWTQ-0001Ok-Um
 for linux-arm-kernel@bombadil.infradead.org; Wed, 18 Sep 2019 09:42:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jyPi+SMWb2IazQWZ3HKJ1KE/ZfJQ4bEh/hc+etasOaU=; b=VyOzrnlhvnwoP217i+b7/gAuEU
 /6mrjUyWDLRxt+yZ3gH5QqASjD1zK/7wd8m39SPjyHNf5Q6NO+WZR5kAea9fT0+OBvSRWyr4XxQec
 v5jXqZWtUfhUjqSdJMvQqxBLs9TAjHLpu9SGHSfdpxHhEdiSV36TQP9EZCX0Vabxd3Mi+Hbwe39+l
 gypyXxW8wXVIOoyVf8KMfX1vrs5x6caDpDRPLKNhe6jpMgGE6gMIFtU5OYUktB05TePs12/QfFuDK
 BpPZ/2FByTLT79Yby4hSvri/ZW3GhR20t5BboPYrHmMS6YkBpI02k3J9IG2wCPe2wVdFSFBRpZ5tH
 Lzj5tDzA==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by casper.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAWTe-00086h-UJ
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Sep 2019 09:42:25 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id D54B06000C;
 Wed, 18 Sep 2019 09:41:27 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ASoC: atmel_ssc_dai: Remove wrong spinlock usage
Date: Wed, 18 Sep 2019 11:41:14 +0200
Message-Id: <20190918094114.15867-1-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_104223_016294_3B742EA5 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Gregory CLEMENT <gregory.clement@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 sound/soc/atmel/atmel_ssc_dai.c | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/sound/soc/atmel/atmel_ssc_dai.c b/sound/soc/atmel/atmel_ssc_dai.c
index 6f89483ac88c..365957e86419 100644
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
@@ -317,13 +314,11 @@ static int atmel_ssc_startup(struct snd_pcm_substream *substream,
 
 	snd_soc_dai_set_dma_data(dai, substream, dma_params);
 
-	spin_lock_irq(&ssc_p->lock);
 	if (ssc_p->dir_mask & dir_mask) {
 		spin_unlock_irq(&ssc_p->lock);
 		return -EBUSY;
 	}
 	ssc_p->dir_mask |= dir_mask;
-	spin_unlock_irq(&ssc_p->lock);
 
 	return 0;
 }
@@ -355,7 +350,6 @@ static void atmel_ssc_shutdown(struct snd_pcm_substream *substream,
 
 	dir_mask = 1 << dir;
 
-	spin_lock_irq(&ssc_p->lock);
 	ssc_p->dir_mask &= ~dir_mask;
 	if (!ssc_p->dir_mask) {
 		if (ssc_p->initialized) {
@@ -369,7 +363,6 @@ static void atmel_ssc_shutdown(struct snd_pcm_substream *substream,
 		ssc_p->cmr_div = ssc_p->tcmr_period = ssc_p->rcmr_period = 0;
 		ssc_p->forced_divider = 0;
 	}
-	spin_unlock_irq(&ssc_p->lock);
 
 	/* Shutdown the SSC clock. */
 	pr_debug("atmel_ssc_dai: Stopping clock\n");
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
