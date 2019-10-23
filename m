Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E73DE22DE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 20:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=BDLL0PQlIMI2txwBkIERG9kP3CZGWOY+BD5IuQX13TU=; b=WXq
	LuNq04gqCr5bOJlgojeVL4gbmOsgZmKFClXIXdJ3LwtI/SohedahqACOcbfOmxtQ6C0f6xdKz/GWI
	ZxMM8cRLWVgLRbIUHUdDpjB8P21ct88UdvfACCKuqYC20pplxW2oov3sFOj1GwAgAZV2LyLr4vR0E
	E6koj3BpRZpZpSagU9dEQgU2hP5lX8hwA2gQxiF3N0fpTvQN5CQPLTylxTMSw7YnbsRVo0ZmjsdHe
	8ikBwmdetGSAgeBKFNMPRvXxs3CsQvPjzsdHXzWlOF0apvs+F3xpE43CDx5A1P0k3asMdgV2w1IbJ
	PyeLBNxV1gqiONlmbjE2Rl46KE6IhAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNLoJ-000099-RS; Wed, 23 Oct 2019 18:56:43 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNLnx-0008SG-Hs
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 18:56:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=Jk714AkzzaO8F+/J4eKn0uyP10QaLAvge3ULNRNlzZc=; b=xmcJZ4/4V1UZ
 T1/5eI8s/uBbldJjFeTW4NayLeew7RBmCCyR67sLf52VKunJ/6Atuv8LEe08v2G+GkJUiR6QEFd2k
 IusIvWE/N0xITZgp9eF4mQuqdTUuSJItvMQZAxLZcSfd6FBBuO49Dk69ywX7Ingx6lQlXozNLw+ve
 3009M=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNLnt-0001Ci-WB; Wed, 23 Oct 2019 18:56:18 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 770E32743021; Wed, 23 Oct 2019 19:56:17 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Applied "spi: pxa2xx: Drop extra check of platform_get_resource()
 returned value" to the spi tree
In-Reply-To: <20191021103625.4250-2-andriy.shevchenko@linux.intel.com>
X-Patchwork-Hint: ignore
Message-Id: <20191023185617.770E32743021@ypsilon.sirena.org.uk>
Date: Wed, 23 Oct 2019 19:56:17 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_115621_622885_83C652A0 
X-CRM114-Status: GOOD (  14.34  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Haojian Zhuang <haojian.zhuang@gmail.com>, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Daniel Mack <daniel@zonque.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: pxa2xx: Drop extra check of platform_get_resource() returned value

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.4

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

From 77c544d243f3b0d1ae3487ebb170c07c79734fe7 Mon Sep 17 00:00:00 2001
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date: Mon, 21 Oct 2019 13:36:25 +0300
Subject: [PATCH] spi: pxa2xx: Drop extra check of platform_get_resource()
 returned value

The devm_ioremap_resource() has already a check for resource pointer
being NULL. No need to double check this.

Drop extra check of platform_get_resource() returned value.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Link: https://lore.kernel.org/r/20191021103625.4250-2-andriy.shevchenko@linux.intel.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-pxa2xx.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index 068c21037679..4249bcaf77bd 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -1545,17 +1545,15 @@ pxa2xx_spi_init_pdata(struct platform_device *pdev)
 	if (!pdata)
 		return NULL;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res)
-		return NULL;
-
 	ssp = &pdata->ssp;
 
-	ssp->phys_base = res->start;
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	ssp->mmio_base = devm_ioremap_resource(&pdev->dev, res);
 	if (IS_ERR(ssp->mmio_base))
 		return NULL;
 
+	ssp->phys_base = res->start;
+
 #ifdef CONFIG_PCI
 	if (pcidev_id) {
 		pdata->tx_param = pdev->dev.parent;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
