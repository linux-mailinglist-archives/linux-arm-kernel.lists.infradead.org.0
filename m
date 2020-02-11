Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3CCA1593D4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:52:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=1UcKAO6vO1NtOMzT9B8es67KTNHfhMOVjl38pVMKKIk=; b=ujJ
	Tvoqs1tBQK2k2QDquiFcX79ue/y8bOTwAQvixD7MvFF1EAMlCScPc8kgVHBkHbyjLkbDcihxlSdDW
	vghw9elAww8O5tH84VPWMTTemHX4h6vk+Dj6LHr2PI2eGMVN1kuSLz9teo88Zl+/Jh+p7mdmF4/87
	G/9mrCje6UA0AyAtLNVEC1z47abRTFBPjFjQbVcyMwA8fZdAbpj3qLsntjyxuu/kvug86Hb/O7qCe
	JqvT7kF1kSbLFoGgsmI/PtVN72NqTrxEce6luGOCm6g1NLK67jNjq6zu7dzHap+ZTOTHc6zGvBGy3
	rPj0L/3rJ26i/WWgR9XxaN1zMsDXiQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1XpY-0006l7-V6; Tue, 11 Feb 2020 15:52:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1XpE-0006af-R5
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:51:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8376930E;
 Tue, 11 Feb 2020 07:51:48 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 08B753F68E;
 Tue, 11 Feb 2020 07:51:47 -0800 (PST)
Date: Tue, 11 Feb 2020 15:51:46 +0000
From: Mark Brown <broonie@kernel.org>
To: Lionel Debieve <lionel.debieve@st.com>
Subject: Applied "spi: stm32-qspi: properly manage probe errors" to the spi
 tree
In-Reply-To: <20200203135048.1299-3-patrice.chotard@st.com>
Message-Id: <applied-20200203135048.1299-3-patrice.chotard@st.com>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_075148_981294_7855B245 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Etienne Carriere <etienne.carriere@st.com>, christophe.kerello@st.com,
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, patrice.chotard@st.com,
 Mark Brown <broonie@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: stm32-qspi: properly manage probe errors

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.7

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

From 4a08d6c8662472121b0ddc29180ab3c94c34f586 Mon Sep 17 00:00:00 2001
From: Lionel Debieve <lionel.debieve@st.com>
Date: Mon, 3 Feb 2020 14:50:48 +0100
Subject: [PATCH] spi: stm32-qspi: properly manage probe errors

Fix resource release issues when driver probe operation fails.

Signed-off-by: Lionel Debieve <lionel.debieve@st.com>
Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
Link: https://lore.kernel.org/r/20200203135048.1299-3-patrice.chotard@st.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-stm32-qspi.c | 27 +++++++++++++++------------
 1 file changed, 15 insertions(+), 12 deletions(-)

diff --git a/drivers/spi/spi-stm32-qspi.c b/drivers/spi/spi-stm32-qspi.c
index 13bb64bf4c8f..d066f5144c3e 100644
--- a/drivers/spi/spi-stm32-qspi.c
+++ b/drivers/spi/spi-stm32-qspi.c
@@ -565,7 +565,7 @@ static int stm32_qspi_probe(struct platform_device *pdev)
 	qspi->io_base = devm_ioremap_resource(dev, res);
 	if (IS_ERR(qspi->io_base)) {
 		ret = PTR_ERR(qspi->io_base);
-		goto err;
+		goto err_master_put;
 	}
 
 	qspi->phys_base = res->start;
@@ -574,24 +574,26 @@ static int stm32_qspi_probe(struct platform_device *pdev)
 	qspi->mm_base = devm_ioremap_resource(dev, res);
 	if (IS_ERR(qspi->mm_base)) {
 		ret = PTR_ERR(qspi->mm_base);
-		goto err;
+		goto err_master_put;
 	}
 
 	qspi->mm_size = resource_size(res);
 	if (qspi->mm_size > STM32_QSPI_MAX_MMAP_SZ) {
 		ret = -EINVAL;
-		goto err;
+		goto err_master_put;
 	}
 
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0)
-		return irq;
+	if (irq < 0) {
+		ret = irq;
+		goto err_master_put;
+	}
 
 	ret = devm_request_irq(dev, irq, stm32_qspi_irq, 0,
 			       dev_name(dev), qspi);
 	if (ret) {
 		dev_err(dev, "failed to request irq\n");
-		goto err;
+		goto err_master_put;
 	}
 
 	init_completion(&qspi->data_completion);
@@ -599,26 +601,26 @@ static int stm32_qspi_probe(struct platform_device *pdev)
 	qspi->clk = devm_clk_get(dev, NULL);
 	if (IS_ERR(qspi->clk)) {
 		ret = PTR_ERR(qspi->clk);
-		goto err;
+		goto err_master_put;
 	}
 
 	qspi->clk_rate = clk_get_rate(qspi->clk);
 	if (!qspi->clk_rate) {
 		ret = -EINVAL;
-		goto err;
+		goto err_master_put;
 	}
 
 	ret = clk_prepare_enable(qspi->clk);
 	if (ret) {
 		dev_err(dev, "can not enable the clock\n");
-		goto err;
+		goto err_master_put;
 	}
 
 	rstc = devm_reset_control_get_exclusive(dev, NULL);
 	if (IS_ERR(rstc)) {
 		ret = PTR_ERR(rstc);
 		if (ret == -EPROBE_DEFER)
-			goto err;
+			goto err_qspi_release;
 	} else {
 		reset_control_assert(rstc);
 		udelay(2);
@@ -629,7 +631,7 @@ static int stm32_qspi_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, qspi);
 	ret = stm32_qspi_dma_setup(qspi);
 	if (ret)
-		goto err;
+		goto err_qspi_release;
 
 	mutex_init(&qspi->lock);
 
@@ -645,8 +647,9 @@ static int stm32_qspi_probe(struct platform_device *pdev)
 	if (!ret)
 		return 0;
 
-err:
+err_qspi_release:
 	stm32_qspi_release(qspi);
+err_master_put:
 	spi_master_put(qspi->ctrl);
 
 	return ret;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
