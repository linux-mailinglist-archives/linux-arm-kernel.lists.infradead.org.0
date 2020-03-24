Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 326B2190F72
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Mar 2020 14:27:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zEopoohePtywKvKIW6FOJ25eBGTgDMWgaZn+l4TT9tE=; b=oslUkU9gsKy6Hl5pC2M5FXpYtn
	m9HT9v4Ai0BeNBaHEVpA88zhdgjg3zqrjD8TgDGF4ZgS3wIqf0vescZuieDGWPj8DWbT4vBhO8+Kl
	f2NvicUX5HHF5wqj9nHmdQoOM5yAEx/3Diq0qZ2H9HXCxo/klkQfaF+CiopwebsLCaFFaw1VHOTIG
	EcUihiuXFEig19XsiEeBj6r324OMfeE+8ZkZBeADmuiYVBlePgrd5796HeWBOwjx5xjSfbmN2832f
	hyhiLLNg318YNnY6ygUtU/BFqsNCfzIIXenxbanSfpVGfmls5ud1lt3qOmotLjKZ/vbqQ12J5SAwj
	K1cjUFkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGjaU-00052J-1d; Tue, 24 Mar 2020 13:27:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGjXT-00017V-59
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Mar 2020 13:24:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 60701FEC;
 Tue, 24 Mar 2020 06:24:14 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.25])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 121633F52E;
 Tue, 24 Mar 2020 06:24:12 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH v3 13/14] net: axienet: Autodetect 64-bit DMA capability
Date: Tue, 24 Mar 2020 13:23:46 +0000
Message-Id: <20200324132347.23709-14-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200324132347.23709-1-andre.przywara@arm.com>
References: <20200324132347.23709-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_062415_304508_CA17AA6C 
X-CRM114-Status: GOOD (  15.89  )
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

The actual DMA mask stays at 32-bit for now. To help bisecting, a
separate patch will enable allocations from higher addresses.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 drivers/net/ethernet/xilinx/xilinx_axienet.h  |  1 +
 .../net/ethernet/xilinx/xilinx_axienet_main.c | 26 +++++++++++++++++++
 2 files changed, 27 insertions(+)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet.h b/drivers/net/ethernet/xilinx/xilinx_axienet.h
index 84c4c3655516..fbaf3c987d9c 100644
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
index 6ecd1bb5f81d..a54a5c754da0 100644
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
@@ -1928,6 +1931,29 @@ static int axienet_probe(struct platform_device *pdev)
 		goto free_netdev;
 	}
 
+	/* Autodetect the need for 64-bit DMA pointers.
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
