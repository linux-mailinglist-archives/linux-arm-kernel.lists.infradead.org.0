Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6181ED29
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 13:06:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/PL1tzqDVsw4AcnQkxseGAtZHgPKh3ztoHxY7Y2uc4=; b=rpIqZQXbmH9u3x
	OM8uIpKshhuceL1gW+baE3AUbCxlnZ//s0WofdW3h10CY4LkxVNaVmUKEMWyOSRk2Rd23os2RrtgQ
	iJYKj1FWHXyo+sDi1QBybshtYCoKw5XkzE4vPOZ4xl9KgLpWqXSFo02HpCv3fsUstVO9TUOmbBG8Y
	hM8NjlUlkL8rxu9MTJtIEyEo7eSVcQHwzq83WtQSSsAc0kmdLi2B2RWBdocHUJ7i4ighPdsm0ZbMy
	DwusZWO1MB+95ASUEQT0bPTpNkWGZMvDIS0xbsv4GKRuR82Z/9TpqhhHcKloV5fjeOxV2tKQnx+Es
	9gB9JAGFPpixlwjeOExg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQrjc-0004qA-I2; Wed, 15 May 2019 11:06:08 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQrjU-0004j6-UO
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 11:06:02 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 15B1E2173C;
 Wed, 15 May 2019 11:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557918360;
 bh=cD5JqFBtKTIau3fJSKafXbZC7LycYSi3He4kA02A0WI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ZDrlSD0cnxqCbx8vskXsP6NfmMNx2cWBLXs9ckdzloZbaDTY3oVIcrGZXE68NVeNX
 dJbsG3BjcLR4PVWAWjtiG8bQgjfyDm8nGEBjXbV9CWTLTZ1/WfomKFAYcE1v0ZdBl6
 28uIh/8kYwEcy2datxKpfCUSj0rzdVc4EPMu8zsM=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 4.4 100/266] net: xilinx: fix possible object reference leak
Date: Wed, 15 May 2019 12:53:27 +0200
Message-Id: <20190515090725.833423228@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190515090722.696531131@linuxfoundation.org>
References: <20190515090722.696531131@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_040600_998445_B06E491E 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "Sasha Levin \(Microsoft\)" <sashal@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michal Simek <michal.simek@xilinx.com>, stable@vger.kernel.org,
 Wen Yang <wen.yang99@zte.com.cn>, Anirudha Sarangi <anirudh@xilinx.com>,
 netdev@vger.kernel.org, John Linn <John.Linn@xilinx.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ Upstream commit fa3a419d2f674b431d38748cb58fb7da17ee8949 ]

The call to of_parse_phandle returns a node pointer with refcount
incremented thus it must be explicitly decremented after the last
usage.

Detected by coccinelle with the following warnings:
./drivers/net/ethernet/xilinx/xilinx_axienet_main.c:1624:1-7: ERROR: missing of_node_put; acquired a node pointer with refcount incremented on line 1569, but without a corresponding object release within this function.

Signed-off-by: Wen Yang <wen.yang99@zte.com.cn>
Cc: Anirudha Sarangi <anirudh@xilinx.com>
Cc: John Linn <John.Linn@xilinx.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Michal Simek <michal.simek@xilinx.com>
Cc: netdev@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: David S. Miller <davem@davemloft.net>
Signed-off-by: Sasha Levin (Microsoft) <sashal@kernel.org>
---
 drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 4684644703cc..58ba579793f8 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -1595,12 +1595,14 @@ static int axienet_probe(struct platform_device *pdev)
 	ret = of_address_to_resource(np, 0, &dmares);
 	if (ret) {
 		dev_err(&pdev->dev, "unable to get DMA resource\n");
+		of_node_put(np);
 		goto free_netdev;
 	}
 	lp->dma_regs = devm_ioremap_resource(&pdev->dev, &dmares);
 	if (IS_ERR(lp->dma_regs)) {
 		dev_err(&pdev->dev, "could not map DMA regs\n");
 		ret = PTR_ERR(lp->dma_regs);
+		of_node_put(np);
 		goto free_netdev;
 	}
 	lp->rx_irq = irq_of_parse_and_map(np, 1);
-- 
2.19.1




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
