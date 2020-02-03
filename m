Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 826591507C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 14:51:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Z5kyRcKTrZLNkp0WqlKXTxUQ2IMew94cBWjdvrC5og=; b=oRo8FYzytEL1hG
	lsHkA2hWpqtRP+AHFxCmrK19BikOW3WfpWz8zKyPeiPWZ91aLWVV1wM9zvmR9PUQOXwdsUatixB2D
	klS5ZQo+gVw2RT6TYUqfGs91jBJTMfBL1SNVsVWgLtJbDahbdWnQbACEn5JbNjzQAzvMLNWbXsn1A
	KswUEQJL0Xh0lFp3EB0z8PItAtt0vuYKDu6J3AwxIF5zOk+o4kvEx4l+7xE4oSpwEtftLjP1uXdF0
	6Eb36yBaFepLALERHUVvLrEuNb2Bnc73gHfDMDh/FudYutGNDfwxnbMrRonjupqbFm9+t2ZU1+5gb
	ZNkd3OpwzpG25K3in/uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyc8e-0005Lv-Cc; Mon, 03 Feb 2020 13:51:44 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyc8C-0004yk-UZ
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 13:51:18 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 013Dlotp027606; Mon, 3 Feb 2020 14:51:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=2R3886/w6q71uZmE3lqE7gZfMtiidQ+pH7InOJfEqaA=;
 b=pYxJkcwpclhdj3teUM+ERViKiYiNKqnogvchmFlaycWKi5e1kEoEC7GZZ99ppL7rzGAC
 j/ppCsni1GqQbeo0ULFZJmH+tiTSnsP3ydim6TTkXLTXuGbpCjK1CCpIp8BUvblV3YUj
 +JtGCFDJZD9Uo2x/7r+uY6L72w2q2hkoxYlV8aAY2eY4Z19gyD3wxbkI/6v6tA4bEXKX
 vE0pXnUIAmhTORpTlt3m8fyePTDoGrAxB/AabbkUy3JvRz0rIcbOH9zAFSaGYatVX60Y
 SZLHk4jc/BEjotXDWTsCfVGqj5PZjTjW9yzbLvvtV6sx4Nn7tO65mF6zEqQE3UnmxQrZ TA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xvybdsmtv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 03 Feb 2020 14:51:13 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E48E410002A;
 Mon,  3 Feb 2020 14:51:08 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id D8BA72BE228;
 Mon,  3 Feb 2020 14:51:08 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG6NODE3.st.com (10.75.127.18)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 3 Feb 2020 14:51:08 +0100
From: <patrice.chotard@st.com>
To: Mark Brown <broonie@kernel.org>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 <linux-spi@vger.kernel.org>, <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/2] spi: stm32-qspi: properly manage probe errors
Date: Mon, 3 Feb 2020 14:50:48 +0100
Message-ID: <20200203135048.1299-3-patrice.chotard@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200203135048.1299-1-patrice.chotard@st.com>
References: <20200203135048.1299-1-patrice.chotard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG5NODE1.st.com (10.75.127.13) To SFHDAG6NODE3.st.com
 (10.75.127.18)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-03_04:2020-02-02,
 2020-02-03 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_055117_337707_8F805F88 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lionel Debieve <lionel.debieve@st.com>,
 Etienne Carriere <etienne.carriere@st.com>, christophe.kerello@st.com,
 patrice.chotard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lionel Debieve <lionel.debieve@st.com>

Fix resource release issues when driver probe operation fails.

Signed-off-by: Lionel Debieve <lionel.debieve@st.com>
Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
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
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
