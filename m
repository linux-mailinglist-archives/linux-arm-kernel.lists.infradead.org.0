Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16263D7470
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 13:13:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=+UDmqQDo65WrtSGZuCExu5q/dU9+1ZpzZBBlxYMF764=; b=geu
	rZ/bLQqlNSXUGWx0WxW43gsYzPwTXozX6mkdbKFk9H2kT70PIe7HpUffZMbUzfq5/pQTXvH41ag8m
	6faRaSHncbcwKllRYfonOgTZWH5kA0Bg9QO/BzSoVdvcI+MIFBZxVsgVG5E5G7IVnU2TtW2jQZ1rC
	A0ojNtg8nI5PIpL0vM/075gXIRB8Vu0lKwRPeDyboeCPVWarw8qXFAXKfYL1naTnwUO3eEXMBeAo5
	4qlwQUQy0Eyn7fOnQ8RLRD8XzZrbC181qGFwTB6HJUAmGitkq1gwcgh09mnbmy1M0ijFP1TEvP8XE
	DfpIjGxCYdTvzSrPJSiwojOs+Y6Y6XA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKl0-0007An-8U; Tue, 15 Oct 2019 11:12:50 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKkb-000785-OR
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 11:12:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=ozxjDEuvmCR1qhM0gekOKO4P+Dq1BuOBLJHr+rFe3bo=; b=jAHArkMX56x3
 waR4ugKQSl7AkAoqMMpLWUyQAeT4xd7/v2/mR28vE8nRu2otWEzHDlUi1Q+ZqnZspDBKggEcOkVO4
 Q48Po77NVRnCTefr0vDAdnyDf3zt0BGsJoDgjNEzbsrxkwBqL15B9HpkxC6THCTNDs2oPOkmHq2X2
 1HR3k=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iKKkY-00020e-Ix; Tue, 15 Oct 2019 11:12:22 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 140C02741DCA; Tue, 15 Oct 2019 12:12:22 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Applied "spi: bcm63xx: extend error condition to `delay` as well" to
 the spi tree
In-Reply-To: <20190926105147.7839-19-alexandru.ardelean@analog.com>
X-Patchwork-Hint: ignore
Message-Id: <20191015111222.140C02741DCA@ypsilon.sirena.org.uk>
Date: Tue, 15 Oct 2019 12:12:22 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_041225_798018_3ACF1743 
X-CRM114-Status: GOOD (  14.91  )
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

   spi: bcm63xx: extend error condition to `delay` as well

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

From c5751ba0f71e3afe62000a9505915093efa31bd6 Mon Sep 17 00:00:00 2001
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
Date: Thu, 26 Sep 2019 13:51:46 +0300
Subject: [PATCH] spi: bcm63xx: extend error condition to `delay` as well

The driver errors out if `delay_usecs` is non-zero. This error condition
should be extended to the new `delay` field, to account for when it will be
used.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
Link: https://lore.kernel.org/r/20190926105147.7839-19-alexandru.ardelean@analog.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-bcm63xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/spi-bcm63xx.c b/drivers/spi/spi-bcm63xx.c
index fdd7eaa0b8ed..0f1b10a4ef0c 100644
--- a/drivers/spi/spi-bcm63xx.c
+++ b/drivers/spi/spi-bcm63xx.c
@@ -368,7 +368,7 @@ static int bcm63xx_spi_transfer_one(struct spi_master *master,
 		}
 
 		/* CS will be deasserted directly after transfer */
-		if (t->delay_usecs) {
+		if (t->delay_usecs || t->delay.value) {
 			dev_err(&spi->dev, "unable to keep CS asserted after transfer\n");
 			status = -EINVAL;
 			goto exit;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
