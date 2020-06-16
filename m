Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CDC1FAF31
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 13:31:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zNh+kRBH92Jh6xB9jbBB3oxgu2U5KwFQGTRbDSGTcCA=; b=cYG+5ky6tXT/YP
	UDvZf0uBsUnfGbPRl0ZhCxJ7oKVD1Boe3m3ko7YsqW1Fe+ogKb1GssFUKjDBwP3sAGsr1Dnisx3If
	JiFXMBwiXjtJCEBi476sZ4Y9eghujelfFqJkQLk6ug2fuNfEpNaFaBPfjVBEyDxs3nIPIY+uf4jKW
	tmQ7yBmhvfTi0LWWyEC3P/dNnUPAsskjxQZStmM7OfsrHYom2NaTYLgHLx63zCuu8/AZG2cBEcmUm
	YUNgj9KiC3wi/usARF6pqxpXZoOu0zZh326q1qRaSkJLAodBhfdbA703JhG1QYTF/yRfbMkeqMC7C
	bRCQnw2e0TPKDHiTHbLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl9o1-00051H-7l; Tue, 16 Jun 2020 11:31:05 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl9ns-00050D-Um
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 11:30:58 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 05GBO12D019879; Tue, 16 Jun 2020 13:30:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Is1HFAKxrRK4M9wTQ7ky+YcCCVHYlPfvKWxElD41J9I=;
 b=hdVbR5ll8P9IF/DCqIP9G5yC0gyORLZAtaFpHlEHLAYcrss21imUCGZ672jRtxl1+Lbv
 RrlD5NcLkRJFxGMc+1djtYauSv8oaE7GPkkMiOG4ROcdaRWtG9gvv4B6/3B6/AKj6M+L
 8IMSsICY8SWe4DyVBdCJqEWXO4q0uM3T7+CMkHkpbqFNc44SOkWFYo4k2dbLjjm7GX15
 VELNUaORbZjL19mUTbAuCVaKPreTimyaNv845pe8Y+WAOwWSkTQWzNYonkdx3ygbXpHF
 05zTm2Tq5WRs10obXx5TShs2TPOruCcqhInCUxeCXhLvjSzxxFc/1SAyLA3t2d2xMoqK qw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 31mm91q2v1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 16 Jun 2020 13:30:47 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id DB1EB10002A;
 Tue, 16 Jun 2020 13:30:44 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id CD57D2C0D26;
 Tue, 16 Jun 2020 13:30:44 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG6NODE3.st.com (10.75.127.18)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 16 Jun 2020 13:30:44 +0200
From: <patrice.chotard@st.com>
To: Mark Brown <broonie@kernel.org>, Alexandre Torgue <alexandre.torgue@st.com>
Subject: spi: stm32-qspi: Fix error path in case of -EPROBE_DEFER
Date: Tue, 16 Jun 2020 13:30:35 +0200
Message-ID: <20200616113035.4514-1-patrice.chotard@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG6NODE3.st.com
 (10.75.127.18)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-06-16_04:2020-06-16,
 2020-06-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_043057_435385_C2044BF9 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, Patrice Chotard <patrice.chotard@st.com>,
 mcoquelin.stm32@gmail.com, linux-spi@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Patrice Chotard <patrice.chotard@st.com>

In case of -EPROBE_DEFER, stm32_qspi_release() was called
in any case which unregistered driver from pm_runtime framework
even if it has not been registered yet to it. This leads to:

stm32-qspi 58003000.spi: can't setup spi0.0, status -13
spi_master spi0: spi_device register error /soc/spi@58003000/mx66l51235l@0
spi_master spi0: Failed to create SPI device for /soc/spi@58003000/mx66l51235l@0
stm32-qspi 58003000.spi: can't setup spi0.1, status -13
spi_master spi0: spi_device register error /soc/spi@58003000/mx66l51235l@1
spi_master spi0: Failed to create SPI device for /soc/spi@58003000/mx66l51235l@1

On v5.7 kernel,this issue was not "visible", qspi driver was probed
successfully.

Fixes: 9d282c17b023 ("spi: stm32-qspi: Add pm_runtime support")

Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
---
 drivers/spi/spi-stm32-qspi.c | 46 ++++++++++++++++++++----------------
 1 file changed, 26 insertions(+), 20 deletions(-)

diff --git a/drivers/spi/spi-stm32-qspi.c b/drivers/spi/spi-stm32-qspi.c
index 3c44bb2fd9b1..a900962b4336 100644
--- a/drivers/spi/spi-stm32-qspi.c
+++ b/drivers/spi/spi-stm32-qspi.c
@@ -553,20 +553,6 @@ static const struct spi_controller_mem_ops stm32_qspi_mem_ops = {
 	.exec_op = stm32_qspi_exec_op,
 };
 
-static void stm32_qspi_release(struct stm32_qspi *qspi)
-{
-	pm_runtime_get_sync(qspi->dev);
-	/* disable qspi */
-	writel_relaxed(0, qspi->io_base + QSPI_CR);
-	stm32_qspi_dma_free(qspi);
-	mutex_destroy(&qspi->lock);
-	pm_runtime_put_noidle(qspi->dev);
-	pm_runtime_disable(qspi->dev);
-	pm_runtime_set_suspended(qspi->dev);
-	pm_runtime_dont_use_autosuspend(qspi->dev);
-	clk_disable_unprepare(qspi->clk);
-}
-
 static int stm32_qspi_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -642,7 +628,7 @@ static int stm32_qspi_probe(struct platform_device *pdev)
 	if (IS_ERR(rstc)) {
 		ret = PTR_ERR(rstc);
 		if (ret == -EPROBE_DEFER)
-			goto err_qspi_release;
+			goto err_clk_disable;
 	} else {
 		reset_control_assert(rstc);
 		udelay(2);
@@ -653,7 +639,7 @@ static int stm32_qspi_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, qspi);
 	ret = stm32_qspi_dma_setup(qspi);
 	if (ret)
-		goto err_qspi_release;
+		goto err_dma_free;
 
 	mutex_init(&qspi->lock);
 
@@ -673,15 +659,26 @@ static int stm32_qspi_probe(struct platform_device *pdev)
 
 	ret = devm_spi_register_master(dev, ctrl);
 	if (ret)
-		goto err_qspi_release;
+		goto err_pm_runtime_free;
 
 	pm_runtime_mark_last_busy(dev);
 	pm_runtime_put_autosuspend(dev);
 
 	return 0;
 
-err_qspi_release:
-	stm32_qspi_release(qspi);
+err_pm_runtime_free:
+	pm_runtime_get_sync(qspi->dev);
+	/* disable qspi */
+	writel_relaxed(0, qspi->io_base + QSPI_CR);
+	mutex_destroy(&qspi->lock);
+	pm_runtime_put_noidle(qspi->dev);
+	pm_runtime_disable(qspi->dev);
+	pm_runtime_set_suspended(qspi->dev);
+	pm_runtime_dont_use_autosuspend(qspi->dev);
+err_dma_free:
+	stm32_qspi_dma_free(qspi);
+err_clk_disable:
+	clk_disable_unprepare(qspi->clk);
 err_master_put:
 	spi_master_put(qspi->ctrl);
 
@@ -692,7 +689,16 @@ static int stm32_qspi_remove(struct platform_device *pdev)
 {
 	struct stm32_qspi *qspi = platform_get_drvdata(pdev);
 
-	stm32_qspi_release(qspi);
+	pm_runtime_get_sync(qspi->dev);
+	/* disable qspi */
+	writel_relaxed(0, qspi->io_base + QSPI_CR);
+	stm32_qspi_dma_free(qspi);
+	mutex_destroy(&qspi->lock);
+	pm_runtime_put_noidle(qspi->dev);
+	pm_runtime_disable(qspi->dev);
+	pm_runtime_set_suspended(qspi->dev);
+	pm_runtime_dont_use_autosuspend(qspi->dev);
+	clk_disable_unprepare(qspi->clk);
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
