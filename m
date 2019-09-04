Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DADD2A7F75
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 11:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h+VSt5eBO1aBHErFjLuH9iWiXYugfqoBV8EGGbAs1a4=; b=j8GJWkhkHs0KFw
	p0qinoxFVF309xE5396Beu/1LWP8xbCyLm8FvAzTceT9nWZWCYOdyr5TyVYVYb1pVJHqU70GZo6d6
	Xhj9r8hh49w6+Pr8y2xyPUcMLv4B8ypOOz8dzeMQOqOEtevdQjbXpj4HbiHBTDNSuYcseBMNhRke1
	doKpZE1xu4GgCQhLtC0utaQb1OKc2yB9ahFLE6Bz84I+Nz+09xnFbOhgXQe7LrUnIRrsQhKxlCEtG
	rN7pTTvZey/epjpnVXrGQ5XpiVi5NA0O7ONTNYz/WQtxwtOAFLJp61idnDyTaI8TOulyRyOCLQCCd
	Qv7qf27PM/v8VIDoSGpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Rf4-0006iK-2F; Wed, 04 Sep 2019 09:33:10 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Res-0006he-0r
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 09:32:59 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id E6614287EB2AD6177276;
 Wed,  4 Sep 2019 17:32:55 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Wed, 4 Sep 2019
 17:32:47 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <cernekee@gmail.com>, <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <f.fainelli@gmail.com>
Subject: [PATCH -next] usb: gadget: bcm63xx_udc: use
 devm_platform_ioremap_resource() to simplify code
Date: Wed, 4 Sep 2019 17:32:27 +0800
Message-ID: <20190904093227.23304-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_023258_251796_93F34113 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-usb@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/usb/gadget/udc/bcm63xx_udc.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/gadget/udc/bcm63xx_udc.c b/drivers/usb/gadget/udc/bcm63xx_udc.c
index 97b1646..7fcf4a8 100644
--- a/drivers/usb/gadget/udc/bcm63xx_udc.c
+++ b/drivers/usb/gadget/udc/bcm63xx_udc.c
@@ -2282,7 +2282,6 @@ static int bcm63xx_udc_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct bcm63xx_usbd_platform_data *pd = dev_get_platdata(dev);
 	struct bcm63xx_udc *udc;
-	struct resource *res;
 	int rc = -ENOMEM, i, irq;
 
 	udc = devm_kzalloc(dev, sizeof(*udc), GFP_KERNEL);
@@ -2298,13 +2297,11 @@ static int bcm63xx_udc_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	udc->usbd_regs = devm_ioremap_resource(dev, res);
+	udc->usbd_regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(udc->usbd_regs))
 		return PTR_ERR(udc->usbd_regs);
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
-	udc->iudma_regs = devm_ioremap_resource(dev, res);
+	udc->iudma_regs = devm_platform_ioremap_resource(pdev, 1);
 	if (IS_ERR(udc->iudma_regs))
 		return PTR_ERR(udc->iudma_regs);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
