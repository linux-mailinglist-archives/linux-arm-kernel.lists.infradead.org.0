Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C98AD1EBBB2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 14:30:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CwB/ylH163XCUbLZoD28lrrLIPACMdTI9jZoouERdAM=; b=gwinnIdqxUQxfc
	+8tmL+TFQpvFVh8o6XSoYZbiIgFndsFto+3WHKfiOCsf+Hl0n9JkmioyBaq0Ws1MEBf7Fn9uQItbN
	yues6svx7Off8VFqXG7ljDpIJErpfhukWqs6dcfmM6qIoavJx6Xh49L1vaSmz1rM3LWfGq0XGiyOc
	Qk+Q1wY0oLA4HU9tB3EzEo65dHYjJT8qERVG4c2n4wSmI5tk9A3o4dFFvLeJ0iP3Xj4w7gN1++lZC
	wj6XHF1ah9bhb8zs3Y1jaHdHYpu3L4bdD/tSreS2M6MJWpkdeN4pYcKBa8ZSLPxIznZuLESNcWQd0
	S1mQoskuXStwwWfo4ECQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg63n-0003t1-C6; Tue, 02 Jun 2020 12:30:27 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg63K-0003lr-HL
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 12:30:00 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id D7958EC8F4709A17E87D;
 Tue,  2 Jun 2020 20:29:45 +0800 (CST)
Received: from huawei.com (10.175.104.175) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Tue, 2 Jun 2020
 20:29:40 +0800
From: yu kuai <yukuai3@huawei.com>
To: <baohua@kernel.org>
Subject: [PATCH] pinctrl: sirf: add missing put_device() in error handling
 path in sirfsoc_gpio_probe()
Date: Tue, 2 Jun 2020 20:29:21 +0800
Message-ID: <20200602122921.707395-1-yukuai3@huawei.com>
X-Mailer: git-send-email 2.25.4
MIME-Version: 1.0
X-Originating-IP: [10.175.104.175]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_052959_146001_7BB4CEE4 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-gpio@vger.kernel.org, yi.zhang@huawei.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 yukuai3@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

in sirfsoc_gpio_probe(), if of_find_device_by_node() succeed,
put_device() is missing in the error handling patch.

Signed-off-by: yu kuai <yukuai3@huawei.com>
---
 drivers/pinctrl/sirf/pinctrl-sirf.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/pinctrl/sirf/pinctrl-sirf.c b/drivers/pinctrl/sirf/pinctrl-sirf.c
index 1ebcb957c654..63a287d5795f 100644
--- a/drivers/pinctrl/sirf/pinctrl-sirf.c
+++ b/drivers/pinctrl/sirf/pinctrl-sirf.c
@@ -794,13 +794,17 @@ static int sirfsoc_gpio_probe(struct device_node *np)
 		return -ENODEV;
 
 	sgpio = devm_kzalloc(&pdev->dev, sizeof(*sgpio), GFP_KERNEL);
-	if (!sgpio)
-		return -ENOMEM;
+	if (!sgpio) {
+		err = -ENOMEM;
+		goto out_put_device;
+	}
 	spin_lock_init(&sgpio->lock);
 
 	regs = of_iomap(np, 0);
-	if (!regs)
-		return -ENOMEM;
+	if (!regs) {
+		err = -ENOMEM;
+		goto out_put_device;
+	}
 
 	sgpio->chip.gc.request = sirfsoc_gpio_request;
 	sgpio->chip.gc.free = sirfsoc_gpio_free;
@@ -824,8 +828,10 @@ static int sirfsoc_gpio_probe(struct device_node *np)
 	girq->parents = devm_kcalloc(&pdev->dev, SIRFSOC_GPIO_NO_OF_BANKS,
 				     sizeof(*girq->parents),
 				     GFP_KERNEL);
-	if (!girq->parents)
-		return -ENOMEM;
+	if (!girq->parents) {
+		err = -ENOMEM;
+		goto out_put_device;
+	}
 	for (i = 0; i < SIRFSOC_GPIO_NO_OF_BANKS; i++) {
 		bank = &sgpio->sgpio_bank[i];
 		spin_lock_init(&bank->lock);
@@ -868,6 +874,8 @@ static int sirfsoc_gpio_probe(struct device_node *np)
 	gpiochip_remove(&sgpio->chip.gc);
 out:
 	iounmap(regs);
+out_put_device:
+	put_device(&pdev->dev);
 	return err;
 }
 
-- 
2.25.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
