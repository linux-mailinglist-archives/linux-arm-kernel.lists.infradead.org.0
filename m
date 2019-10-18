Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9031DCDA0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:11:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=GiOqcA1IIK/LYpA0LvgP529o0yU9zqAwuL5euoJ3GJ4=; b=dqO
	a3LnToO+e90Kt97ROu+kL9Z3aWaiWmmD41H+pqOzYyelW5PKoqGDcDgshWDa8cMUD98d2mCTFCxvu
	5IGFK9647AWxIB/tFGkCeXOyESY2fGf9sQyvTyfRmGv4gCRBkwkCQeNrjZdM399mix+XrYNJu+re2
	W97zl+VNUduMuuGdohQ0Twhtny5cqbLDxnw2rSLxmLI4oWq/chxiGnTZLYz1bZqzGDbehMTdhUGih
	XIxQQN/DYl8+812DmUbJPj3CSqF6o4ZL27DaufSyWAcjGsT+GErhei9lkb2WHEmFObiBg/PFucrly
	PPo4svoK+Fc7n8fC74NVWtUvt6t7+VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWiu-0004Bf-Sc; Fri, 18 Oct 2019 18:11:36 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWek-0007on-NX
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:07:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=IHyWJGNBUTMdcL9Rp2c8fG/a+rMZTdcE8MzTuFppp+I=; b=QT0lH+GMu2NO
 ybLk1tB16S+0aAVQLMVfGa24ACWypAUcuvzk7FJt+dahTwZvrtqsGZHg6WKmn3u4GaifOadGq8PHL
 6R3bhrI+zo2SUGjYcsoxJuh0plzabbKo446lDehsL4kHsiibrYIgcZDzsdWvSFfypwvwpRZ4lPAql
 PLRh0=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iLWec-0004Hv-Mw; Fri, 18 Oct 2019 18:07:10 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 1F19A2741DEA; Fri, 18 Oct 2019 19:07:10 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Applied "spi: pxa2xx: No need to keep pointer to platform device" to
 the spi tree
In-Reply-To: <20191018105429.82782-1-andriy.shevchenko@linux.intel.com>
X-Patchwork-Hint: ignore
Message-Id: <20191018180710.1F19A2741DEA@ypsilon.sirena.org.uk>
Date: Fri, 18 Oct 2019 19:07:10 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_110719_260565_86C1B9D0 
X-CRM114-Status: GOOD (  18.62  )
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
Cc: Takashi Iwai <tiwai@suse.com>, Russell King <linux@armlinux.org.uk>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-spi@vger.kernel.org,
 Mark Brown <broonie@kernel.org>, Daniel Mack <daniel@zonque.org>,
 Jaroslav Kysela <perex@perex.cz>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: pxa2xx: No need to keep pointer to platform device

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

From 4f3d957718e7f0ac2b033dbf48c7cddecd0a8dd3 Mon Sep 17 00:00:00 2001
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date: Fri, 18 Oct 2019 13:54:25 +0300
Subject: [PATCH] spi: pxa2xx: No need to keep pointer to platform device

There is no need to keep a pointer to the platform device. Currently there are
no users of it directly, and if there will be in the future we may restore it
from pointer to the struct device.

Convert all users at the same time.

Cc: Russell King <linux@armlinux.org.uk>
Cc: Jaroslav Kysela <perex@perex.cz>
Cc: Takashi Iwai <tiwai@suse.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Link: https://lore.kernel.org/r/20191018105429.82782-1-andriy.shevchenko@linux.intel.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 arch/arm/plat-pxa/ssp.c    |  4 ++--
 drivers/spi/spi-pxa2xx.c   |  2 +-
 include/linux/pxa2xx_ssp.h |  2 +-
 sound/soc/pxa/mmp-sspa.c   |  2 +-
 sound/soc/pxa/pxa-ssp.c    | 10 +++++-----
 5 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/plat-pxa/ssp.c b/arch/arm/plat-pxa/ssp.c
index 9a6e4923bd69..563440315acd 100644
--- a/arch/arm/plat-pxa/ssp.c
+++ b/arch/arm/plat-pxa/ssp.c
@@ -89,7 +89,7 @@ void pxa_ssp_free(struct ssp_device *ssp)
 		ssp->use_count--;
 		ssp->label = NULL;
 	} else
-		dev_err(&ssp->pdev->dev, "device already free\n");
+		dev_err(ssp->dev, "device already free\n");
 	mutex_unlock(&ssp_lock);
 }
 EXPORT_SYMBOL(pxa_ssp_free);
@@ -118,7 +118,7 @@ static int pxa_ssp_probe(struct platform_device *pdev)
 	if (ssp == NULL)
 		return -ENOMEM;
 
-	ssp->pdev = pdev;
+	ssp->dev = dev;
 
 	ssp->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(ssp->clk))
diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index bb6a14d1ab0f..59d1406a9c96 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -1567,7 +1567,7 @@ pxa2xx_spi_init_pdata(struct platform_device *pdev)
 	ssp->clk = devm_clk_get(&pdev->dev, NULL);
 	ssp->irq = platform_get_irq(pdev, 0);
 	ssp->type = type;
-	ssp->pdev = pdev;
+	ssp->dev = &pdev->dev;
 	ssp->port_id = pxa2xx_spi_get_port_id(adev);
 
 	pdata->is_slave = of_property_read_bool(pdev->dev.of_node, "spi-slave");
diff --git a/include/linux/pxa2xx_ssp.h b/include/linux/pxa2xx_ssp.h
index a5d1837e4f35..6facf27865f9 100644
--- a/include/linux/pxa2xx_ssp.h
+++ b/include/linux/pxa2xx_ssp.h
@@ -206,7 +206,7 @@ enum pxa_ssp_type {
 };
 
 struct ssp_device {
-	struct platform_device *pdev;
+	struct device	*dev;
 	struct list_head	node;
 
 	struct clk	*clk;
diff --git a/sound/soc/pxa/mmp-sspa.c b/sound/soc/pxa/mmp-sspa.c
index e3e5425b5c62..e701637a9ae9 100644
--- a/sound/soc/pxa/mmp-sspa.c
+++ b/sound/soc/pxa/mmp-sspa.c
@@ -177,7 +177,7 @@ static int mmp_sspa_set_dai_fmt(struct snd_soc_dai *cpu_dai,
 	/* we can only change the settings if the port is not in use */
 	if ((mmp_sspa_read_reg(sspa, SSPA_TXSP) & SSPA_SP_S_EN) ||
 	    (mmp_sspa_read_reg(sspa, SSPA_RXSP) & SSPA_SP_S_EN)) {
-		dev_err(&sspa->pdev->dev,
+		dev_err(sspa->dev,
 			"can't change hardware dai format: stream is in use\n");
 		return -EINVAL;
 	}
diff --git a/sound/soc/pxa/pxa-ssp.c b/sound/soc/pxa/pxa-ssp.c
index 5fdd1a24c232..6c5201431f6e 100644
--- a/sound/soc/pxa/pxa-ssp.c
+++ b/sound/soc/pxa/pxa-ssp.c
@@ -52,11 +52,11 @@ struct ssp_priv {
 
 static void dump_registers(struct ssp_device *ssp)
 {
-	dev_dbg(&ssp->pdev->dev, "SSCR0 0x%08x SSCR1 0x%08x SSTO 0x%08x\n",
+	dev_dbg(ssp->dev, "SSCR0 0x%08x SSCR1 0x%08x SSTO 0x%08x\n",
 		 pxa_ssp_read_reg(ssp, SSCR0), pxa_ssp_read_reg(ssp, SSCR1),
 		 pxa_ssp_read_reg(ssp, SSTO));
 
-	dev_dbg(&ssp->pdev->dev, "SSPSP 0x%08x SSSR 0x%08x SSACD 0x%08x\n",
+	dev_dbg(ssp->dev, "SSPSP 0x%08x SSSR 0x%08x SSACD 0x%08x\n",
 		 pxa_ssp_read_reg(ssp, SSPSP), pxa_ssp_read_reg(ssp, SSSR),
 		 pxa_ssp_read_reg(ssp, SSACD));
 }
@@ -223,7 +223,7 @@ static int pxa_ssp_set_dai_sysclk(struct snd_soc_dai *cpu_dai,
 		clk_id = PXA_SSP_CLK_EXT;
 	}
 
-	dev_dbg(&ssp->pdev->dev,
+	dev_dbg(ssp->dev,
 		"pxa_ssp_set_dai_sysclk id: %d, clk_id %d, freq %u\n",
 		cpu_dai->id, clk_id, freq);
 
@@ -316,7 +316,7 @@ static int pxa_ssp_set_pll(struct ssp_priv *priv, unsigned int freq)
 
 			ssacd |= (0x6 << 4);
 
-			dev_dbg(&ssp->pdev->dev,
+			dev_dbg(ssp->dev,
 				"Using SSACDD %x to supply %uHz\n",
 				val, freq);
 			break;
@@ -687,7 +687,7 @@ static int pxa_ssp_hw_params(struct snd_pcm_substream *substream,
 	 * - complain loudly and fail if they've not been set up yet.
 	 */
 	if ((sscr0 & SSCR0_MOD) && !ttsa) {
-		dev_err(&ssp->pdev->dev, "No TDM timeslot configured\n");
+		dev_err(ssp->dev, "No TDM timeslot configured\n");
 		return -EINVAL;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
