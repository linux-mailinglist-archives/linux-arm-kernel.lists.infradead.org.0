Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4DDD787A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YZ2o0Z1Q+3z9ogGWn6imGxqWnOINT8GOKOfnAJYzHdA=; b=IYA1Lx9iv538/i
	lsEy+Ox4DUP319Y8pDpgOEQczjrL4+agxK4MIoKqfBimosIWZJkw2IpBIK/GwRcgGDnrCZpq3F13D
	7uI1LbyWs8SCfRG3m6XRG2WElmXoMrUdgPiWvpQyws2ewrrX2QyWANE5nkE5OdQvYOKh5d/Mv9yt8
	TMklyCpzP6zw9ULLd6W+vSriLa7O/3grrbuRZBdIZ0iO9v/cx9xSMRRjTlvVPymi7FPjwHRaylIs1
	Rpy3J5wMJealLV85xRHwwZF2lVl9oCDsbRaydVFbfYRz7o9rDFW6ZJL/yBDcr2/Y6g2+RJDNGOt+i
	xIEu/iFROVkwUS/qdBdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKNoK-0001Km-Ob; Tue, 15 Oct 2019 14:28:28 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKNoB-0001JJ-73
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:28:20 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id ED3DD887B1F37F537092;
 Tue, 15 Oct 2019 22:28:11 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Tue, 15 Oct 2019
 22:28:04 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <wg@grandegger.com>, <mkl@pengutronix.de>, <davem@davemloft.net>,
 <mripard@kernel.org>, <wens@csie.org>
Subject: [PATCH net-next] can: sun4i: use devm_platform_ioremap_resource() to
 simplify code
Date: Tue, 15 Oct 2019 22:27:44 +0800
Message-ID: <20191015142744.25236-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_072819_432842_1E173F31 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: netdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-can@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/net/can/sun4i_can.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/can/sun4i_can.c b/drivers/net/can/sun4i_can.c
index f4cd881..e3ba8ab 100644
--- a/drivers/net/can/sun4i_can.c
+++ b/drivers/net/can/sun4i_can.c
@@ -771,7 +771,6 @@ static int sun4ican_remove(struct platform_device *pdev)
 static int sun4ican_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
-	struct resource *mem;
 	struct clk *clk;
 	void __iomem *addr;
 	int err, irq;
@@ -791,8 +790,7 @@ static int sun4ican_probe(struct platform_device *pdev)
 		goto exit;
 	}
 
-	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	addr = devm_ioremap_resource(&pdev->dev, mem);
+	addr = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(addr)) {
 		err = -EBUSY;
 		goto exit;
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
