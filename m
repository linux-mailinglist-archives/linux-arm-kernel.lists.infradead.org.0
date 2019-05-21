Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEF62520B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 16:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wh9EwFSlq1EnGytsVYt4ov3Dippch3jxb5hcE4AiAE=; b=kigVm0JXju6qbp
	uxLsrrUVGFAZ7IK86cN9fYY0emaszhZ715rwMo3tn28KLTskpsZadFW54EmpOPyCKtbqgYjCGGOsY
	baqNfbfXzlYErsWQBRDXe4vMKkpv0los33+d04t1zETDk6AWg7ubeaR0NBFPQPhH2idPcshw0vGXP
	2DpGm6rbbkUT3xtEDrCH+VqtezayLBNmP6qeEuhR4Quwt+VXHnwlSZVo8mcE8epOYIGP/P0GwDNUD
	W4QHRSIuPLrQCFLFAwrQVJ14hhqfFfmWt8fMBSefeyb4ZdGp0/FX2dERBVqZkVUMg5oNKLdFL0C0F
	9jSRvfpk3DIOA5TDCcNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5nL-0000pc-89; Tue, 21 May 2019 14:31:11 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5n7-0000fE-Np
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 14:31:01 +0000
X-Originating-IP: 90.88.22.185
Received: from localhost.localdomain
 (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr [90.88.22.185])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 845F224001D;
 Tue, 21 May 2019 14:30:47 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Gregory Clement <gregory.clement@bootlin.com>,
 Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Jens Axboe <axboe@kernel.dk>, Hans de Goede <hdegoede@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <marc.zyngier@arm.com>
Subject: [PATCH v4 01/10] ata: libahci: Ensure the host interrupt status bits
 are cleared
Date: Tue, 21 May 2019 16:30:14 +0200
Message-Id: <20190521143023.31810-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190521143023.31810-1-miquel.raynal@bootlin.com>
References: <20190521143023.31810-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_073058_159332_B34F8D8E 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Baruch Siach <baruch@tkos.co.il>,
 Antoine Tenart <antoine.tenart@bootlin.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Nadav Haklai <nadavh@marvell.com>, linux-ide@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ahci_multi_irqs_intr_hard() is going to be used as interrupt handler
to support SATA per-port interrupts. The current logic is to check and
clear the SATA port interrupt status register only. To avoid spurious
IRQs and interrupt storms, it will be needed to clear the port
interrupt bit in the host interrupt status register as well.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/ata/libahci.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/ata/libahci.c b/drivers/ata/libahci.c
index 692782dddc0f..9db6f488db59 100644
--- a/drivers/ata/libahci.c
+++ b/drivers/ata/libahci.c
@@ -1912,7 +1912,10 @@ static void ahci_port_intr(struct ata_port *ap)
 static irqreturn_t ahci_multi_irqs_intr_hard(int irq, void *dev_instance)
 {
 	struct ata_port *ap = dev_instance;
+	struct ata_host *host = ap->host;
+	struct ahci_host_priv *hpriv = host->private_data;
 	void __iomem *port_mmio = ahci_port_base(ap);
+	void __iomem *mmio = hpriv->mmio;
 	u32 status;
 
 	VPRINTK("ENTER\n");
@@ -1924,6 +1927,8 @@ static irqreturn_t ahci_multi_irqs_intr_hard(int irq, void *dev_instance)
 	ahci_handle_port_interrupt(ap, port_mmio, status);
 	spin_unlock(ap->lock);
 
+	writel(BIT(ap->port_no), mmio + HOST_IRQ_STAT);
+
 	VPRINTK("EXIT\n");
 
 	return IRQ_HANDLED;
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
