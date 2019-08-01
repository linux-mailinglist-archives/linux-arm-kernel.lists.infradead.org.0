Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1B67DB8E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 14:33:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PcNa2SKY9/puWingjzmWOEAjxlsZIMG4N4n1grmBZeY=; b=poqXiAD3nPMdbL
	sQMi0UDLZBQkcAtD5h8v9qqtJcZQX3ofYtEeI6nwrSAN/BKChdVembdKZUnuPGBDekKhOn4ERxUDy
	qdd/TFp6KPux6nuIU5oxde80PjFHnu+l7OkktAZMU7WaUiG9G4F0IciqYEU4HLEO4YmQxnSucdVO1
	8uftaNyKbVbKepsEYRnAfalw0IlmnBHq0iHuxowy6bFRaa6vZu7iyydZvzwERS3K6xtUJH+CpKfXs
	MMLkwrmbf52YHeErC/BQP5tVZbvz5RTOLP5ongza1yNZBNcQeLTOS3T3ycZ3z+CtKrMavZ27Pgu1Y
	enj/YTF9O/16qk+vstRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htAHM-00074B-G5; Thu, 01 Aug 2019 12:33:56 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htAHB-00071s-5v; Thu, 01 Aug 2019 12:33:46 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 8DCD3ABEDA5AEF054547;
 Thu,  1 Aug 2019 20:33:31 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Thu, 1 Aug 2019
 20:33:21 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <davem@davemloft.net>, <nbd@openwrt.org>, <john@phrozen.org>,
 <sean.wang@mediatek.com>, <nelson.chang@mediatek.com>,
 <matthias.bgg@gmail.com>
Subject: [PATCH net-next] net: mediatek: use devm_platform_ioremap_resource()
 to simplify code
Date: Thu, 1 Aug 2019 20:33:08 +0800
Message-ID: <20190801123308.20924-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_053345_397844_1BE972A9 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
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
 drivers/net/ethernet/mediatek/mtk_eth_soc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
index e529d86..ddbffeb 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.c
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
@@ -2447,7 +2447,6 @@ static int mtk_add_mac(struct mtk_eth *eth, struct device_node *np)
 
 static int mtk_probe(struct platform_device *pdev)
 {
-	struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	struct device_node *mac_np;
 	struct mtk_eth *eth;
 	int err;
@@ -2460,7 +2459,7 @@ static int mtk_probe(struct platform_device *pdev)
 	eth->soc = of_device_get_match_data(&pdev->dev);
 
 	eth->dev = &pdev->dev;
-	eth->base = devm_ioremap_resource(&pdev->dev, res);
+	eth->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(eth->base))
 		return PTR_ERR(eth->base);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
