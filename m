Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A59DCD8C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=xFfUGgvVWeyKk0FN92BXW4d/LGTN6lCb4oUeMTHAuEA=; b=App
	moOW3BeAOtGTdyM5w4V8gOL+9zojJzfnQhLg4g65Rmb74+UiqYPPyuvwYcS76rcOmM8+J4FU82MOk
	sYewXgHUBmuXgR9xjp89nHeFH8tmaXFaOLsO4S2OH9Sxrd6kOyAINlQY/zNuVvSECSLYQF254xEoe
	hOtCdxGsB0doa7sWuLJyaINI4zcd72V1swt2IdCEDGteCslImorh3X5cPaMpD6qUgPVVFQMFT/7EG
	Kdwvi4po4Cbi7wsVKWTSYEaPur9hzDU/MQlXmffc31QfbXf/e1nLPuzPsPkHR+ho5zXktZjGu0eF1
	E/2myKyH2kNOqb5EoZTzhX4Hnk9G7Pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWgo-0000yt-M1; Fri, 18 Oct 2019 18:09:26 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWeg-0007lK-Od
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:07:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=h9k8NrWHOz0lZS96gOEbSOnjbIGH9aPDthtfDlmN8e4=; b=q5l3kFHpACRC
 pV8E2dDmNCf+k2wG2tl003Y4VFlVHVjxMw0cshzkvE3J+hPwRvxSwv6imdrFjidN2cSJb3TEFeCr3
 rrgTuT3cfQOs0fKsPNTkM4eXvdTcwHsYH3R8YgwP2K/2AIDerwqhNPiz7So1mMcSXVvoc+R8ra/69
 i4dVk=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iLWec-0004Hf-7R; Fri, 18 Oct 2019 18:07:10 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id AB2082743259; Fri, 18 Oct 2019 19:07:09 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Applied "spi: pxa2xx: Convert pxa2xx_spi_get_port_id() to take struct
 device" to the spi tree
In-Reply-To: <20191018105429.82782-3-andriy.shevchenko@linux.intel.com>
X-Patchwork-Hint: ignore
Message-Id: <20191018180709.AB2082743259@ypsilon.sirena.org.uk>
Date: Fri, 18 Oct 2019 19:07:09 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_110715_114299_8EA858C7 
X-CRM114-Status: GOOD (  15.71  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

   spi: pxa2xx: Convert pxa2xx_spi_get_port_id() to take struct device

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

From 365e856e18b88e360388f9de4f5da0d5b332114b Mon Sep 17 00:00:00 2001
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date: Fri, 18 Oct 2019 13:54:27 +0300
Subject: [PATCH] spi: pxa2xx: Convert pxa2xx_spi_get_port_id() to take struct
 device

This is preparatory patch before converting to use device_get_match_data() API.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Link: https://lore.kernel.org/r/20191018105429.82782-3-andriy.shevchenko@linux.intel.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-pxa2xx.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index 670734b3d56a..04ca80770e35 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -1476,11 +1476,13 @@ MODULE_DEVICE_TABLE(of, pxa2xx_spi_of_match);
 
 #ifdef CONFIG_ACPI
 
-static int pxa2xx_spi_get_port_id(struct acpi_device *adev)
+static int pxa2xx_spi_get_port_id(struct device *dev)
 {
+	struct acpi_device *adev;
 	unsigned int devid;
 	int port_id = -1;
 
+	adev = ACPI_COMPANION(dev);
 	if (adev && adev->pnp.unique_id &&
 	    !kstrtouint(adev->pnp.unique_id, 0, &devid))
 		port_id = devid;
@@ -1489,7 +1491,7 @@ static int pxa2xx_spi_get_port_id(struct acpi_device *adev)
 
 #else /* !CONFIG_ACPI */
 
-static int pxa2xx_spi_get_port_id(struct acpi_device *adev)
+static int pxa2xx_spi_get_port_id(struct device *dev)
 {
 	return -1;
 }
@@ -1568,7 +1570,7 @@ pxa2xx_spi_init_pdata(struct platform_device *pdev)
 	ssp->irq = platform_get_irq(pdev, 0);
 	ssp->type = type;
 	ssp->dev = &pdev->dev;
-	ssp->port_id = pxa2xx_spi_get_port_id(adev);
+	ssp->port_id = pxa2xx_spi_get_port_id(&pdev->dev);
 
 	pdata->is_slave = of_property_read_bool(pdev->dev.of_node, "spi-slave");
 	pdata->num_chipselect = 1;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
