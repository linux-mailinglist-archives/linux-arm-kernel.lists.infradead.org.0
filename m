Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE75174B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 11:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=q1ZzvaAOO2gocLekSxDhS+KxpV4sBLxIvfVYke/QINs=; b=nf2
	N6q0HUHHDvxutm0QQkBleDBoikxRVpRMwSOak92TXrKxb/sf4GmozN4syx2Fb2s6kEtjXIV/Am7EF
	m91Wbmz68Bi8iHJ0fAOYe6umnu/XwrRWdZbvxtfSlJOBcuV6GipjhqSAUOH/ZrHRhT4w8Huf0Nk+c
	/q9O+rSTmjujlToKJHGcbneX8rdESsfHEUJuPYwE6MK6fhI9u7f7lvkUWEgRD2EE0GgzmoTk11gcH
	xfWqix9RGFWPD5KsN1Hw39wRboBy+0/nFEVvZ4fT5dRNwUzUSj5Ji/hqIL35nwAo2s7RzoBgzzFD5
	eSBOSNgnxh/UAvBc0l9XVkIX3d2M7nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOIaQ-0000jQ-F9; Wed, 08 May 2019 09:10:02 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOIZf-0008HE-9I; Wed, 08 May 2019 09:09:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=gn9t97HPmXoC1ozrtx5IXyGRI/WtGcItZCxC3ipx6kg=; b=f5Xv34rnSStV
 LPqwpDfxk6OfOfkWm3BfmOJZnWrHm6jj6qeOdYeKPGG/k7GqBk+7DNy1QeLfVgGPVLvCgoAX7knU4
 bCWRz6HlT/+ElaSgN8OkiwlfwKizpJiUIy1feqa8t4Cs29PFapon7tQ5YFs9JWjSdbThozUNisuPp
 Ekryk=;
Received: from [61.199.190.11] (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hOIZa-0007gM-9P; Wed, 08 May 2019 09:09:11 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 7596B440010; Wed,  8 May 2019 10:08:56 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Martin Sperl <kernel@martin.sperl.org>
Subject: Applied "spi: bcm2835: bcm2835_spi_transfer_one_poll remove
 unnecessary argument" to the spi tree
In-Reply-To: <20190423201513.8073-2-kernel@martin.sperl.org>
X-Patchwork-Hint: ignore
Message-Id: <20190508090856.7596B440010@finisterre.sirena.org.uk>
Date: Wed,  8 May 2019 10:08:56 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_020915_621968_F98AC3C0 
X-CRM114-Status: GOOD (  14.14  )
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

   spi: bcm2835: bcm2835_spi_transfer_one_poll remove unnecessary argument

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

From 9ac3f90db46b7805a37df2bc419faf369025d64a Mon Sep 17 00:00:00 2001
From: Martin Sperl <kernel@martin.sperl.org>
Date: Tue, 23 Apr 2019 20:15:08 +0000
Subject: [PATCH] spi: bcm2835: bcm2835_spi_transfer_one_poll remove
 unnecessary argument

Remove the unnecessary argument of xfer_time_us when calling
bcm2835_spi_transfer_one_poll.

Signed-off-by: Martin Sperl <kernel@martin.sperl.org>

Changelog:
  V1 -> V2: applied feedback by Stefan Wahren
            reorganized patchset
	    added extra rational, descriptions
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-bcm2835.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 8aa22713c483..6c73e694794a 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -697,8 +697,7 @@ static void bcm2835_dma_init(struct spi_master *master, struct device *dev)
 static int bcm2835_spi_transfer_one_poll(struct spi_master *master,
 					 struct spi_device *spi,
 					 struct spi_transfer *tfr,
-					 u32 cs,
-					 unsigned long long xfer_time_us)
+					 u32 cs)
 {
 	struct bcm2835_spi *bs = spi_master_get_devdata(master);
 	unsigned long timeout;
@@ -799,8 +798,7 @@ static int bcm2835_spi_transfer_one(struct spi_master *master,
 
 	/* for short requests run polling*/
 	if (xfer_time_us <= BCM2835_SPI_POLLING_LIMIT_US)
-		return bcm2835_spi_transfer_one_poll(master, spi, tfr,
-						     cs, xfer_time_us);
+		return bcm2835_spi_transfer_one_poll(master, spi, tfr, cs);
 
 	/* run in dma mode if conditions are right */
 	if (master->can_dma && bcm2835_spi_can_dma(master, spi, tfr))
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
