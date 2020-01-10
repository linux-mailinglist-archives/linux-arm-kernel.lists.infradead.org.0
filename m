Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E38136C78
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 12:56:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TuC5GFmGVlpxlVT7Vf62R+VKajVGQiyndCXSoPw4h7I=; b=H5WUyZct+50wxq9ygUeu+VjRRq
	MSc1mmPJPV1WtBT95VKxI5X5e9mqRgWoUzvV0xI8fqH5q2j1TXhOkeDszhUVAxoJwCdITEcjRPnG1
	neZLVlh8UKlIJQ2aW2FX9L5kKmS/6Gb8ugO+4sfCmsOYNaNnSxN99cfp0F688kUR8vLOu7DNBRiMM
	kpoShsQbKIPOgeGH/t0IdsYLgqFiUbukrOBgcbUVN7EVsona8Eoj6JydzViHfQRs416+aUATNylJK
	D9lkoWmJ2kERJuV7CCHI51h6QYRH31B3sCEVJR393Mvn4fF5dOFd/J5U0c1LsOY1p9K4U3MInGgNQ
	VXKKMadg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipsth-0000ZH-Vp; Fri, 10 Jan 2020 11:56:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipss0-0006bW-6a
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 11:54:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 16A13139F;
 Fri, 10 Jan 2020 03:54:26 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE2283F534;
 Fri, 10 Jan 2020 03:54:24 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: "David S . Miller" <davem@davemloft.net>,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Subject: [PATCH 02/14] net: axienet: Propagate failure of DMA descriptor setup
Date: Fri, 10 Jan 2020 11:54:03 +0000
Message-Id: <20200110115415.75683-3-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200110115415.75683-1-andre.przywara@arm.com>
References: <20200110115415.75683-1-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_035428_516298_C9ADF243 
X-CRM114-Status: GOOD (  15.68  )
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

When we fail allocating the DMA buffers in axienet_dma_bd_init(), we
report this error, but carry on with initialisation nevertheless.

This leads to a kernel panic when the driver later wants to send a
packet, as it uses uninitialised data structures.

Make the axienet_device_reset() routine return an error value, as it
contains the DMA buffer initialisation. Make sure we propagate the error
up the chain and eventually fail the driver initialisation, to avoid
relying on non-initialised buffers.

Signed-off-by: Andre Przywara <andre.przywara@arm.com>
---
 .../net/ethernet/xilinx/xilinx_axienet_main.c | 25 +++++++++++++------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
index 20746b801959..97482cf093ce 100644
--- a/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
+++ b/drivers/net/ethernet/xilinx/xilinx_axienet_main.c
@@ -437,9 +437,10 @@ static void axienet_setoptions(struct net_device *ndev, u32 options)
 	lp->options |= options;
 }
 
-static void __axienet_device_reset(struct axienet_local *lp)
+static int __axienet_device_reset(struct axienet_local *lp)
 {
 	u32 timeout;
+
 	/* Reset Axi DMA. This would reset Axi Ethernet core as well. The reset
 	 * process of Axi DMA takes a while to complete as all pending
 	 * commands/transfers will be flushed or completed during this
@@ -455,9 +456,11 @@ static void __axienet_device_reset(struct axienet_local *lp)
 		if (--timeout == 0) {
 			netdev_err(lp->ndev, "%s: DMA reset timeout!\n",
 				   __func__);
-			break;
+			return -ETIMEDOUT;
 		}
 	}
+
+	return 0;
 }
 
 /**
@@ -471,12 +474,15 @@ static void __axienet_device_reset(struct axienet_local *lp)
  * Ethernet core. No separate hardware reset is done for the Axi Ethernet
  * core.
  */
-static void axienet_device_reset(struct net_device *ndev)
+static int axienet_device_reset(struct net_device *ndev)
 {
 	u32 axienet_status;
 	struct axienet_local *lp = netdev_priv(ndev);
+	int ret;
 
-	__axienet_device_reset(lp);
+	ret = __axienet_device_reset(lp);
+	if (ret)
+		return ret;
 
 	lp->max_frm_size = XAE_MAX_VLAN_FRAME_SIZE;
 	lp->options |= XAE_OPTION_VLAN;
@@ -491,9 +497,11 @@ static void axienet_device_reset(struct net_device *ndev)
 			lp->options |= XAE_OPTION_JUMBO;
 	}
 
-	if (axienet_dma_bd_init(ndev)) {
+	ret = axienet_dma_bd_init(ndev);
+	if (ret) {
 		netdev_err(ndev, "%s: descriptor allocation failed\n",
 			   __func__);
+		return ret;
 	}
 
 	axienet_status = axienet_ior(lp, XAE_RCW1_OFFSET);
@@ -518,6 +526,8 @@ static void axienet_device_reset(struct net_device *ndev)
 	axienet_setoptions(ndev, lp->options);
 
 	netif_trans_update(ndev);
+
+	return 0;
 }
 
 /**
@@ -921,8 +931,9 @@ static int axienet_open(struct net_device *ndev)
 	 */
 	mutex_lock(&lp->mii_bus->mdio_lock);
 	axienet_mdio_disable(lp);
-	axienet_device_reset(ndev);
-	ret = axienet_mdio_enable(lp);
+	ret = axienet_device_reset(ndev);
+	if (ret == 0)
+		ret = axienet_mdio_enable(lp);
 	mutex_unlock(&lp->mii_bus->mdio_lock);
 	if (ret < 0)
 		return ret;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
