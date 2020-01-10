Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 456C4136C98
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 12:58:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NX8upousV7vM/QkIDgTWLiWeTdk2pgIwdV2tNe6tMz0=; b=A6fx4EucqAbDO7ecj7DGHBglDw
	Xe7OKDepz+1F9+If2wWGS50UNemKajgrnTbsmrj04BjyS6TaKbMzyqSLIEr4Y34eWTbVf2WkBIz18
	H0Ih7KnTO0lia4ig82rG6s8D83I0T7x2on5eaAeMhf+a7QymZYghzosiLTjYEc6C4a2/rpRREpNrI
	kNKRrPUR2zDXcGXaGQdwLuOJ3L+HqvcKQoJMdbF5Ij0fpCCOKSUChZJVUrQQ7YbSEufbiz/Aybh5j
	i15gZvcqSc7Z0bsA9HyG4Jvijp8xjn2wlI7GRsH3Z+p8lqDLwE+unElq3hrADz/qkFcrhMNAfInhA
	yB5NyvTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipsw2-0002mX-Ma; Fri, 10 Jan 2020 11:58:38 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipssB-0006hV-Hs
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 11:54:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6BADF1435;
 Fri, 10 Jan 2020 03:54:39 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 52C513F534;
 Fri, 10 Jan 2020 03:54:38 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH 12/14] net: axienet: Autodetect 64-bit DMA capability
Date: Fri, 10 Jan 2020 11:54:13 +0000
Message-Id: <20200110115415.75683-13-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110115415.75683-1-andre.przywara@arm.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_035439_690388_82AD6F92 
X-CRM114-Status: GOOD (  16.06  )
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
Cc: Robert Hancock <hancock@sedsystems.ca>, netdev@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When newer revisions of the Axienet IP are configured for a 64-bit bus,
we *need* to write to the MSB part of the an address registers,
otherwise the IP won't recognise this as a DMA start condition.
This is even true when the actual DMA address comes from the lower 4 GB.

To autodetect this configuration, at probe time we write all 1's to such
an MSB register, and see if any bits stick. If this is configured for a
32-bit bus, those MSB registers are RES0, so reading back 0 indicates
that no MSB writes are necessary.
On the other hands reading anything other than 0 indicated the need to
write the MSB registers, so we set the respective flag.

For now this leaves the actual DMA mask at 32-bit, as we can't reliably
detect the actually wired number of address lines beyond 32.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 drivers/net/ethernet/xilinx/xilinx_axienet.h  |  1 +
 .../net/ethernet/xilinx/xilinx_axienet_main.c | 27 +++++++++++++++++++
 2 files changed, 28 insertions(+)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet.h b/drivers/net/ethernet/xilinx/xilinx_axienet.h
index 4aea4c23d3bb..4feaaa02819c 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet.h
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet.h
@@ -161,6 +161,7 @@
 #define XAE_FCC_OFFSET		0x0000040C /* Flow Control Configuration */
 #define XAE_EMMC_OFFSET		0x00000410 /* EMAC mode configuration */
 #define XAE_PHYC_OFFSET		0x00000414 /* RGMII/SGMII configuration */
+#define XAE_ID_OFFSET		0x000004F8 /* Identification register */
 #define XAE_MDIO_MC_OFFSET	0x00000500 /* MII Management Config */
 #define XAE_MDIO_MCR_OFFSET	0x00000504 /* MII Management Control */
 #define XAE_MDIO_MWD_OFFSET	0x00000508 /* MII Management Write Data */
diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 133f088d797e..f7f593df0c11 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -151,6 +151,9 @@ static void axienet_dma_out_addr(struct axienet_local *lp, off_t reg,
 				 dma_addr_t addr)
 {
 	axienet_dma_out32(lp, reg, lower_32_bits(addr));
+
+	if (lp->features & XAE_FEATURE_DMA_64BIT)
+		axienet_dma_out32(lp, reg + 4, upper_32_bits(addr));
 }
 
 static void desc_set_phys_addr(struct axienet_local *lp, dma_addr_t addr,
@@ -1934,6 +1937,30 @@ static int axienet_probe(struct platform_device *pdev)
 		goto free_netdev;
 	}
 
+	/*
+	 * Autodetect the need for 64-bit DMA pointers.
+	 * When the IP is configured for a bus width bigger than 32 bits,
+	 * writing the MSB registers is mandatory, even if they are all 0.
+	 * We can detect this case by writing all 1's to one such register
+	 * and see if that sticks: when the IP is configured for 32 bits
+	 * only, those registers are RES0.
+	 * Those MSB registers were introduced in IP v7.1, which we check first.
+	 */
+	if ((axienet_ior(lp, XAE_ID_OFFSET) >> 24) >= 0x9) {
+		void __iomem *desc = lp->dma_regs + XAXIDMA_TX_CDESC_OFFSET + 4;
+
+		iowrite32(0x0, desc);
+		if (ioread32(desc) == 0) {	/* sanity check */
+			iowrite32(0xffffffff, desc);
+			if (ioread32(desc) > 0) {
+				lp->features |= XAE_FEATURE_DMA_64BIT;
+				dev_info(&pdev->dev,
+					 "autodetected 64-bit DMA range\n");
+			}
+			iowrite32(0x0, desc);
+		}
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
