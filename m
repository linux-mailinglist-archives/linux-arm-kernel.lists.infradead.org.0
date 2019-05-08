Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95403174A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 11:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=wb21TZ0DOUoTW/2Kc4lUsaVdax5b4q89BmYsqLPFeGY=; b=RCw
	47+NrZfodX7gxm6q06jy1KHPYFiic4+fic3iTPFFu1jOVdt7prRy9OzKQOMe9U5T3f325Ncn3KZx0
	ptW73/643J4baT2HsXTenRQhuH16rbF5v0s9Rnm+axD+aCClYIienmUSlXik+EbG75fteq71dQF5d
	rOwB5IyJqQ8QWPOyqv5FMeOxvUM2/v/oyEwSygQhXGTQbKVl/AVkxrjmmv/BJwRIwoXggxCYUQuKs
	a/tN6K9iOs4xixdrZFikNeRdG6O/SihR7zFvhtKADxIaUgKklpeV5HRxzZpICxfJBDXz5/iKTl25p
	fcce6dQDMdbldCKp7BF34PH5FXVrWBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOIZv-0008Qb-Qd; Wed, 08 May 2019 09:09:31 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOIZc-0008Fw-0X; Wed, 08 May 2019 09:09:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=oc9XTQISbyvrbEHH1Tqa1V67oMH5ek6FoAZrGdVKBHs=; b=C8I/shjdkWya
 dPzJscULk01uu/6D3CzzO1g9o6MG2RFYC5TEQc+yTDTK/zyxC//r7qnuK4eNSJYYu82S4ZwQ3CbvQ
 0+nEyMLow1FFpQx97jcuGvFQq+U79XCud9XO7EFRX1g0BWkHYPtSsMmMsYa5mad8+UPwoITCTmvoM
 g4PVk=;
Received: from [61.199.190.11] (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hOIZU-0007gJ-VH; Wed, 08 May 2019 09:09:06 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id DA05F440039; Wed,  8 May 2019 10:08:55 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Martin Sperl <kernel@martin.sperl.org>
Subject: Applied "spi: bcm2835: Avoid 64-bit arithmetic in xfer len calc" to
 the spi tree
In-Reply-To: <20190423201513.8073-3-kernel@martin.sperl.org>
X-Patchwork-Hint: ignore
Message-Id: <20190508090855.DA05F440039@finisterre.sirena.org.uk>
Date: Wed,  8 May 2019 10:08:55 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_020912_192354_6DF7E3A3 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, linux-spi@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, Mark Brown <broonie@kernel.org>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: bcm2835: Avoid 64-bit arithmetic in xfer len calc

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.3

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

From 7f1922eb3adba8c372fdf0d04fe9e6268f98291a Mon Sep 17 00:00:00 2001
From: Martin Sperl <kernel@martin.sperl.org>
Date: Tue, 23 Apr 2019 20:15:09 +0000
Subject: [PATCH] spi: bcm2835: Avoid 64-bit arithmetic in xfer len calc

Avoid 64 bit aritmetics when deciding if we need to use polling or not
This replicates: commit d704afffe65c
("spi: bcm2835aux: Avoid 64-bit arithmetic in xfer len calc")
from spi-bcm2835aux

Signed-off-by: Martin Sperl <kernel@martin.sperl.org>

Changelog:
  V1 -> V2: applied feedback by Stefan Wahren
            reorganized patchset
	    added extra rational, descriptions
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-bcm2835.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 6c73e694794a..b7bb07c9507d 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -749,7 +749,6 @@ static int bcm2835_spi_transfer_one(struct spi_master *master,
 	struct bcm2835_spi *bs = spi_master_get_devdata(master);
 	unsigned long spi_hz, clk_hz, cdiv;
 	unsigned long spi_used_hz;
-	unsigned long long xfer_time_us;
 	u32 cs = bcm2835_rd(bs, BCM2835_SPI_CS);
 
 	/* set clock */
@@ -790,14 +789,15 @@ static int bcm2835_spi_transfer_one(struct spi_master *master,
 	bs->tx_len = tfr->len;
 	bs->rx_len = tfr->len;
 
-	/* calculate the estimated time in us the transfer runs */
-	xfer_time_us = (unsigned long long)tfr->len
-		* 9 /* clocks/byte - SPI-HW waits 1 clock after each byte */
-		* 1000000;
-	do_div(xfer_time_us, spi_used_hz);
-
-	/* for short requests run polling*/
-	if (xfer_time_us <= BCM2835_SPI_POLLING_LIMIT_US)
+	/* Calculate the estimated time in us the transfer runs.  Note that
+	 * there is 1 idle clocks cycles after each byte getting transferred
+	 * so we have 9 cycles/byte.  This is used to find the number of Hz
+	 * per byte per polling limit.  E.g., we can transfer 1 byte in 30 us
+	 * per 300,000 Hz of bus clock.
+	 */
+#define HZ_PER_BYTE ((9 * 1000000) / BCM2835_SPI_POLLING_LIMIT_US)
+	/* run in polling mode for short transfers */
+	if (tfr->len < spi_used_hz / HZ_PER_BYTE)
 		return bcm2835_spi_transfer_one_poll(master, spi, tfr, cs);
 
 	/* run in dma mode if conditions are right */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
