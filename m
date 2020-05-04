Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DDE1C3BB1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 15:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9pVny6b87GrA7XgICaoyfv3OkZ0VVSmlSeGKE5SXb1Q=; b=SyZF4cv+Fo2OD8
	lugricUZvjGESOQPmkX8p5OGmL5lpmF0SWDCvN2bLajjHVyf45vVK0r4tWlMN79G1RZ4PfG/tNTAP
	ajL6+B0BixWVLcKlHJjOd9AA67ss1qTf1GhsJ1ROJkVrHnqocpfqMLrfP9DD1Vp0POCSoHaou1Pjm
	+jHq8W+x+weLDFxYGuuF4hO89fUemB6W3wBuCzHkXtp7/YA8Z3u4QXfr8KYZhdjvzWmKApxpCDbtR
	BZM9Tb+x4934Cdn46pL9hDFvsRXroeJfWkSFL8IAGMsZHUIbOMKCzx9g16i+YWNcvmUgLyteCAgl/
	3cuVU2wb4EbtnbGiyHCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVbSf-0000Ei-Of; Mon, 04 May 2020 13:48:45 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVbRF-0007HX-0h
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 13:47:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588600036; x=1620136036;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q6EJYEgo6TTkdEUEUvJ8NkL7PVRlN42+i6jsPqyUwcI=;
 b=vg/zj4HEOV3c3F9Y0cvOk6O/5/PQ0/O4X+/SeKWn/nhAdIIOGfJ4teGi
 SeN9SMZk0cWPnUN9Q5A2S5+mffpL4ers50inwF9x++ziqr22blDCTnlmP
 xaeV/S85vkJCAzXZc/0A2w0lw+oYmb6O30W5zs5rXOC6Hz32ge5yxsfDx
 xuy15FGRunMKp33h96e17IAUBOAfrPmqX4qlvM7N3qw6f2xRiAt1TNM9z
 N09ckoi/rWTJ1r9xt2Nw1u5bAuM9Q/9yPsG7YqVpC13skyW4cu5uDG/eP
 xmbTHPiCER8NcM95YACxtzGADwq8iYUkVTdMLc7VXlNOEsQQ2Qu7YIJBK w==;
IronPort-SDR: zQW9TDcKhjP9IpJCWMuNK9Tpy8ncuBujb5VFiXjQkc2uRxnJn63tuQQwFLxSUAwm3o4WOjeAGA
 i/0tXcyYk0ujZW9MTvKQZIXxd41crW3FcfLotOTUV23sPHie3Th7s6bJkwR2C3KZ0tA9Yty51Z
 abdPucRHexiBmkpdI3iQC0p9/N9IP3Gw5sZV9SRMJWsHAwYpR2mxk9fQzu5qDLkoUm6zP1orO8
 xSCX7gec1uojnHMKDfdTR3qmi261UNsGsGJ/fPcgdYTpM6tkRl54tT4Hq6rzuAMNAs2tJ79OPE
 OnY=
X-IronPort-AV: E=Sophos;i="5.73,352,1583218800"; d="scan'208";a="74135793"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 May 2020 06:46:49 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 May 2020 06:46:50 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 4 May 2020 06:46:46 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH v3 6/7] net: macb: WoL support for GEM type of Ethernet
 controller
Date: Mon, 4 May 2020 15:44:21 +0200
Message-ID: <953a18aa4eaed3637050422156cb6ffbe6554156.1588597759.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.1588597759.git.nicolas.ferre@microchip.com>
References: <cover.1588597759.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_064717_243780_2F64677A 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: andrew@lunn.ch, Alexandre Belloni <alexandre.belloni@bootlin.com>,
 f.fainelli@gmail.com, michal.simek@xilinx.com, antoine.tenart@bootlin.com,
 linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nicolas Ferre <nicolas.ferre@microchip.com>

Adapt the Wake-on-Lan feature to the Cadence GEM Ethernet controller.
This controller has different register layout and cannot be handled by
previous code.
We disable completely interrupts on all the queues but the queue 0.
Handling of WoL interrupt is done in another interrupt handler
positioned depending on the controller version used, just between
suspend() and resume() calls.
It allows to lower pressure on the generic interrupt hot path by
removing the need to handle 2 tests for each IRQ: the first figuring out
the controller revision, the second for actually knowing if the WoL bit
is set.

Queue management in suspend()/resume() functions inspired from RFC patch
by Harini Katakam <harinik@xilinx.com>, thanks!

Cc: Claudiu Beznea <claudiu.beznea@microchip.com>
Cc: Harini Katakam <harini.katakam@xilinx.com>
Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
Changes in v3:
- In macb_resume(), move to a more in-depth re-configuration of the controller
  even on the non-WoL path in order to accept deeper sleep states.
- this ends up having a phylink_stop()/phylink_start() for each of the
  WoL/!WoL paths
- In macb_resume(), keep setting the MPE bit in NCR register which is needed in
  case of deep power saving mode used
- Tests done in "standby" as well as our deeper Power Management mode:
  Backup Self-Refresh (BSR)

Changes in v2:
- Addition of pm_wakeup_event() in WoL IRQ
- In macb_resume(), removal of setting the MPE bit in NCR register which is not
  needed in any case: IP is reset on the usual path and kept alive if WoL is used
- In macb_resume(), complete reset of the controller is kept only for non-WoL
  case. For the WoL case, we only replace the usual IRQ handler.


 drivers/net/ethernet/cadence/macb.h      |   3 +
 drivers/net/ethernet/cadence/macb_main.c | 141 +++++++++++++++++++----
 2 files changed, 122 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/cadence/macb.h b/drivers/net/ethernet/cadence/macb.h
index ab827fb4b6b9..4f1b41569260 100644
--- a/drivers/net/ethernet/cadence/macb.h
+++ b/drivers/net/ethernet/cadence/macb.h
@@ -90,6 +90,7 @@
 #define GEM_SA3T		0x009C /* Specific3 Top */
 #define GEM_SA4B		0x00A0 /* Specific4 Bottom */
 #define GEM_SA4T		0x00A4 /* Specific4 Top */
+#define GEM_WOL			0x00b8 /* Wake on LAN */
 #define GEM_EFTSH		0x00e8 /* PTP Event Frame Transmitted Seconds Register 47:32 */
 #define GEM_EFRSH		0x00ec /* PTP Event Frame Received Seconds Register 47:32 */
 #define GEM_PEFTSH		0x00f0 /* PTP Peer Event Frame Transmitted Seconds Register 47:32 */
@@ -396,6 +397,8 @@
 #define MACB_PDRSFT_SIZE	1
 #define MACB_SRI_OFFSET		26 /* TSU Seconds Register Increment */
 #define MACB_SRI_SIZE		1
+#define GEM_WOL_OFFSET		28 /* Enable wake-on-lan interrupt */
+#define GEM_WOL_SIZE		1
 
 /* Timer increment fields */
 #define MACB_TI_CNS_OFFSET	0
diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index b42831966ffa..be8454a8535b 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -1513,6 +1513,35 @@ static void macb_tx_restart(struct macb_queue *queue)
 	macb_writel(bp, NCR, macb_readl(bp, NCR) | MACB_BIT(TSTART));
 }
 
+static irqreturn_t gem_wol_interrupt(int irq, void *dev_id)
+{
+	struct macb_queue *queue = dev_id;
+	struct macb *bp = queue->bp;
+	u32 status;
+
+	status = queue_readl(queue, ISR);
+
+	if (unlikely(!status))
+		return IRQ_NONE;
+
+	spin_lock(&bp->lock);
+
+	if (status & GEM_BIT(WOL)) {
+		queue_writel(queue, IDR, GEM_BIT(WOL));
+		gem_writel(bp, WOL, 0);
+		netdev_vdbg(bp->dev, "GEM WoL: queue = %u, isr = 0x%08lx\n",
+			    (unsigned int)(queue - bp->queues),
+			    (unsigned long)status);
+		if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
+			queue_writel(queue, ISR, GEM_BIT(WOL));
+		pm_wakeup_event(&bp->pdev->dev, 0);
+	}
+
+	spin_unlock(&bp->lock);
+
+	return IRQ_HANDLED;
+}
+
 static irqreturn_t macb_interrupt(int irq, void *dev_id)
 {
 	struct macb_queue *queue = dev_id;
@@ -3306,6 +3335,8 @@ static const struct ethtool_ops macb_ethtool_ops = {
 static const struct ethtool_ops gem_ethtool_ops = {
 	.get_regs_len		= macb_get_regs_len,
 	.get_regs		= macb_get_regs,
+	.get_wol		= macb_get_wol,
+	.set_wol		= macb_set_wol,
 	.get_link		= ethtool_op_get_link,
 	.get_ts_info		= macb_get_ts_info,
 	.get_ethtool_stats	= gem_get_ethtool_stats,
@@ -4534,20 +4565,54 @@ static int __maybe_unused macb_suspend(struct device *dev)
 	struct macb_queue *queue = bp->queues;
 	unsigned long flags;
 	unsigned int q;
+	int err;
 
 	if (!netif_running(netdev))
 		return 0;
 
 	if (bp->wol & MACB_WOL_ENABLED) {
-		macb_writel(bp, IER, MACB_BIT(WOL));
-		macb_writel(bp, WOL, MACB_BIT(MAG));
-		enable_irq_wake(bp->queues[0].irq);
-		netif_device_detach(netdev);
-	} else {
-		netif_device_detach(netdev);
+		spin_lock_irqsave(&bp->lock, flags);
+		/* Flush all status bits */
+		macb_writel(bp, TSR, -1);
+		macb_writel(bp, RSR, -1);
 		for (q = 0, queue = bp->queues; q < bp->num_queues;
-		     ++q, ++queue)
-			napi_disable(&queue->napi);
+		     ++q, ++queue) {
+			/* Disable all interrupts */
+			queue_writel(queue, IDR, -1);
+			queue_readl(queue, ISR);
+			if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
+				queue_writel(queue, ISR, -1);
+		}
+		/* Change interrupt handler and
+		 * Enable WoL IRQ on queue 0
+		 */
+		if (macb_is_gem(bp)) {
+			devm_free_irq(dev, bp->queues[0].irq, bp->queues);
+			err = devm_request_irq(dev, bp->queues[0].irq, gem_wol_interrupt,
+					       IRQF_SHARED, netdev->name, bp->queues);
+			if (err) {
+				dev_err(dev,
+					"Unable to request IRQ %d (error %d)\n",
+					bp->queues[0].irq, err);
+				return err;
+			}
+			queue_writel(bp->queues, IER, GEM_BIT(WOL));
+			gem_writel(bp, WOL, MACB_BIT(MAG));
+		} else {
+			queue_writel(bp->queues, IER, MACB_BIT(WOL));
+			macb_writel(bp, WOL, MACB_BIT(MAG));
+		}
+		spin_unlock_irqrestore(&bp->lock, flags);
+
+		enable_irq_wake(bp->queues[0].irq);
+	}
+
+	netif_device_detach(netdev);
+	for (q = 0, queue = bp->queues; q < bp->num_queues;
+	     ++q, ++queue)
+		napi_disable(&queue->napi);
+
+	if (!(bp->wol & MACB_WOL_ENABLED)) {
 		rtnl_lock();
 		phylink_stop(bp->phylink);
 		rtnl_unlock();
@@ -4575,7 +4640,9 @@ static int __maybe_unused macb_resume(struct device *dev)
 	struct net_device *netdev = dev_get_drvdata(dev);
 	struct macb *bp = netdev_priv(netdev);
 	struct macb_queue *queue = bp->queues;
+	unsigned long flags;
 	unsigned int q;
+	int err;
 
 	if (!netif_running(netdev))
 		return 0;
@@ -4584,29 +4651,59 @@ static int __maybe_unused macb_resume(struct device *dev)
 		pm_runtime_force_resume(dev);
 
 	if (bp->wol & MACB_WOL_ENABLED) {
-		macb_writel(bp, IDR, MACB_BIT(WOL));
-		macb_writel(bp, WOL, 0);
-		disable_irq_wake(bp->queues[0].irq);
-	} else {
-		macb_writel(bp, NCR, MACB_BIT(MPE));
-
-		if (netdev->hw_features & NETIF_F_NTUPLE)
-			gem_writel_n(bp, ETHT, SCRT2_ETHT, bp->pm_data.scrt2);
+		spin_lock_irqsave(&bp->lock, flags);
+		/* Disable WoL */
+		if (macb_is_gem(bp)) {
+			queue_writel(bp->queues, IDR, GEM_BIT(WOL));
+			gem_writel(bp, WOL, 0);
+		} else {
+			queue_writel(bp->queues, IDR, MACB_BIT(WOL));
+			macb_writel(bp, WOL, 0);
+		}
+		/* Clear ISR on queue 0 */
+		queue_readl(bp->queues, ISR);
+		if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
+			queue_writel(bp->queues, ISR, -1);
+		/* Replace interrupt handler on queue 0 */
+		devm_free_irq(dev, bp->queues[0].irq, bp->queues);
+		err = devm_request_irq(dev, bp->queues[0].irq, macb_interrupt,
+				       IRQF_SHARED, netdev->name, bp->queues);
+		if (err) {
+			dev_err(dev,
+				"Unable to request IRQ %d (error %d)\n",
+				bp->queues[0].irq, err);
+			return err;
+		}
+		spin_unlock_irqrestore(&bp->lock, flags);
 
-		if (!(bp->caps & MACB_CAPS_USRIO_DISABLED))
-			macb_or_gem_writel(bp, USRIO, bp->pm_data.usrio);
+		disable_irq_wake(bp->queues[0].irq);
 
-		for (q = 0, queue = bp->queues; q < bp->num_queues;
-		     ++q, ++queue)
-			napi_enable(&queue->napi);
+		/* Now make sure we disable phy before moving
+		 * to common restore path
+		 */
 		rtnl_lock();
-		phylink_start(bp->phylink);
+		phylink_stop(bp->phylink);
 		rtnl_unlock();
 	}
 
+	for (q = 0, queue = bp->queues; q < bp->num_queues;
+	     ++q, ++queue)
+		napi_enable(&queue->napi);
+
+	if (netdev->hw_features & NETIF_F_NTUPLE)
+		gem_writel_n(bp, ETHT, SCRT2_ETHT, bp->pm_data.scrt2);
+
+	if (!(bp->caps & MACB_CAPS_USRIO_DISABLED))
+		macb_or_gem_writel(bp, USRIO, bp->pm_data.usrio);
+
+	macb_writel(bp, NCR, MACB_BIT(MPE));
 	macb_init_hw(bp);
 	macb_set_rx_mode(netdev);
 	macb_restore_features(bp);
+	rtnl_lock();
+	phylink_start(bp->phylink);
+	rtnl_unlock();
+
 	netif_device_attach(netdev);
 	if (bp->ptp_info)
 		bp->ptp_info->ptp_init(netdev);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
