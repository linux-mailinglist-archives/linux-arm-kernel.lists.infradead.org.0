Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 201169EA1D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U98BIh2u22pmFW0EnmgUCjCiSpmYgHiuzztUyT6tO0s=; b=KRqEQpYkpy06hR
	wiygEgj7HhAk0rhMpuo2NHvZ0y0hLHOR5N3pmJ19f9CVUP9mfXIv7I7cH3yL3NCF0VKLsfmSRkbaw
	bXYcZ52JU/znEe1j2b7yVMLyKJ1cSjUi5xEGJXIlBk8kr1Xmd62sxDjzN4IRhQ5XnSppoZgYc1q7b
	XmocOqNdcihctFAENDqj44ujxg8GqZwhUu1kCgN7x6OKrKWZFENOx12cAy0i9XiC6nt+T8MxQPbTS
	XjRv+zmGM3qHHddPjYd2zQiAMnO/auIIfNk+/m8eoWMwveh6N+LNERlnCMpMbcP+0mimhqYcP5Ube
	YTqkLjKhoObqMYNWEBYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bt9-0008PA-9r; Tue, 27 Aug 2019 13:51:59 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bsJ-0007n6-Eu
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:51:08 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 0D7BA7EEEE9F0493118C;
 Tue, 27 Aug 2019 21:51:06 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.439.0; Tue, 27 Aug 2019
 21:50:58 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <andrew@lunn.ch>, <f.fainelli@gmail.com>, <hkallweit1@gmail.com>,
 <davem@davemloft.net>, <mripard@kernel.org>, <wens@csie.org>
Subject: [PATCH net-next] phy: mdio-sun4i: use
 devm_platform_ioremap_resource() to simplify code
Date: Tue, 27 Aug 2019 21:50:32 +0800
Message-ID: <20190827135032.14620-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_065107_690069_3146390A 
X-CRM114-Status: UNSURE (   8.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: netdev@vger.kernel.org, YueHaibing <yuehaibing@huawei.com>,
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
 drivers/net/phy/mdio-sun4i.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/phy/mdio-sun4i.c b/drivers/net/phy/mdio-sun4i.c
index 20ffd8f..58d6504 100644
--- a/drivers/net/phy/mdio-sun4i.c
+++ b/drivers/net/phy/mdio-sun4i.c
@@ -92,7 +92,6 @@ static int sun4i_mdio_probe(struct platform_device *pdev)
 	struct device_node *np = pdev->dev.of_node;
 	struct mii_bus *bus;
 	struct sun4i_mdio_data *data;
-	struct resource *res;
 	int ret;
 
 	bus = mdiobus_alloc_size(sizeof(*data));
@@ -106,8 +105,7 @@ static int sun4i_mdio_probe(struct platform_device *pdev)
 	bus->parent = &pdev->dev;
 
 	data = bus->priv;
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	data->membase = devm_ioremap_resource(&pdev->dev, res);
+	data->membase = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(data->membase)) {
 		ret = PTR_ERR(data->membase);
 		goto err_out_free_mdiobus;
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
