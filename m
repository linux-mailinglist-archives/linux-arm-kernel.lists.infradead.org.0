Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 229E8A7FA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 11:47:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/4sBucFv3WBZMcN60Ju+qaYDlT3NGekboRfcprrANRQ=; b=TcNWUdhIBRtRBe
	nW7oFmI7qTyKvdP3Hmqzas1p2PXfMjaMtAdN5FePv+s5wOIgmnrNVGoMC6s5srcAqyEYgflgg68TE
	qfSeWnXcFYexdnZBwGvXYHLFKZHmrGqaHryrt1pArhHQ6NgnlQ/Ix4GR01BuMcGRKogXbAtP8fmcO
	75cpPGXXsXyZwvjdhZvHfZJS0iBwlc/rOzLiudCI5J44NydulrWmkZ5UkBfA3ZwrCTw/waHcqbi1x
	yyHWKICFUOKPXi2n+PW1QA7el8MrRXR1rTQtuwr6eB1xyCgdkwNrb67aEIKZDozA1aiV9PKvUBRt+
	2mkf0izEbH8YLRI8lFHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5RsP-0003a1-PJ; Wed, 04 Sep 2019 09:46:57 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5RsD-0003ZG-6D
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 09:46:46 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id A41B6469D31384F761E5;
 Wed,  4 Sep 2019 17:46:40 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Wed, 4 Sep 2019
 17:46:34 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <daniel@zonque.org>, <haojian.zhuang@gmail.com>, <robert.jarzmik@free.fr>, 
 <balbi@kernel.org>, <gregkh@linuxfoundation.org>
Subject: [PATCH -next] usb: gadget: pxa27x_udc: use
 devm_platform_ioremap_resource() to simplify code
Date: Wed, 4 Sep 2019 17:45:57 +0800
Message-ID: <20190904094557.22884-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_024645_406684_3603A843 
X-CRM114-Status: UNSURE (   9.00  )
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
Cc: linux-usb@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/usb/gadget/udc/pxa27x_udc.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/usb/gadget/udc/pxa27x_udc.c b/drivers/usb/gadget/udc/pxa27x_udc.c
index 0142332..5f107f2 100644
--- a/drivers/usb/gadget/udc/pxa27x_udc.c
+++ b/drivers/usb/gadget/udc/pxa27x_udc.c
@@ -2356,7 +2356,6 @@ MODULE_DEVICE_TABLE(of, udc_pxa_dt_ids);
  */
 static int pxa_udc_probe(struct platform_device *pdev)
 {
-	struct resource *regs;
 	struct pxa_udc *udc = &memory;
 	int retval = 0, gpio;
 	struct pxa2xx_udc_mach_info *mach = dev_get_platdata(&pdev->dev);
@@ -2378,8 +2377,7 @@ static int pxa_udc_probe(struct platform_device *pdev)
 		udc->gpiod = devm_gpiod_get(&pdev->dev, NULL, GPIOD_ASIS);
 	}
 
-	regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	udc->regs = devm_ioremap_resource(&pdev->dev, regs);
+	udc->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(udc->regs))
 		return PTR_ERR(udc->regs);
 	udc->irq = platform_get_irq(pdev, 0);
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
