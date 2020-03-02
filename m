Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2BF175F2A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 17:05:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=PMhUwyIW/ghYHtDd4ZS45I5CvvYqufYC6coMcDG2L1s=; b=kNX
	Zi7XDNppouj9eAVdnAZ81OaqpRmRHWyuLyO3PD6clzVMYKycB1bBpQPZWlUE6FvdDF1qy6q8a5ucW
	VA/hcsEa9dHr/I5Zj24x4laNRmp89mbGYkxlq7Xn8sgLURPgie41KSR6V61FiqVGDf+XSrHv/I6gu
	mkEuJgvbwa+QP5XLKrHNgUlY6900LtcJfeT8kLwPqLgqkZYFif5FkqQ1szTXogkNx8fEN9n6zt0sP
	1HHSYwpHvWSua5xCbdVXdhf318yCJ3+72T88315cGauHsCpCmterHYKWkxU7Sx89Ys9Vk3xeO70ph
	x7WBRLiFfAPgUqnQy0kN9SLtcolF2zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8nZe-0001Up-BP; Mon, 02 Mar 2020 16:05:42 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8nZO-0001QL-B0
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 16:05:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE0782F;
 Mon,  2 Mar 2020 08:05:25 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5CCD53F534;
 Mon,  2 Mar 2020 08:05:25 -0800 (PST)
Date: Mon, 02 Mar 2020 16:05:23 +0000
From: Mark Brown <broonie@kernel.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: Applied "spi: bcm63xx-hsspi: Really keep pll clk enabled" to the spi
 tree
In-Reply-To: <20200228213838.7124-1-christophe.jaillet@wanadoo.fr>
Message-Id: <applied-20200228213838.7124-1-christophe.jaillet@wanadoo.fr>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_080526_443136_6C021EDA 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: f.fainelli@gmail.com, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, bcm-kernel-feedback-list@broadcom.com,
 Jonas Gorski <jonas.gorski@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: bcm63xx-hsspi: Really keep pll clk enabled

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git 

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

From 51bddd4501bc414b8b1e8f4d096b4a5304068169 Mon Sep 17 00:00:00 2001
From: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Date: Fri, 28 Feb 2020 22:38:38 +0100
Subject: [PATCH] spi: bcm63xx-hsspi: Really keep pll clk enabled

The purpose of commit 0fd85869c2a9 ("spi/bcm63xx-hsspi: keep pll clk enabled")
was to keep the pll clk enabled through the lifetime of the device.

In order to do that, some 'clk_prepare_enable()'/'clk_disable_unprepare()'
calls have been added in the error handling path of the probe function, in
the remove function and in the suspend and resume functions.

However, a 'clk_disable_unprepare()' call has been unfortunately left in
the probe function. So the commit seems to be more or less a no-op.

Axe it now, so that the pll clk is left enabled through the lifetime of
the device, as described in the commit.

Fixes: 0fd85869c2a9 ("spi/bcm63xx-hsspi: keep pll clk enabled")
Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Acked-by: Jonas Gorski <jonas.gorski@gmail.com>
Link: https://lore.kernel.org/r/20200228213838.7124-1-christophe.jaillet@wanadoo.fr
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-bcm63xx-hsspi.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/spi/spi-bcm63xx-hsspi.c b/drivers/spi/spi-bcm63xx-hsspi.c
index 7327309ea3d5..6c235306c0e4 100644
--- a/drivers/spi/spi-bcm63xx-hsspi.c
+++ b/drivers/spi/spi-bcm63xx-hsspi.c
@@ -366,7 +366,6 @@ static int bcm63xx_hsspi_probe(struct platform_device *pdev)
 			goto out_disable_clk;
 
 		rate = clk_get_rate(pll_clk);
-		clk_disable_unprepare(pll_clk);
 		if (!rate) {
 			ret = -EINVAL;
 			goto out_disable_pll_clk;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
