Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEDA17E6F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 19:24:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fWkMOxDFVsdvh17t/iMJHgCEFm/2ZauscYdFxNvXXE0=; b=N6Jatvx5hq/C0q+vvrIfGlAgM6
	kD6QZf8mSyGOnIb1oFSKhHANDyhHe8iFp440ik2vmSDZYtCHNr+d9FwUci9sVmhTjeZyeXvdKZPDm
	oqErbJz05qDd24EwhcrH2j7SjqCMNCyXzXVUuYD59O2++U8LrAcBMpBQdSezwIlvsMZA1f1PR1FIF
	edIB8d4pf0H0wk40nORVb7Dfq4aGaZ5asf/KSU5Zxf3/TEfgsuTQ5DjGHiV95FTDj04Z6yHsMrsBO
	tO1y0TFXU//6FbbxAZBzQH+YHjMOdTFiCJ9KiIPtie/qwMZ1cmPktVhFa+WJ00DPAAvxD7iRCfPfQ
	l99OEMRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBN4J-0007BG-Hb; Mon, 09 Mar 2020 18:23:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBMzt-000222-7U
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 18:19:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8D04B106F;
 Mon,  9 Mar 2020 11:19:24 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3E98F3F67D;
 Mon,  9 Mar 2020 11:19:23 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH v2 14/14] net: axienet: Allow DMA to beyond 4GB
Date: Mon,  9 Mar 2020 18:18:51 +0000
Message-Id: <20200309181851.190164-15-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200309181851.190164-1-andre.przywara@arm.com>
References: <20200309181851.190164-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_111925_442839_900F6983 
X-CRM114-Status: GOOD (  12.50  )
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
 Robert Hancock <hancock@sedsystems.ca>, rmk+kernel@arm.linux.org.uk,
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
index 8c0887b1c009..c6fa7158b6bd 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -1797,6 +1797,7 @@ static int axienet_probe(struct platform_device *pdev)
 	struct net_device *ndev;
 	const void *mac_addr;
 	struct resource *ethres;
+	int addr_width = 32;
 	u32 value;
 
 	ndev = alloc_etherdev(sizeof(*lp));
@@ -1964,6 +1965,7 @@ static int axienet_probe(struct platform_device *pdev)
 			iowrite32(0xffffffff, desc);
 			if (ioread32(desc) > 0) {
 				lp->features |= XAE_FEATURE_DMA_64BIT;
+				addr_width = 64;
 				dev_info(&pdev->dev,
 					 "autodetected 64-bit DMA range\n");
 			}
@@ -1971,6 +1973,12 @@ static int axienet_probe(struct platform_device *pdev)
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
