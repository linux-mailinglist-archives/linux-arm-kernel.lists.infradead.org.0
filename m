Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5402216B3CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 23:22:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=Nc3pdesxBhE94/mMATQ0crWDeny9hvancC0X3u31JE0=; b=VEH
	SunM0v/wpECfPSFe2Aq49xfTFuTvZy8cHoZ9uwhHs0r+6GW9PA7rDsfcfIbZfX9iPX+c5DPgDiTxh
	ME3dRCA6U0RBCrbusHP4z/9l9JUGQsY9/hJQe2jMAE1/i3hY+dPOs68pDuvDWBaG1N42CPhrc5VRg
	UGnvAyX4EDWd8CM/hG7d1tgNfPsOzUbFj0CAwFPqHwkD36J1Rq5zeuwrMUUj1JpwX/P+HanDeeVh8
	K9UsgfYbXppVZQmTcKYOAVB3ICoygfdeE/QUcPwwhxxD7HB2vDz8pVWNTrukkKljzevmAnYUlx3Yq
	lx9Vk4epdztxeZRxU0Gfpbc6xqaEzHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6M7Y-0001Vr-VM; Mon, 24 Feb 2020 22:22:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6M7O-0001VT-1Q
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 22:22:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BAE0930E;
 Mon, 24 Feb 2020 14:22:24 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 404503F534;
 Mon, 24 Feb 2020 14:22:24 -0800 (PST)
Date: Mon, 24 Feb 2020 22:22:22 +0000
From: Mark Brown <broonie@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Applied "spi: pxa2xx: drv_data can't be NULL in ->remove()" to the
 spi tree
In-Reply-To: <20200224154556.11627-2-andriy.shevchenko@linux.intel.com>
Message-Id: <applied-20200224154556.11627-2-andriy.shevchenko@linux.intel.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_142226_125044_D2D8C6CD 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Haojian Zhuang <haojian.zhuang@gmail.com>, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Daniel Mack <daniel@zonque.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: pxa2xx: drv_data can't be NULL in ->remove()

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

From 3d24b2a470466aa901ba8354468fc1899259fd84 Mon Sep 17 00:00:00 2001
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date: Mon, 24 Feb 2020 17:45:56 +0200
Subject: [PATCH] spi: pxa2xx: drv_data can't be NULL in ->remove()

There is no need for drv_data check against NULL, since it won't happen.
Remove useless check.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Link: https://lore.kernel.org/r/20200224154556.11627-2-andriy.shevchenko@linux.intel.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-pxa2xx.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index 934bfe2c8a90..8e8e18023ded 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -1884,11 +1884,7 @@ static int pxa2xx_spi_probe(struct platform_device *pdev)
 static int pxa2xx_spi_remove(struct platform_device *pdev)
 {
 	struct driver_data *drv_data = platform_get_drvdata(pdev);
-	struct ssp_device *ssp;
-
-	if (!drv_data)
-		return 0;
-	ssp = drv_data->ssp;
+	struct ssp_device *ssp = drv_data->ssp;
 
 	pm_runtime_get_sync(&pdev->dev);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
