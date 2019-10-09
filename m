Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB3CD1170
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 16:39:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HQJezZJiQH+o99j6SUBBYLx+aTZ64h4bidzt3rYiZII=; b=ckp7kgBv0B27lE
	fhYhA4mmxXwfsn6YRoyBKeGCfhzM7vrODFc4rkTA5yzR3DIAkRjz4fkWrELDggteUWzgPjtn/b784
	xcAMpt7FeLzjGEjXks6/K7uQ4UyipkdIS6d+JjOHUbxlmTFaQZyP0weNBDclALgKbPOnUoswFykZU
	3IUprHwAR+93MUWFNKIbPTUg+SQtOGUKkZHnuPKI/8XBs85MG/2Xr+3+YAskv6lLpKChdHE6bhxkn
	XK8qgYzQlYiRhfdaLigm97Lhn1AfWDgX1YzQ7mQ+0B4FJBIUlWCD9rTHl8+up3Lp42yfayv9MB+xI
	kzOmotShL+TJN+pDIguA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iID7I-0007BX-W1; Wed, 09 Oct 2019 14:39:04 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iID79-00079z-Lz
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 14:38:57 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 43DB6252E7B68721479A;
 Wed,  9 Oct 2019 22:38:45 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0; Wed, 9 Oct 2019
 22:38:36 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>
Subject: [PATCH -next] misc: atmel_tclib: use devm_platform_ioremap_resource()
 to simplify code
Date: Wed, 9 Oct 2019 22:37:52 +0800
Message-ID: <20191009143752.11236-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_073855_897458_1D84E083 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/misc/atmel_tclib.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/misc/atmel_tclib.c b/drivers/misc/atmel_tclib.c
index 08b5b63..7de7840 100644
--- a/drivers/misc/atmel_tclib.c
+++ b/drivers/misc/atmel_tclib.c
@@ -109,7 +109,6 @@ static int __init tc_probe(struct platform_device *pdev)
 	struct atmel_tc *tc;
 	struct clk	*clk;
 	int		irq;
-	struct resource	*r;
 	unsigned int	i;
 
 	if (of_get_child_count(pdev->dev.of_node))
@@ -133,8 +132,7 @@ static int __init tc_probe(struct platform_device *pdev)
 	if (IS_ERR(tc->slow_clk))
 		return PTR_ERR(tc->slow_clk);
 
-	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	tc->regs = devm_ioremap_resource(&pdev->dev, r);
+	tc->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(tc->regs))
 		return PTR_ERR(tc->regs);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
