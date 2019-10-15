Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D987AD74A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 13:14:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=fEVzeryme0O9DWyjrALXxPIPQh8Qu0Gk+LJYGuzIEZI=; b=qSf
	/Q+V+SikoZSN8vaUDNRF/zACVzEoDURTsDNrJ6G6WSOCgE02lIpFm3Ry0PlrVhbhhPYJti2f4LN4n
	5wDFlPfMt/5Hl4Yx8w1YxhLPvbmv+DgRKQ3tJMBz1dJf28tDRIpIuint8yTWlep4rhdKuHjY+To1I
	h75QPZ9KNDuk0mtVbBqrwTdbLEgodI8D8p6/QxkThxAKsFimJNDZ8ScTjfeKEFJtoR9OHb2uQuziW
	wHHbeRgS4iDr2cDndWr4+BzTLVowaPmS3PTSz+N+7mzVSC3m3zsf5WeKcJbJoY1QtDAJZkFobDkJb
	JWH+QVZ3PWPvYMRBdaGgQDDu1Q1W+qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKKmb-0000lr-4e; Tue, 15 Oct 2019 11:14:29 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKKkf-0007AM-3G
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 11:12:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=ARKB+R9zHbI+0KX24UtACDYQgXcgSfTo14RFK2hAad4=; b=EUm1CNU4w5Az
 6jonVhvhcKbeKg3RZsQV6necCkwtd9WbScME//jT4QGu+/5pNiIdV0NfWherMt8nvWn1lJPUn4Jrq
 CiDm00+2Cy7z/Q/NUsygBhMOdkgL7NqLNXsbt0pLrZikSL8t72N47dNQOy7pVPhs35lkg8DZIPYJr
 G9sKY=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iKKka-00021S-Up; Tue, 15 Oct 2019 11:12:25 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 6B0342741CD7; Tue, 15 Oct 2019 12:12:24 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: Applied "spi: tegra20-sflash: use to new `spi_transfer_delay_exec`"
 to the spi tree
In-Reply-To: <20190926105147.7839-12-alexandru.ardelean@analog.com>
X-Patchwork-Hint: ignore
Message-Id: <20191015111224.6B0342741CD7@ypsilon.sirena.org.uk>
Date: Tue, 15 Oct 2019 12:12:24 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_041229_193095_80CF7BE1 
X-CRM114-Status: GOOD (  16.04  )
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

   spi: tegra20-sflash: use to new `spi_transfer_delay_exec`

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

From b883d5eda6c49a807e925b257bf9687d5c351004 Mon Sep 17 00:00:00 2001
From: Alexandru Ardelean <alexandru.ardelean@analog.com>
Date: Thu, 26 Sep 2019 13:51:39 +0300
Subject: [PATCH] spi: tegra20-sflash: use to new `spi_transfer_delay_exec`

This conversion to the spi_transfer_delay_exec() helper is not
straightforward, as it seems that when a delay is present, the controller
issues a command, and then a delay is followed.

This change adds support for the new `delay` field which is of type
`spi_delay` and keeps backwards compatibility with the old `delay_usecs`
field.

Signed-off-by: Alexandru Ardelean <alexandru.ardelean@analog.com>
Link: https://lore.kernel.org/r/20190926105147.7839-12-alexandru.ardelean@analog.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-tegra20-sflash.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-tegra20-sflash.c b/drivers/spi/spi-tegra20-sflash.c
index a841a7250d14..514429379206 100644
--- a/drivers/spi/spi-tegra20-sflash.c
+++ b/drivers/spi/spi-tegra20-sflash.c
@@ -341,10 +341,11 @@ static int tegra_sflash_transfer_one_message(struct spi_master *master,
 			goto exit;
 		}
 		msg->actual_length += xfer->len;
-		if (xfer->cs_change && xfer->delay_usecs) {
+		if (xfer->cs_change &&
+		    (xfer->delay_usecs || xfer->delay.value)) {
 			tegra_sflash_writel(tsd, tsd->def_command_reg,
 					SPI_COMMAND);
-			udelay(xfer->delay_usecs);
+			spi_transfer_delay_exec(xfer);
 		}
 	}
 	ret = 0;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
