Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F01136C9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 12:58:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3MYaC4eWxFj8rmo7QDbi9G/dKGIBryg+bjWJOEsIeXU=; b=WESHDBqg22aDwbdnBJ56DPo/gv
	uWl1Z6AxBDC6JMQEPED5lWUzkVnC90EbVNjCF2bjDhQ4C54vx6IHrJGVjvRzqWMOJvo9m9myJI6Qu
	fhvx0lTn+SmmxocJ070MJIpvn3clyCwz6kfrE5UhJYHbD8xTa09I8W+AyP4ohx4yPrCoeL/Pldzbd
	KKuwcsMasXZJKVnsuA6ALtj6IcOPrxi0HKNwj5f8BxOn0L6r/7xntH4cXzRvrAVdgsSRfzzi3ycK0
	1BpegORBJJfAP50nk6kl7D3Nb2J31Ml/ZZZ8xSJ6Z3gBm66REEMEIUNYivZRUzcafsYnDHl2ykFWa
	xGJcxVYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipswF-00033M-9l; Fri, 10 Jan 2020 11:58:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipssD-0006eD-6Y
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 11:54:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14F7813A1;
 Fri, 10 Jan 2020 03:54:41 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9FCA23F73B;
 Fri, 10 Jan 2020 03:54:39 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH 13/14] net: axienet: Allow DMA to beyond 4GB
Date: Fri, 10 Jan 2020 11:54:14 +0000
Message-Id: <20200110115415.75683-14-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110115415.75683-1-andre.przywara@arm.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_035441_305070_997AE5FF 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 linux-kernel@vger.kernel.org, Robert Hancock <hancock@sedsystems.ca>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With all DMA address accesses wrapped, we can actually support 64-bit
DMA if this option was chosen at IP integration time.
Since there is no way to autodetect the actual address bus width, we
make use of the existing "xlnx,addrwidth" DT property to let the driver
know about the width. The value in this property should match the
"Address Width" parameter used when synthesizing the IP.

This increases the DMA mask to let the kernel choose buffers from
memory at higher addresses.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../net/ethernet/xilinx/xilinx_axienet_main.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index f7f593df0c11..e036834549b3 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -1786,6 +1786,7 @@ static int axienet_probe(struct platform_device *pdev)
 	struct net_device *ndev;
 	const void *mac_addr;
 	struct resource *ethres;
+	int addr_width = 32;
 	u32 value;
 
 	ndev = alloc_etherdev(sizeof(*lp));
@@ -1915,6 +1916,8 @@ static int axienet_probe(struct platform_device *pdev)
 						     &dmares);
 		lp->rx_irq = irq_of_parse_and_map(np, 1);
 		lp->tx_irq = irq_of_parse_and_map(np, 0);
+		of_property_read_u32(np, "xlnx,addrwidth", &addr_width);
+
 		of_node_put(np);
 		lp->eth_irq = platform_get_irq(pdev, 0);
 	} else {
@@ -1944,6 +1947,9 @@ static int axienet_probe(struct platform_device *pdev)
 	 * We can detect this case by writing all 1's to one such register
 	 * and see if that sticks: when the IP is configured for 32 bits
 	 * only, those registers are RES0.
+	 * We can't autodetect the actual width this way, so we still use
+	 * a 32-bit DMA mask and rely on the xlnk,addrwidth DT property
+	 * to set this properly.
 	 * Those MSB registers were introduced in IP v7.1, which we check first.
 	 */
 	if ((axienet_ior(lp, XAE_ID_OFFSET) >> 24) >= 0x9) {
@@ -1961,6 +1967,19 @@ static int axienet_probe(struct platform_device *pdev)
 		}
 	}
 
+	if (!(lp->features & XAE_FEATURE_DMA_64BIT)) {
+		if (addr_width > 32)
+			dev_warn(&pdev->dev, "trimming DMA width from %d to 32 bits\n",
+				 addr_width);
+		addr_width = 32;
+	}
+
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
