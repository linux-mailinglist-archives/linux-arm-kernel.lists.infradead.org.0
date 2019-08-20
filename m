Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44A2B968BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 20:45:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=sowa9v3VmMZ27GvBvcJm4MfWkFmSffZ5oykrgZaCJqU=; b=hoY
	wa/LoRcncgv9S9SOtuTsP/sA4egAJt1OtFCBX9aXAviO0r1K+R9bpPTyVh7y40vOJrusSbWtAVeFx
	xfau2HP8a9E/B+yo8ahODcpRlgwSiSbZz9qNk7EH4NjbGUAd3wDb65N94/Fh97Z+ECFdCc6FpY5sS
	6bNfQsB5yD1d71EB6z4t7JwiLOzPGpYcWzXmg08U5NaOvOeFFIVosUbwBXxeH/gKl277cfiOWqliN
	6m8Jb7j4rtUa3oxNGt7yVdw+D3WtbU5FkqEoKlZcnkTpMLnQsnha41UBdGclxRhw4oW3Hm2LWjEe6
	gkzWM3vu3yvNhenjfF5l9WMORAenCgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i098n-0005yN-Oz; Tue, 20 Aug 2019 18:45:57 +0000
Received: from mail-ed1-f98.google.com ([209.85.208.98])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0882-0001vh-1n
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 17:41:07 +0000
Received: by mail-ed1-f98.google.com with SMTP id f22so7256681edt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 10:41:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:message-id:date;
 bh=tZ1DiiOuBDIZzhX5DI1K9yRxUbP4c3jFKWVGax/+oTo=;
 b=uTGASH4lRrpQTpH/T/nrRytvPlXP20Yzi8LftovsuJfthVKTKIVHK2oT/BRJ/ILpHU
 7dVKav8vJnsZFl8IiohQbVMCf8gFA0nWJ3g8lihimuT/VDbfkV5H5VjO3SFFfgw3qRDf
 4ASJE7aYkubzwosDNC9sO/D4QtpRaSztSMikLiZorhIsMIiOpcktM/tNM8RFyA1tBrWy
 +x14FLE/bGlzJ6HAXLskVAGyJQU/I/byVvK+SaN3U/ElbV7e41/FvTIjZ5FOUNLzUIlE
 YQYBD1etVS3Q6UvpBQ27Mp/iWz3kKCNqRzGYazI6pztDy4zIlDY9OspxjAdU1/hebhHH
 9zGg==
X-Gm-Message-State: APjAAAX/I43qE1cu2GLEG0p++6Ra/AydRviW7u1aLHPqlezWIadgbi+u
 ExM9LtOEFC8xAXbo0xMTKbwexWvoV23YV9LVqKm9Dkzp1HSOzkBzioM7Tku2loh9UQ==
X-Google-Smtp-Source: APXvYqxVYvjEkq1/WSs8U8kEZNNOw7hDX+wh+QkVqHWzvLXv7WNIzxVWanjlBkaNjXmBxHv7sdku2GIhZpZV
X-Received: by 2002:a50:d0c2:: with SMTP id g2mr32456105edf.251.1566322864514; 
 Tue, 20 Aug 2019 10:41:04 -0700 (PDT)
Received: from heliosphere.sirena.org.uk (heliosphere.sirena.org.uk.
 [2a01:7e01::f03c:91ff:fed4:a3b6])
 by smtp-relay.gmail.com with ESMTPS id c21sm343874edx.37.2019.08.20.10.41.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Aug 2019 10:41:04 -0700 (PDT)
X-Relaying-Domain: sirena.org.uk
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i0880-00032D-0B; Tue, 20 Aug 2019 17:41:04 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 5B7A3274314C; Tue, 20 Aug 2019 18:41:03 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Applied "ASoC: mchp-i2s-mcc: Wait for RX/TX RDY only if controller is
 running" to the asoc tree
In-Reply-To: <20190820162411.24836-3-codrin.ciubotariu@microchip.com>
X-Patchwork-Hint: ignore
Message-Id: <20190820174103.5B7A3274314C@ypsilon.sirena.org.uk>
Date: Tue, 20 Aug 2019 18:41:03 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_104106_090600_5F6812FE 
X-CRM114-Status: GOOD (  15.77  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.98 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.98 listed in wl.mailspike.net]
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

   ASoC: mchp-i2s-mcc: Wait for RX/TX RDY only if controller is running

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

From 0f6fc97501b790c971b11b52a654009d21c45238 Mon Sep 17 00:00:00 2001
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Date: Tue, 20 Aug 2019 19:24:10 +0300
Subject: [PATCH] ASoC: mchp-i2s-mcc: Wait for RX/TX RDY only if controller is
 running

Since hw_free() can be called multiple times and not just after a stop
trigger command, we should check whether the RX or TX ready interrupt was
truly enabled previously. For this, we assure that the condition of the
wait event is always true, except when RX/TX interrupts are enabled.

Fixes: 7e0cdf545a55 ("ASoC: mchp-i2s-mcc: add driver for I2SC Multi-Channel Controller")
Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Link: https://lore.kernel.org/r/20190820162411.24836-3-codrin.ciubotariu@microchip.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 sound/soc/atmel/mchp-i2s-mcc.c | 28 ++++++++++++++++------------
 1 file changed, 16 insertions(+), 12 deletions(-)

diff --git a/sound/soc/atmel/mchp-i2s-mcc.c b/sound/soc/atmel/mchp-i2s-mcc.c
index 319f975586f1..ab7d5f98e759 100644
--- a/sound/soc/atmel/mchp-i2s-mcc.c
+++ b/sound/soc/atmel/mchp-i2s-mcc.c
@@ -691,22 +691,24 @@ static int mchp_i2s_mcc_hw_free(struct snd_pcm_substream *substream,
 		err = wait_event_interruptible_timeout(dev->wq_txrdy,
 						       dev->tx_rdy,
 						       msecs_to_jiffies(500));
+		if (err == 0) {
+			dev_warn_once(dev->dev,
+				      "Timeout waiting for Tx ready\n");
+			regmap_write(dev->regmap, MCHP_I2SMCC_IDRA,
+				     MCHP_I2SMCC_INT_TXRDY_MASK(dev->channels));
+			dev->tx_rdy = 1;
+		}
 	} else {
 		err = wait_event_interruptible_timeout(dev->wq_rxrdy,
 						       dev->rx_rdy,
 						       msecs_to_jiffies(500));
-	}
-
-	if (err == 0) {
-		u32 idra;
-
-		dev_warn_once(dev->dev, "Timeout waiting for %s\n",
-			      is_playback ? "Tx ready" : "Rx ready");
-		if (is_playback)
-			idra = MCHP_I2SMCC_INT_TXRDY_MASK(dev->channels);
-		else
-			idra = MCHP_I2SMCC_INT_RXRDY_MASK(dev->channels);
-		regmap_write(dev->regmap, MCHP_I2SMCC_IDRA, idra);
+		if (err == 0) {
+			dev_warn_once(dev->dev,
+				      "Timeout waiting for Rx ready\n");
+			regmap_write(dev->regmap, MCHP_I2SMCC_IDRA,
+				     MCHP_I2SMCC_INT_RXRDY_MASK(dev->channels));
+			dev->rx_rdy = 1;
+		}
 	}
 
 	if (!mchp_i2s_mcc_is_running(dev)) {
@@ -818,6 +820,8 @@ static int mchp_i2s_mcc_dai_probe(struct snd_soc_dai *dai)
 
 	init_waitqueue_head(&dev->wq_txrdy);
 	init_waitqueue_head(&dev->wq_rxrdy);
+	dev->tx_rdy = 1;
+	dev->rx_rdy = 1;
 
 	snd_soc_dai_init_dma_data(dai, &dev->playback, &dev->capture);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
