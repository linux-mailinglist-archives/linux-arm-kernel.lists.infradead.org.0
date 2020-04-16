Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6160D1ACEE9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 19:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0QPvMhr369NFl2w3EV45LrPu7Fb5eUdFhNc+dKmVxo=; b=ds4BaPraLpikp9
	4g5yW+WNVesrYIGgFnoW+bUFdLQ9QvHSICc2kLNqfmr8r3lts0CHx+ns5Al/TVJzLZoJo911SYXrA
	FHMMIbF4eOvdluDZkC7AuObyAqx+PPUtW1FvQIjUCeIORYN65Mfn3MMreVCEU2vV5pii92ZK4b/sn
	/FuR1Aie2bbcJuJvAaPesfjaExFvkN5Kk/PZzoy6FlXTs+knI4cTBO/tQlvdFtAylCHCjV0ouYarq
	5cWPJvUkavvetPItBGOOjdekOmOxyvOHwIgzbMLBUhSkKS2pB1L4fNHAN0G7QMnATNBuNMbR9B34e
	79Xt8wcSHwlfrHT5dnuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP8bG-0008UY-TI; Thu, 16 Apr 2020 17:46:54 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP8a3-0007VM-Eu
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 17:45:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587059139; x=1618595139;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1gQFYv/wxSy8NSQledSt8Au4CSTxB96l8SvfBihusHg=;
 b=vFrHrW6uwgd302ihByUcOevlKNX6UFTK+fGdSAqpXHkrG+unkaHnoHsg
 vNDGSQlgMO4Zbj+RIjFqKmF3t+N6ctgiipBIfaF+BtFbfvQ0/QcrI5sTO
 JL0+wwe1+pqvxxGg4JsLPvS45CY4J/c0P7amxFjQZvPQ97ahedXL2rLr3
 /r6Hn4M2N8niLMBYE87VY78RdMOFvyc6UnJxVey2DJjLQrnOYQaYGUT2Z
 2qO5TVHJvePkfv83/dQf3k6yZ9wFgr/MN24yLWxGOD1+QLt8nBNJg19ai
 YUIQYFJH11JnCRuDHcHX+llD5ChByUixINDDr7kDX2osF8aEEHahQytpU A==;
IronPort-SDR: RRv8XikDocCRNpPit1Rw49y7XIb4+YXQS9+HbZbRBEJhq96QoM2khX5iIy9p12gHeMfM79V9IC
 hl+rFpxmjIj9qTZN8ZKybNIdRrqQtwu5jeXr3W4uN2ViJZehgQOWXpOocckcnI02mB/FpLIVCh
 A97IOZcmGVuCOLh5As/jdxzJh3HHFRNSZrg1pKxe9NU7i4a8lOXaTJtyKBy/kHFQbtDJhG776h
 4Yx+XgOIcLpWx+CC6i3ZfjpRpsGKKBs/FBxCn+/3PnGhzSJbIqc9fHb7undzg7eh9LKEkJIW7u
 rKQ=
X-IronPort-AV: E=Sophos;i="5.72,391,1580799600"; d="scan'208";a="76173957"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Apr 2020 10:45:34 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 16 Apr 2020 10:45:38 -0700
Received: from ness.corp.atmel.com (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Thu, 16 Apr 2020 10:45:27 -0700
From: <nicolas.ferre@microchip.com>
To: <linux-arm-kernel@lists.infradead.org>, <netdev@vger.kernel.org>, "Claudiu
 Beznea" <claudiu.beznea@microchip.com>, <harini.katakam@xilinx.com>
Subject: [PATCH 5/5] net: macb: Add WoL interrupt support for MACB type of
 Ethernet controller
Date: Thu, 16 Apr 2020 19:44:32 +0200
Message-ID: <3c9db82da283abd7faf248985d21155a48554bdf.1587058078.git.nicolas.ferre@microchip.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1587058078.git.nicolas.ferre@microchip.com>
References: <cover.1587058078.git.nicolas.ferre@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_104539_550450_75117BB0 
X-CRM114-Status: GOOD (  11.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 f.fainelli@gmail.com, sergio.prado@e-labworks.com, pthombar@cadence.com,
 antoine.tenart@bootlin.com, michal.simek@xilinx.com,
 linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Nicolas Ferre <nicolas.ferre@microchip.com>

Handle the Wake-on-Lan interrupt for the Cadence MACB Ethernet
controller.
As we do for the GEM version, we handle of WoL interrupt in a
specialized interrupt handler for MACB version that is positionned
just between suspend() and resume() calls.

Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
---
 drivers/net/ethernet/cadence/macb_main.c | 38 +++++++++++++++++++++++-
 1 file changed, 37 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
index 71e6afbdfb47..6d535e3e803c 100644
--- a/drivers/net/ethernet/cadence/macb_main.c
+++ b/drivers/net/ethernet/cadence/macb_main.c
@@ -1513,6 +1513,34 @@ static void macb_tx_restart(struct macb_queue *queue)
 	macb_writel(bp, NCR, macb_readl(bp, NCR) | MACB_BIT(TSTART));
 }
 
+static irqreturn_t macb_wol_interrupt(int irq, void *dev_id)
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
+	if (status & MACB_BIT(WOL)) {
+		queue_writel(queue, IDR, MACB_BIT(WOL));
+		macb_writel(bp, WOL, 0);
+		netdev_vdbg(bp->dev, "MACB WoL: queue = %u, isr = 0x%08lx\n",
+			    (unsigned int)(queue - bp->queues),
+			    (unsigned long)status);
+		if (bp->caps & MACB_CAPS_ISR_CLEAR_ON_WRITE)
+			queue_writel(queue, ISR, MACB_BIT(WOL));
+	}
+
+	spin_unlock(&bp->lock);
+
+	return IRQ_HANDLED;
+}
+
 static irqreturn_t gem_wol_interrupt(int irq, void *dev_id)
 {
 	struct macb_queue *queue = dev_id;
@@ -4585,8 +4613,8 @@ static int __maybe_unused macb_suspend(struct device *dev)
 		/* Change interrupt handler and
 		 * Enable WoL IRQ on queue 0
 		 */
+		devm_free_irq(dev, bp->queues[0].irq, bp->queues);
 		if (macb_is_gem(bp)) {
-			devm_free_irq(dev, bp->queues[0].irq, bp->queues);
 			err = devm_request_irq(dev, bp->queues[0].irq, gem_wol_interrupt,
 					       IRQF_SHARED, netdev->name, bp->queues);
 			if (err) {
@@ -4598,6 +4626,14 @@ static int __maybe_unused macb_suspend(struct device *dev)
 			queue_writel(bp->queues, IER, GEM_BIT(WOL));
 			gem_writel(bp, WOL, MACB_BIT(MAG));
 		} else {
+			err = devm_request_irq(dev, bp->queues[0].irq, macb_wol_interrupt,
+					       IRQF_SHARED, netdev->name, bp->queues);
+			if (err) {
+				dev_err(dev,
+					"Unable to request IRQ %d (error %d)\n",
+					bp->queues[0].irq, err);
+				return err;
+			}
 			queue_writel(bp->queues, IER, MACB_BIT(WOL));
 			macb_writel(bp, WOL, MACB_BIT(MAG));
 		}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
