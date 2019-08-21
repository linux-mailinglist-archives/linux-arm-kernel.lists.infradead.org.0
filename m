Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3E897BD2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 16:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wYxfg0iigt1ecRT9yvQfFMBzNwAkV7fD4BNzRNZR5js=; b=uPYlWjCKY+TVgq
	uQAX/PQy5y0IlaOqPzaXSdmyKmQMypRtLFJfJmei0T7PoVpq4YsQkZSXtIczOlKVl2mERefdy2tcS
	bKvdAnNJ70OXW1sUmneoy2fb7XEuqI26ExbsTmiQUVUpg2BHHkSf65d3uiADEeD/hyA7RcF3OkJOO
	G6k4hBOpvjwnZTrSKWCbRKvqninYP5+JkdZqEKBtWlB3GeNbQg5k+7RDrX+JamLVd/AqLlURpp4/p
	pqUtBW4aKTM6/sItUGl8vCa1isGyTgmEsyBq7SQx93TYLyd8yFnH1jZ7OXytzBiWVKLeodZGSfoIi
	NpBC/SsRFaKCnHCB4SzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0RAd-00046Z-OR; Wed, 21 Aug 2019 14:01:03 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0R6y-0007TZ-Ou; Wed, 21 Aug 2019 13:57:18 +0000
Received: from DGGEMS404-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id F20E6172C2CEA7DC6A97;
 Wed, 21 Aug 2019 21:57:13 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS404-HUB.china.huawei.com
 (10.3.19.204) with Microsoft SMTP Server id 14.3.439.0; Wed, 21 Aug 2019
 21:57:05 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <davem@davemloft.net>, <peppe.cavallaro@st.com>,
 <alexandre.torgue@st.com>, <joabreu@synopsys.com>, <khilman@baylibre.com>,
 <mcoquelin.stm32@gmail.com>
Subject: [PATCH net-next] net: stmmac: dwc-qos: use
 devm_platform_ioremap_resource() to simplify code
Date: Wed, 21 Aug 2019 21:57:01 +0800
Message-ID: <20190821135701.46780-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_065717_186679_96EE3303 
X-CRM114-Status: UNSURE (   7.94  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_platform_ioremap_resource() to simplify the code a bit.
This is detected by coccinelle.

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c
index f2197b0..dd9967a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-dwc-qos-eth.c
@@ -418,7 +418,6 @@ static int dwc_eth_dwmac_probe(struct platform_device *pdev)
 	const struct dwc_eth_dwmac_data *data;
 	struct plat_stmmacenet_data *plat_dat;
 	struct stmmac_resources stmmac_res;
-	struct resource *res;
 	void *priv;
 	int ret;
 
@@ -435,8 +434,7 @@ static int dwc_eth_dwmac_probe(struct platform_device *pdev)
 		return stmmac_res.irq;
 	stmmac_res.wol_irq = stmmac_res.irq;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	stmmac_res.addr = devm_ioremap_resource(&pdev->dev, res);
+	stmmac_res.addr = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(stmmac_res.addr))
 		return PTR_ERR(stmmac_res.addr);
 
-- 
2.7.4



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
