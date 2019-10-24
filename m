Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74997E330B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 14:52:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=11uSaC+vf1+h8YfevFC/GhrOyp4jTP/xF2SxFBfpmbM=; b=iTf7obpFF6uJ0E
	TjUPZdKddgPGUoeoUHmkC7kgweRw4a1qoho7rNjMW1R4KcJuIZKrI9zPS4Nh4Hu4Hv1ctR0wqRagw
	Yfm19Vd3IkGZHP2zF/kYH+rXiR6DHnNpgoLYURfbNg7LODS0xT9nZDhbz5WYSfAjSKofWPp8O1kSz
	J456cQwh49OnIxGwjcnyKXQi593hXJqX587RxHCNsiYh4FGuoklm10j93wrB/ROv3oySm/fmoswjF
	a8+PuG8EnNO3/k0mNqQbWJj9k8aTE0oPu3bsUOO9d529bpDQ7JR56+t8/Gu+Ux1e6AwotgrJSR//B
	Ie+ZyJbnQl0ZsO0P5o8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNcbG-0003yO-0E; Thu, 24 Oct 2019 12:52:22 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNcb2-0003wJ-MQ
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 12:52:11 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9OCpL3a031995; Thu, 24 Oct 2019 14:52:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=NTyg2cKVDskIQP5k+lTXj0XW5CLq2Yn3o933I6C84NA=;
 b=EE6ULXMaQF8YbBV5UrS6beaGs5rVC1yLwC8wbX7WYWmp9CYme0oO/s+Dmh1pici70vGJ
 Sc4L5iztdNtA0KpVciDpHynRxkRbseq5UJ6rx6kWFgXbFdiYpTcnqOnpxWsgRCvOpIE3
 BMrviEj+qesKjJwzdNOVv+1QjEPhKgf/OiPIjNz6iH0ZM1XAQSJ4zBPC/hTnqXZDrarN
 hNhluXCrYT0rZnPTEWHCHqxzDpRBwqyLcusmgYL6XPJ2uP1qiniTYJzdbOKzeFeJHuZA
 PEXHk51YMInySfvsEdk3IMDQMyWss1y5Bdftu9uhisPg6O0EN5x7m78ivuV+dB3BYgiE dg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2vt9s51qwu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 24 Oct 2019 14:52:03 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D001710002A;
 Thu, 24 Oct 2019 14:52:01 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 68D382BAB98;
 Thu, 24 Oct 2019 14:52:01 +0200 (CEST)
Received: from localhost (10.75.127.48) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 24 Oct 2019 14:52:01
 +0200
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <pierre-yves.mordret@st.com>
Subject: [PATCH] i2c: i2c-stm32f7: report dma error during probe
Date: Thu, 24 Oct 2019 14:52:00 +0200
Message-ID: <1571921521-8502-1-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG8NODE1.st.com (10.75.127.22) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-24_08:2019-10-23,2019-10-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_055209_200574_CC1BEFE0 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org, alain.volmat@st.com,
 linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Distinguish between the case where dma information is not provided
within the DT and the case of an error during the dma init.
Exit the probe with error in case of an error during dma init.

Fixes: bb8822cbbc53 ("i2c: i2c-stm32: Add generic DMA API")

Signed-off-by: Alain Volmat <alain.volmat@st.com>
---
 drivers/i2c/busses/i2c-stm32.c   | 16 ++++++++--------
 drivers/i2c/busses/i2c-stm32f7.c |  9 +++++++++
 2 files changed, 17 insertions(+), 8 deletions(-)

diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
index 07d5dfce68d4..1da347e6a358 100644
--- a/drivers/i2c/busses/i2c-stm32.c
+++ b/drivers/i2c/busses/i2c-stm32.c
@@ -20,13 +20,13 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
 
 	dma = devm_kzalloc(dev, sizeof(*dma), GFP_KERNEL);
 	if (!dma)
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 
 	/* Request and configure I2C TX dma channel */
-	dma->chan_tx = dma_request_slave_channel(dev, "tx");
-	if (!dma->chan_tx) {
+	dma->chan_tx = dma_request_chan(dev, "tx");
+	if (IS_ERR(dma->chan_tx)) {
 		dev_dbg(dev, "can't request DMA tx channel\n");
-		ret = -EINVAL;
+		ret = PTR_ERR(dma->chan_tx);
 		goto fail_al;
 	}
 
@@ -42,10 +42,10 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
 	}
 
 	/* Request and configure I2C RX dma channel */
-	dma->chan_rx = dma_request_slave_channel(dev, "rx");
-	if (!dma->chan_rx) {
+	dma->chan_rx = dma_request_chan(dev, "rx");
+	if (IS_ERR(dma->chan_rx)) {
 		dev_err(dev, "can't request DMA rx channel\n");
-		ret = -EINVAL;
+		ret = PTR_ERR(dma->chan_rx);
 		goto fail_tx;
 	}
 
@@ -75,7 +75,7 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
 	devm_kfree(dev, dma);
 	dev_info(dev, "can't use DMA\n");
 
-	return NULL;
+	return ERR_PTR(ret);
 }
 
 void stm32_i2c_dma_free(struct stm32_i2c_dma *dma)
diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
index d36cf08461f7..cc8ba8f49ae6 100644
--- a/drivers/i2c/busses/i2c-stm32f7.c
+++ b/drivers/i2c/busses/i2c-stm32f7.c
@@ -1950,6 +1950,15 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
 	i2c_dev->dma = stm32_i2c_dma_request(i2c_dev->dev, phy_addr,
 					     STM32F7_I2C_TXDR,
 					     STM32F7_I2C_RXDR);
+	if (PTR_ERR(i2c_dev->dma) == -ENODEV)
+		i2c_dev->dma = NULL;
+	else if (IS_ERR(i2c_dev->dma)) {
+		ret = PTR_ERR(i2c_dev->dma);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev,
+				"Failed to request dma error %i\n", ret);
+		goto clk_free;
+	}
 
 	platform_set_drvdata(pdev, i2c_dev);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
