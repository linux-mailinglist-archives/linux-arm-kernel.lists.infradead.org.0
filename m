Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F71D74C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 13:18:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=Zlq7Hl0IkpR+/TwxjVsOqsf5+mAUGi8r0Z+M4ln0e6A=; b=Xnz
	39sG8WfucyQJJbEuTSgFFCxc/ekhYj9Q1KH1DvXre0thZ+KCjFuigqpoEfEJw+htkqkP1lptTDz/6
	5NNZBjQJnFsFkeMMvATQPwVgLNNx91TYyl015NwX0yMgseSAikDSf70W+RveBZNCRfdFWfmWn4q7m
	7N3APdIz5CNVL91MRvQdTxUJE28DRCo2O3s/ie6OrcSiHFsnTfIUt4l/cK1REUaMkyFigFOB1Lvoa
	uZp3xbIcxErjFEp7ZQtRLWjr9UcT3OOqbtvgrPMo6nVIrQs8SZpeDpwn5gBuUs9aqF/ZIdxNZEv2L
	x0m1P6STXabKbWEvdQ8VE5j7XeMi5rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKq7-0004r1-2Y; Tue, 15 Oct 2019 11:18:07 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKkj-0007F1-Ey
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 11:12:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=HxCw+GrSFAjIDABzZL5hlFUSN3/Z4sQnIyk1p1c3V9o=; b=xg2pQfOmcooJ
 4JAirHEZx2LJXvvRwu2jLT98sArjuGfJ6Vv2q2DBDgRJzElWIwXgR3VYyzJ0hyuPpWnp9cDidcvRy
 42aD6hF4rIWxagTMPBJpvh2aYxO9OVBAdLfthyE2/wVSowC1NKzQ0hGShSRLPMJB7JUjwasETD8/Z
 tmNJw=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iKKkf-000234-Ec; Tue, 15 Oct 2019 11:12:29 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id E15C92741DCA; Tue, 15 Oct 2019 12:12:28 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Applied "spi: move `cs_change_delay` backwards compat logic outside
 switch" to the spi tree
In-Reply-To: <20190926105147.7839-2-alexandru.ardelean@analog.com>
X-Patchwork-Hint: ignore
Message-Id: <20191015111228.E15C92741DCA@ypsilon.sirena.org.uk>
Date: Tue, 15 Oct 2019 12:12:28 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_041233_510574_8DCC3F4A 
X-CRM114-Status: GOOD (  14.41  )
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

   spi: move `cs_change_delay` backwards compat logic outside switch

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

From 6b3f236a998550dba91a46a22feb1cc02f39fb06 Mon Sep 17 00:00:00 2001
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
Date: Thu, 26 Sep 2019 13:51:29 +0300
Subject: [PATCH] spi: move `cs_change_delay` backwards compat logic outside
 switch

The `cs_change_delay` backwards compatibility value could be moved outside
of the switch statement.
The only reason to do it, is to make the next patches easier to diff.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
Link: https://lore.kernel.org/r/20190926105147.7839-2-alexandru.ardelean@analog.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 9bb36c32cbf9..7ba981cdb86b 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1114,16 +1114,15 @@ static void _spi_transfer_cs_change_delay(struct spi_message *msg,
 	u32 hz;
 
 	/* return early on "fast" mode - for everything but USECS */
-	if (!delay && unit != SPI_DELAY_UNIT_USECS)
+	if (!delay) {
+		if (unit == SPI_DELAY_UNIT_USECS)
+			_spi_transfer_delay_ns(10000);
 		return;
+	}
 
 	switch (unit) {
 	case SPI_DELAY_UNIT_USECS:
-		/* for compatibility use default of 10us */
-		if (!delay)
-			delay = 10000;
-		else
-			delay *= 1000;
+		delay *= 1000;
 		break;
 	case SPI_DELAY_UNIT_NSECS: /* nothing to do here */
 		break;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
