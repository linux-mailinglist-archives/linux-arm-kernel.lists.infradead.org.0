Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FA9BD74AA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 13:14:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=CGYVSUhvSFRrvDwJBInOAdksPGtw74MXRWm9lgAkyx8=; b=Cj1
	Ne+v4ZOy4ddv13wlF9Jh0X3Ubaf/YQ4RiAQK2vBuqUuy75+6UzfwVQqV4W/kEnvf3DoD/JeKPH5Y4
	xX9isvMylRopCKI0TNDH7WpSTrVtDV4vNECyWuzKcWNd1dcAuLbv+8hC9vTq+BUYpTt4CEsjuKjLS
	NGlDJFm1wPpwiI+sNrm/K/cBqBJUSuUyVNc8z5LaxMfE1OomxkPU3i1ufCaruS4XEZdRbCM9nEo9U
	G4cqBMpMxOn01YljZh5ZlXk8njqPiPA3pYyNApPfjOa26x6H3gfUdaJDP4mnLWfiskDKJJodaH6pk
	kpo3MJG9JwpmjoAn4St5oclKvHNrBpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKmo-00010x-G5; Tue, 15 Oct 2019 11:14:42 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKkd-00078k-9G
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 11:12:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=SdFplOdARAiXBlTlJSvHykmSu/OcgUoZEZ9Bc5ESoPY=; b=qf0oDaBGPypQ
 vHYzI8emcLmoeAewd9mYDvNs8jm97ENdNYLGHwm1UdTJXkO7yNmcU4F+VyqAHMnIwzMQxKPClHmUG
 +rnqzRG/kAQk2f1CApikAhDqbdMekRksxnKzOTbtAlzlVb+AtG5W5DJwpK89CONxD8Ss9XEQgL1Wc
 uf8bI=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iKKkZ-00020m-6B; Tue, 15 Oct 2019 11:12:23 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id A2DE12741CD7; Tue, 15 Oct 2019 12:12:22 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Applied "spi: spi-fsl-espi: convert transfer delay to `spi_delay`
 format" to the spi tree
In-Reply-To: <20190926105147.7839-17-alexandru.ardelean@analog.com>
X-Patchwork-Hint: ignore
Message-Id: <20191015111222.A2DE12741CD7@ypsilon.sirena.org.uk>
Date: Tue, 15 Oct 2019 12:12:22 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_041227_340901_EEB4BF2B 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: f.fainelli@gmail.com, baolin.wang@linaro.org, linux-iio@vger.kernel.org,
 zhang.lyra@gmail.com, linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org, orsonzhai@gmail.com, jic23@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: spi-fsl-espi: convert transfer delay to `spi_delay` format

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.5

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

From 3984d39b0e41ac4de8b4530ae3911ccf52ed4bbf Mon Sep 17 00:00:00 2001
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
Date: Thu, 26 Sep 2019 13:51:44 +0300
Subject: [PATCH] spi: spi-fsl-espi: convert transfer delay to `spi_delay`
 format

The way the max delay is computed for this controller, it looks like it is
searching for the max delay from an SPI message a using that.

No idea if this is valid. But this change should support both `delay_usecs`
and the new `delay` data which is of `spi_delay` type.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
Link: https://lore.kernel.org/r/20190926105147.7839-17-alexandru.ardelean@analog.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-fsl-espi.c | 16 +++++++++++++---
 drivers/spi/spi.c          |  9 +++++----
 include/linux/spi/spi.h    |  1 +
 3 files changed, 19 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/spi-fsl-espi.c b/drivers/spi/spi-fsl-espi.c
index f20326714b9d..f72daf66f3f3 100644
--- a/drivers/spi/spi-fsl-espi.c
+++ b/drivers/spi/spi-fsl-espi.c
@@ -437,6 +437,7 @@ static int fsl_espi_do_one_msg(struct spi_master *master,
 			       struct spi_message *m)
 {
 	unsigned int delay_usecs = 0, rx_nbits = 0;
+	unsigned int delay_nsecs = 0, delay_nsecs1 = 0;
 	struct spi_transfer *t, trans = {};
 	int ret;
 
@@ -445,8 +446,16 @@ static int fsl_espi_do_one_msg(struct spi_master *master,
 		goto out;
 
 	list_for_each_entry(t, &m->transfers, transfer_list) {
-		if (t->delay_usecs > delay_usecs)
-			delay_usecs = t->delay_usecs;
+		if (t->delay_usecs) {
+			if (t->delay_usecs > delay_usecs) {
+				delay_usecs = t->delay_usecs;
+				delay_nsecs = delay_usecs * 1000;
+			}
+		} else {
+			delay_nsecs1 = spi_delay_to_ns(&t->delay, t);
+			if (delay_nsecs1 > delay_nsecs)
+				delay_nsecs = delay_nsecs1;
+		}
 		if (t->rx_nbits > rx_nbits)
 			rx_nbits = t->rx_nbits;
 	}
@@ -457,7 +466,8 @@ static int fsl_espi_do_one_msg(struct spi_master *master,
 	trans.len = m->frame_length;
 	trans.speed_hz = t->speed_hz;
 	trans.bits_per_word = t->bits_per_word;
-	trans.delay_usecs = delay_usecs;
+	trans.delay.value = delay_nsecs;
+	trans.delay.unit = SPI_DELAY_UNIT_NSECS;
 	trans.rx_nbits = rx_nbits;
 
 	if (trans.len)
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 21628b0728f1..5414a10afd65 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1120,7 +1120,7 @@ static void _spi_transfer_delay_ns(u32 ns)
 	}
 }
 
-static int _spi_delay_to_ns(struct spi_delay *_delay, struct spi_transfer *xfer)
+int spi_delay_to_ns(struct spi_delay *_delay, struct spi_transfer *xfer)
 {
 	u32 delay = _delay->value;
 	u32 unit = _delay->unit;
@@ -1153,6 +1153,7 @@ static int _spi_delay_to_ns(struct spi_delay *_delay, struct spi_transfer *xfer)
 
 	return delay;
 }
+EXPORT_SYMBOL_GPL(spi_delay_to_ns);
 
 int spi_delay_exec(struct spi_delay *_delay, struct spi_transfer *xfer)
 {
@@ -1161,7 +1162,7 @@ int spi_delay_exec(struct spi_delay *_delay, struct spi_transfer *xfer)
 	if (!_delay)
 		return -EINVAL;
 
-	delay = _spi_delay_to_ns(_delay, xfer);
+	delay = spi_delay_to_ns(_delay, xfer);
 	if (delay < 0)
 		return delay;
 
@@ -3333,11 +3334,11 @@ static int _spi_xfer_word_delay_update(struct spi_transfer *xfer,
 {
 	int delay1, delay2;
 
-	delay1 = _spi_delay_to_ns(&xfer->word_delay, xfer);
+	delay1 = spi_delay_to_ns(&xfer->word_delay, xfer);
 	if (delay1 < 0)
 		return delay1;
 
-	delay2 = _spi_delay_to_ns(&spi->word_delay, xfer);
+	delay2 = spi_delay_to_ns(&spi->word_delay, xfer);
 	if (delay2 < 0)
 		return delay2;
 
diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
index cfd87b18f077..c40d6af2bf07 100644
--- a/include/linux/spi/spi.h
+++ b/include/linux/spi/spi.h
@@ -103,6 +103,7 @@ struct spi_delay {
 	u8	unit;
 };
 
+extern int spi_delay_to_ns(struct spi_delay *_delay, struct spi_transfer *xfer);
 extern int spi_delay_exec(struct spi_delay *_delay, struct spi_transfer *xfer);
 
 /**
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
