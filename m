Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3D11B0FBD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:17:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sZqfsQgoXPHPNWWo1oNLI28SGe/DT2Rc7pBPS2QfL+Y=; b=ZUPFmC5sgvH23b
	Q7JumvIHszx52dF062ij8ZrYJfPSYvzhN8eHf6P9/FYYLyRCc5nvyZ3KI5BsbrJHCMaldgFovghcp
	SDgFtPpQErnYAFUETUWhd7KLt1ezCK/g6sHwR0RJuevQhuq9e0FhgwhQoA/yY3paPjgQwo6aOflNT
	Zd4B2ro0Mevfe0SQcj+D+CtfNA/p7YImD5IjS1rjdJCZzu4K+8L5rHgmzikXw17tirPw6IiohI7mI
	/isCOJKUY9KaDYAONcWXSewOnD+GDejv5B+j08D6vuJuRChEKTmelUkAEq8dwb2NIJrU20wX9bcjN
	fKjDfvhnM2h0ncmqsSiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYAf-0003Kg-Q1; Mon, 20 Apr 2020 15:17:17 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYAX-0003JF-B4
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:17:11 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03KF86eZ009838; Mon, 20 Apr 2020 17:17:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=utrDtfDiBp72eoR3DFVmDIYTn4oU6h7X8z50uW0XqAY=;
 b=0bvD2YaXsrK2zDpYtviIlolYHaArCW/O9D63XPC0jTNRAAAn2QAgHHo+ut7x1+bEiAZt
 GC8IQRhFwQ2eVRtioH5m282YqCUI+8E5Q+tRa0OjZ0dXKYeFOIsRIay8Aa7lgRYdY1pp
 f2pXtuH8h0/+3mvLku3x4HtnsSOx45zXQNNgGCsUX6pr+ktglUgX3pTPgK73tGLSsiJx
 YXF+Yx4LtyefGdR7CDBSVzPw/T+GRwnprizeVcpoZGG8h/PrS3AXpv+/pMQOcKhXbvxG
 WmJfFCU/pZxDXHF86kVAd80zDCuSUWCpbY2KzgcR4zJPx4xF3NzqIlD+LEeREBjuFNhl gA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fpp8k577-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 20 Apr 2020 17:17:07 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C54CA10002A;
 Mon, 20 Apr 2020 17:17:06 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B9EE22B3E39;
 Mon, 20 Apr 2020 17:17:06 +0200 (CEST)
Received: from localhost (10.75.127.50) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 20 Apr 2020 17:17:06
 +0200
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <pierre-yves.mordret@st.com>
Subject: [PATCH v2] i2c: stm32: don't print an error on probe deferral
Date: Mon, 20 Apr 2020 17:17:06 +0200
Message-ID: <1587395826-17541-1-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG6NODE1.st.com (10.75.127.16) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-20_05:2020-04-20,
 2020-04-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_081709_763832_EF985F92 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org, alain.volmat@st.com,
 linux-i2c@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Etienne Carriere <etienne.carriere@st.com>

Do not print an error trace when deferring probe for some resource.
Fix as well the error message in case of tx dma_request_chan failure.

Signed-off-by: Etienne Carriere <etienne.carriere@st.com>
Signed-off-by: Alain Volmat <alain.volmat@st.com>
Reviewed-by: Pierre-Yves MORDRET <pierre-yves.mordret@st.com>
---
v2: replace dev_dbg with dev_err in case of error with dma_request_chan for tx

 drivers/i2c/busses/i2c-stm32.c   | 10 +++++++---
 drivers/i2c/busses/i2c-stm32f4.c |  4 +++-
 drivers/i2c/busses/i2c-stm32f7.c |  7 +++++--
 3 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-stm32.c
index 1da347e6a358..3f69a3bb6119 100644
--- a/drivers/i2c/busses/i2c-stm32.c
+++ b/drivers/i2c/busses/i2c-stm32.c
@@ -25,8 +25,9 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
 	/* Request and configure I2C TX dma channel */
 	dma->chan_tx = dma_request_chan(dev, "tx");
 	if (IS_ERR(dma->chan_tx)) {
-		dev_dbg(dev, "can't request DMA tx channel\n");
 		ret = PTR_ERR(dma->chan_tx);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "can't request DMA tx channel\n");
 		goto fail_al;
 	}
 
@@ -44,8 +45,10 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
 	/* Request and configure I2C RX dma channel */
 	dma->chan_rx = dma_request_chan(dev, "rx");
 	if (IS_ERR(dma->chan_rx)) {
-		dev_err(dev, "can't request DMA rx channel\n");
 		ret = PTR_ERR(dma->chan_rx);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "can't request DMA rx channel\n");
+
 		goto fail_tx;
 	}
 
@@ -73,7 +76,8 @@ struct stm32_i2c_dma *stm32_i2c_dma_request(struct device *dev,
 	dma_release_channel(dma->chan_tx);
 fail_al:
 	devm_kfree(dev, dma);
-	dev_info(dev, "can't use DMA\n");
+	if (ret != -EPROBE_DEFER)
+		dev_info(dev, "can't use DMA\n");
 
 	return ERR_PTR(ret);
 }
diff --git a/drivers/i2c/busses/i2c-stm32f4.c b/drivers/i2c/busses/i2c-stm32f4.c
index d6a69dfcac3f..48e269284369 100644
--- a/drivers/i2c/busses/i2c-stm32f4.c
+++ b/drivers/i2c/busses/i2c-stm32f4.c
@@ -797,8 +797,10 @@ static int stm32f4_i2c_probe(struct platform_device *pdev)
 
 	rst = devm_reset_control_get_exclusive(&pdev->dev, NULL);
 	if (IS_ERR(rst)) {
-		dev_err(&pdev->dev, "Error: Missing controller reset\n");
 		ret = PTR_ERR(rst);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Error: Missing reset ctrl\n");
+
 		goto clk_free;
 	}
 	reset_control_assert(rst);
diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
index 8102e33a6753..59a0dcd6a475 100644
--- a/drivers/i2c/busses/i2c-stm32f7.c
+++ b/drivers/i2c/busses/i2c-stm32f7.c
@@ -1967,7 +1967,8 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
 
 	i2c_dev->clk = devm_clk_get(&pdev->dev, NULL);
 	if (IS_ERR(i2c_dev->clk)) {
-		dev_err(&pdev->dev, "Error: Missing controller clock\n");
+		if (PTR_ERR(i2c_dev->clk) != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Failed to get controller clock\n");
 		return PTR_ERR(i2c_dev->clk);
 	}
 
@@ -1979,8 +1980,10 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
 
 	rst = devm_reset_control_get(&pdev->dev, NULL);
 	if (IS_ERR(rst)) {
-		dev_err(&pdev->dev, "Error: Missing controller reset\n");
 		ret = PTR_ERR(rst);
+		if (ret != -EPROBE_DEFER)
+			dev_err(&pdev->dev, "Error: Missing reset ctrl\n");
+
 		goto clk_free;
 	}
 	reset_control_assert(rst);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
