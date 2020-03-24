Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F33F190F75
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 14:28:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kpyQEADBKM9NfO1gOaqIJ4PyAx5LwDTM/UY3tmPvyYs=; b=LVqtvLyxY8bbXXBRqPVZ5FbSJz
	QmdSd3StYSp0NbQKpiDD68gn0+eCTTl6NqG72Tx5z80ElK6GPENN8tK+QDZDvnN8cTaAyCEC4DK4N
	dBLD/6XpScrdh/QShCb6xdn28qqQzyMCncKGLLzyRC2iAEB+s6/YfVL2CStObViyswgsneOCB57eS
	pFId8/RJqJ/oz9r+/RJv8k+CdB6I5IVAm7sWMGdiXPm4aAcPrNOwAK8pfaEDQfuC6DfUmtvfDb2MJ
	Oniikb8ERdGNwoXVpov3pM3FDp9B665Pmwun+vJToVHmzWnLlU1lOny58Q0vrCLTUQ75znOjnDfnY
	r1lkhivA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGjax-0005Xy-EX; Tue, 24 Mar 2020 13:27:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGjXV-00018W-Gn
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 13:24:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E206F11B3;
 Tue, 24 Mar 2020 06:24:15 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 93F153F52E;
 Tue, 24 Mar 2020 06:24:14 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH v3 14/14] net: axienet: Allow DMA to beyond 4GB
Date: Tue, 24 Mar 2020 13:23:47 +0000
Message-Id: <20200324132347.23709-15-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324132347.23709-1-andre.przywara@arm.com>
References: <20200324132347.23709-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_062417_814663_CC125035 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 Robert Hancock <hancock@sedsystems.ca>,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With all DMA address accesses wrapped, we can actually support 64-bit
DMA if this option was chosen at IP integration time.
If the IP has been configured for an address width greater than 32 bits,
we assume the full 64 bit DMA width is working. In practise this will be
limited by the actual system address bus width, which will ideally be the
same as the DMA IP address width.
If this is not the case, the actual width can still be configured using a
dma-ranges property in the parent of the MAC node.

This increases the DMA mask on those systems to let the kernel choose
buffers from memory at higher addresses.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 drivers/net/ethernet/xilinx/xilinx_axienet_main.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index a54a5c754da0..fa5dc2993520 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -1780,6 +1780,7 @@ static int axienet_probe(struct platform_device *pdev)
 	struct net_device *ndev;
 	const void *mac_addr;
 	struct resource *ethres;
+	int addr_width = 32;
 	u32 value;
 
 	ndev = alloc_etherdev(sizeof(*lp));
@@ -1947,6 +1948,7 @@ static int axienet_probe(struct platform_device *pdev)
 			iowrite32(0xffffffff, desc);
 			if (ioread32(desc) > 0) {
 				lp->features |= XAE_FEATURE_DMA_64BIT;
+				addr_width = 64;
 				dev_info(&pdev->dev,
 					 "autodetected 64-bit DMA range\n");
 			}
@@ -1954,6 +1956,12 @@ static int axienet_probe(struct platform_device *pdev)
 		}
 	}
 
+	ret = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(addr_width));
+	if (ret) {
+		dev_err(&pdev->dev, "No suitable DMA available\n");
+		goto free_netdev;
+	}
+
 	/* Check for Ethernet core IRQ (optional) */
 	if (lp->eth_irq <= 0)
 		dev_info(&pdev->dev, "Ethernet core IRQ not defined\n");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
