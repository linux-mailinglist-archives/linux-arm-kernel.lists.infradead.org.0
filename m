Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBCB3190889
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 10:11:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uvnj4TeOTxiWHZngBPuxa5v7gJ7nrsecGJnPIOMyqQs=; b=BGUXMpqpAng8GZ
	kZ5hxIp9s68SPPGG1oO0BWxcwTdObdsp31fB+p5xfQqyB1HlFxJQ2/KfjsmP4/uuh8tjuk2unHct6
	f01bZF/u4Yz66Ut5G3iOM0GGmCuTklxJIldZWcJw/YLqhpE261xR4USVIIct3EFlzZfFVjCigJxlw
	mMs5oWPUaAwwyRC2G1stknJUkiN1ttFG39UJi3VC2mu0P4nGZNkuwF8EqyluEysOwdBIds9J5hd4R
	xaGT6dpuy4GUe6WkxaVqqCnKD8E4wzu41AhvL97Q/cEEe9FX4W70APmjibeQgJi03hwFeo/2JU8Ts
	8V3zh+g+7GzzPV7a2Gkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGfa9-0006iD-9i; Tue, 24 Mar 2020 09:10:45 +0000
Received: from pecan2-mail.exetel.com.au ([220.233.0.71]
 helo=pecan2.exetel.com.au)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGfa1-0006gw-6K; Tue, 24 Mar 2020 09:10:38 +0000
Received: from 41.68.233.220.static.exetel.com.au ([220.233.68.41]
 helo=localhost.localdomain)
 by pecan2.exetel.com.au with esmtp (Exim 4.91)
 (envelope-from <flatmax@flatmax.org>)
 id 1jGfZc-0000Zd-ME; Tue, 24 Mar 2020 20:10:12 +1100
From: Matt Flax <flatmax@flatmax.org>
To: 
Subject: [PATCH] ASoC: bcm2835-i2s: substream alignment now independent in
 hwparams
Date: Tue, 24 Mar 2020 20:08:21 +1100
Message-Id: <20200324090823.20754-1-flatmax@flatmax.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_021037_240389_5AA91F69 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [220.233.0.71 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, alsa-devel@alsa-project.org,
 Florian Fainelli <f.fainelli@gmail.com>, linux-kernel@vger.kernel.org,
 Scott Branden <sbranden@broadcom.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Ray Jui <rjui@broadcom.com>,
 YueHaibing <yuehaibing@huawei.com>, Takashi Iwai <tiwai@suse.com>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, Allison Randal <allison@lohutok.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Matt Flax <flatmax@flatmax.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Substream sample alignment was being set in hwparams for both
substreams at the same time. This became a problem when	the Audio
Injector isolated sound card needed to offset sample alignment
for high sample	rates. The latency difference between playback
and capture occurs because of the digital isolation chip
propagation time, particularly when the codec is master and
the DAC return is twice delayed.

This patch sets sample alignment registers  based on the substream
direction in hwparams. This gives the machine driver more control
over sample alignment in the bcm2835 i2s driver.

Signed-off-by: Matt Flax <flatmax@flatmax.org>
---
 sound/soc/bcm/bcm2835-i2s.c | 36 +++++++++++++++++++-----------------
 1 file changed, 19 insertions(+), 17 deletions(-)

diff --git a/sound/soc/bcm/bcm2835-i2s.c b/sound/soc/bcm/bcm2835-i2s.c
index e6a12e271b07..9db542699a13 100644
--- a/sound/soc/bcm/bcm2835-i2s.c
+++ b/sound/soc/bcm/bcm2835-i2s.c
@@ -493,11 +493,6 @@ static int bcm2835_i2s_hw_params(struct snd_pcm_substream *substream,
 		return -EINVAL;
 	}
 
-	bcm2835_i2s_calc_channel_pos(&rx_ch1_pos, &rx_ch2_pos,
-		rx_mask, slot_width, data_delay, odd_slot_offset);
-	bcm2835_i2s_calc_channel_pos(&tx_ch1_pos, &tx_ch2_pos,
-		tx_mask, slot_width, data_delay, odd_slot_offset);
-
 	/*
 	 * Transmitting data immediately after frame start, eg
 	 * in left-justified or DSP mode A, only works stable
@@ -508,19 +503,26 @@ static int bcm2835_i2s_hw_params(struct snd_pcm_substream *substream,
 			"Unstable slave config detected, L/R may be swapped");
 
 	/*
-	 * Set format for both streams.
-	 * We cannot set another frame length
-	 * (and therefore word length) anyway,
-	 * so the format will be the same.
+	 * Set format on a per stream basis.
+	 * The alignment format can be different depending on direction.
 	 */
-	regmap_write(dev->i2s_regmap, BCM2835_I2S_RXC_A_REG, 
-		  format
-		| BCM2835_I2S_CH1_POS(rx_ch1_pos)
-		| BCM2835_I2S_CH2_POS(rx_ch2_pos));
-	regmap_write(dev->i2s_regmap, BCM2835_I2S_TXC_A_REG, 
-		  format
-		| BCM2835_I2S_CH1_POS(tx_ch1_pos)
-		| BCM2835_I2S_CH2_POS(tx_ch2_pos));
+	if (substream->stream == SNDRV_PCM_STREAM_CAPTURE) {
+		bcm2835_i2s_calc_channel_pos(&rx_ch1_pos, &rx_ch2_pos,
+			rx_mask, slot_width, data_delay, odd_slot_offset);
+		regmap_write(dev->i2s_regmap, BCM2835_I2S_RXC_A_REG,
+			  format
+			| BCM2835_I2S_CH1_POS(rx_ch1_pos)
+			| BCM2835_I2S_CH2_POS(rx_ch2_pos));
+	}
+
+	if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
+		bcm2835_i2s_calc_channel_pos(&tx_ch1_pos, &tx_ch2_pos,
+			tx_mask, slot_width, data_delay, odd_slot_offset);
+		regmap_write(dev->i2s_regmap, BCM2835_I2S_TXC_A_REG,
+			  format
+			| BCM2835_I2S_CH1_POS(tx_ch1_pos)
+			| BCM2835_I2S_CH2_POS(tx_ch2_pos));
+	}
 
 	/* Setup the I2S mode */
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
