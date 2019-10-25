Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACA6E4E0E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 16:04:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VWre48UCQlNzYBUGY4qD5agqrA4deXeGppKcWd6nB80=; b=RL4LnHYfXHSHqX
	3lbSN0MEoQv36nKD9FOxB7OSMSQH52kJfEly/q6t2AHR4SGpTQ4toL6/KfMaq68Fj43Mzz196CGJJ
	GcOCDct5dZDYMvOTVq2D8GbBIMj77JdQiJJ5ZkDYu9e8LOm0arTqDWrmQDVONq/6ZPLfqI5+VugQu
	cqsNxIOpqrmxwpKrSjV4pQsqHcB0FYDljF25VuxXEhmbl7v1ptY5eTBNAcCCBw3WstvNHMR62Z5yn
	W06iZ+H8OAeetODslBvPaKeane8/ToTtePiswixfEHOb0NqOXOh8tXZ2e3dM27gIQHg6V9AQnX3jl
	joqd51JEz6Xl9QpgRIww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO0Cn-0006qP-OI; Fri, 25 Oct 2019 14:04:41 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO0Cd-0006pM-UI
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 14:04:33 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x9PDuBtP028321; Fri, 25 Oct 2019 16:04:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=6Ht0zZxdeBCxT8SIBqaJnpSGpFwNjqaDeglBn/VrO3w=;
 b=0BIlOeQSsfPknWnAKmzTKfZ1WxZOkuAIOg7bvNrhnz03goBTWB/ZKl/fARBIcXwySHb7
 rUa2rmTeWjDAvlteKeaNh3+rS323DdXO4YKTYgsy/GIR+7EGEqgIbrseqF1Vnyj5BfP9
 DrMDAiqEiXqeHL6bvBka3MXKoWwiCmliaHP2H2UAU+14Swr2iYmhSMu84FF8ZdnPWDsw
 vthdwaU+05MCs7wEUKfmZzomEgXkTtsuXPTB/+inaJUOECbERcWCGNwpvq86ge4EpwKL
 1ytaduFZxRFR7t1mtK0GVAfGpKmN0bAfCHJdZK/JcBy9YzanWqSwcGVexr30U41PJHBg aA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2vt9s2058n-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 25 Oct 2019 16:04:26 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5A93C100034;
 Fri, 25 Oct 2019 16:04:25 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 4D3822C38A2;
 Fri, 25 Oct 2019 16:04:25 +0200 (CEST)
Received: from localhost (10.75.127.47) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 25 Oct 2019 16:04:24
 +0200
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <pierre-yves.mordret@st.com>
Subject: [PATCH] i2c: i2c-stm32f7: fix & reorder remove & probe error handling
Date: Fri, 25 Oct 2019 16:04:24 +0200
Message-ID: <1572012264-31996-1-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG3NODE3.st.com (10.75.127.9) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-25_08:2019-10-25,2019-10-25 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_070432_340696_8EFDE92C 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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

Add missing dma channels free calls in case of error during probe
and reorder the remove function so that dma channels are freed after
the i2c adapter is deleted.
Overall, reorder the remove function so that probe error handling order
and remove function order are same.

Fixes: 7ecc8cfde553 ("i2c: i2c-stm32f7: Add DMA support")

Signed-off-by: Alain Volmat <alain.volmat@st.com>
---
 drivers/i2c/busses/i2c-stm32f7.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-stm32f7.c
index d36cf08461f7..f8ef203dabfc 100644
--- a/drivers/i2c/busses/i2c-stm32f7.c
+++ b/drivers/i2c/busses/i2c-stm32f7.c
@@ -1980,6 +1980,11 @@ static int stm32f7_i2c_probe(struct platform_device *pdev)
 	pm_runtime_set_suspended(i2c_dev->dev);
 	pm_runtime_dont_use_autosuspend(i2c_dev->dev);
 
+	if (i2c_dev->dma) {
+		stm32_i2c_dma_free(i2c_dev->dma);
+		i2c_dev->dma = NULL;
+	}
+
 clk_free:
 	clk_disable_unprepare(i2c_dev->clk);
 
@@ -1990,21 +1995,21 @@ static int stm32f7_i2c_remove(struct platform_device *pdev)
 {
 	struct stm32f7_i2c_dev *i2c_dev = platform_get_drvdata(pdev);
 
-	if (i2c_dev->dma) {
-		stm32_i2c_dma_free(i2c_dev->dma);
-		i2c_dev->dma = NULL;
-	}
-
 	i2c_del_adapter(&i2c_dev->adap);
 	pm_runtime_get_sync(i2c_dev->dev);
 
-	clk_disable_unprepare(i2c_dev->clk);
-
 	pm_runtime_put_noidle(i2c_dev->dev);
 	pm_runtime_disable(i2c_dev->dev);
 	pm_runtime_set_suspended(i2c_dev->dev);
 	pm_runtime_dont_use_autosuspend(i2c_dev->dev);
 
+	if (i2c_dev->dma) {
+		stm32_i2c_dma_free(i2c_dev->dma);
+		i2c_dev->dma = NULL;
+	}
+
+	clk_disable_unprepare(i2c_dev->clk);
+
 	return 0;
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
