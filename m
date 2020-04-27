Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B421BA01A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 11:40:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kJ8GCy+5Ar/lGXgtKRhuS5Ng+5e0WyECmA3HTg1WdvI=; b=n49jfBAalfDvcf
	ZjlLPZ3lf1HBeMzH/7lKofZiNGMNZWLKYt3P+NX1hW77gMnIeIjkX+fdu0RpvrxcuJpfhqDJnH7vO
	fNLNWrnw6LQswdaqVVd5DilRv5aCPhBWExupjWkA/ZvBuzpE3kHdMfZ5KNzkAGzyQk08y4JQOosSO
	sgWzRva/18wYEA39UWTEmm5UkYdAFaxbwSW1s3Hs+Mrp5ICgkncK2u460nFKTnlh5b5kepvbRWcq/
	uB5/+D9yucPrZ3mHx+ZrW6N2h+uOZy+whQ+sXdIM82WAFreBPnkPNMZi3UbyLVdT67SsA06ZWS+td
	YC02/frkHkh8T1a92ecg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT0F1-0005oy-5r; Mon, 27 Apr 2020 09:39:55 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT0Eo-0005n1-QT
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 09:39:44 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id DAFCA895E56446193756;
 Mon, 27 Apr 2020 17:39:38 +0800 (CST)
Received: from localhost.localdomain.localdomain (10.175.113.25) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.487.0; Mon, 27 Apr 2020 17:39:32 +0800
From: Wei Yongjun <weiyongjun1@huawei.com>
To: <michal.simek@xilinx.com>, <esben@geanix.com>, <andrew@lunn.ch>,
 <ynezz@true.cz>
Subject: [PATCH net-next] net: ll_temac: Fix return value check in
 temac_probe()
Date: Mon, 27 Apr 2020 09:40:52 +0000
Message-ID: <20200427094052.181554-1-weiyongjun1@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.175.113.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_023943_021692_285EA2D4 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: netdev@vger.kernel.org, kernel-janitors@vger.kernel.org,
 Wei Yongjun <weiyongjun1@huawei.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In case of error, the function devm_ioremap() returns NULL pointer
not ERR_PTR(). The IS_ERR() test in the return value check should
be replaced with NULL test.

Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
---
 drivers/net/ethernet/xilinx/ll_temac_main.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/ll_temac_main.c b/drivers/net/ethernet/xilinx/ll_temac_main.c
index 3e313e71ae36..929244064abd 100644
--- a/drivers/net/ethernet/xilinx/ll_temac_main.c
+++ b/drivers/net/ethernet/xilinx/ll_temac_main.c
@@ -1410,9 +1410,9 @@ static int temac_probe(struct platform_device *pdev)
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	lp->regs = devm_ioremap(&pdev->dev, res->start,
 					resource_size(res));
-	if (IS_ERR(lp->regs)) {
+	if (!lp->regs) {
 		dev_err(&pdev->dev, "could not map TEMAC registers\n");
-		return PTR_ERR(lp->regs);
+		return -ENOMEM;
 	}
 
 	/* Select register access functions with the specified
@@ -1505,10 +1505,10 @@ static int temac_probe(struct platform_device *pdev)
 		res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 		lp->sdma_regs = devm_ioremap(&pdev->dev, res->start,
 						     resource_size(res));
-		if (IS_ERR(lp->sdma_regs)) {
+		if (!lp->sdma_regs) {
 			dev_err(&pdev->dev,
 				"could not map DMA registers\n");
-			return PTR_ERR(lp->sdma_regs);
+			return -ENOMEM;
 		}
 		if (pdata->dma_little_endian) {
 			lp->dma_in = temac_dma_in32_le;




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
