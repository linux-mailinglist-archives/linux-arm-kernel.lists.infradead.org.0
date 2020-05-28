Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06E771E69DF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 20:58:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qMgH4AlLaaJtJdN/bU4Kn1+S0n2clQ/s/H4Z3V/caTw=; b=APD5O7oxYljdI3
	XxYC5FEWd98Um8pAz/WjWM0Jr55qD224/ndAMOO5/d4VRD+dAAwLpbKEfeFJ0JomXvxpxinvPaBBf
	U2hyCHz2N536iihk3xpJvCn/Zexjv4qtfGm0Ge9Usom3yGNwLf1npOWGjNkE2n4iJ1v4g9lc5s+73
	3wJlIFZIKIehmwOZtVytFhbn/6kmlMpHqWmZ/9V/TA+dyKxl7Qw/KiMmA+aUZDkSd5Qkj/lXbBQ8w
	lC6+NPfN1KrAZk0Tq6AW/nqrQXimojWKSQUEdP+nR91YEpRydd0AmmHry6spmgX1PTT38PRTB4jHQ
	c0AEg+kXHOeMoPkrTI+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeNjZ-0005nX-Ja; Thu, 28 May 2020 18:58:29 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeNjR-0005my-8b; Thu, 28 May 2020 18:58:22 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3F458AB5C;
 Thu, 28 May 2020 18:58:16 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Mark Brown <broonie@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH] spi: bcm2835: Enable shared interrupt support
Date: Thu, 28 May 2020 20:58:04 +0200
Message-Id: <20200528185805.28991-1-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_115821_451172_7D244B12 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Martin Sperl <kernel@martin.sperl.org>, linux-kernel@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Martin Sperl <kernel@martin.sperl.org>

bcm2711, Rasberry Pi 4's SoC, shares one interrupt for multiple
instances of the bcm2835 SPI controller. So this enables shared
interrupt support for them.

The early bail out in the interrupt routine avoids messing with buffers
of transfers being done by other means. Otherwise, the driver can handle
receiving interrupts asserted by other controllers during an IRQ based
transfer.

Signed-off-by: Martin Sperl <kernel@martin.sperl.org>
Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---
 drivers/spi/spi-bcm2835.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-bcm2835.c b/drivers/spi/spi-bcm2835.c
index 11c235879bb7..ca1085c812f2 100644
--- a/drivers/spi/spi-bcm2835.c
+++ b/drivers/spi/spi-bcm2835.c
@@ -379,6 +379,10 @@ static irqreturn_t bcm2835_spi_interrupt(int irq, void *dev_id)
 	if (bs->tx_len && cs & BCM2835_SPI_CS_DONE)
 		bcm2835_wr_fifo_blind(bs, BCM2835_SPI_FIFO_SIZE);
 
+	/* check if we got interrupt enabled */
+	if (!(bcm2835_rd(bs, BCM2835_SPI_CS) & BCM2835_SPI_CS_INTR))
+		return IRQ_NONE;
+
 	/* Read as many bytes as possible from FIFO */
 	bcm2835_rd_fifo(bs);
 	/* Write as many bytes as possible to FIFO */
@@ -1340,8 +1344,8 @@ static int bcm2835_spi_probe(struct platform_device *pdev)
 	bcm2835_wr(bs, BCM2835_SPI_CS,
 		   BCM2835_SPI_CS_CLEAR_RX | BCM2835_SPI_CS_CLEAR_TX);
 
-	err = devm_request_irq(&pdev->dev, bs->irq, bcm2835_spi_interrupt, 0,
-			       dev_name(&pdev->dev), ctlr);
+	err = devm_request_irq(&pdev->dev, bs->irq, bcm2835_spi_interrupt,
+			       IRQF_SHARED, dev_name(&pdev->dev), ctlr);
 	if (err) {
 		dev_err(&pdev->dev, "could not request IRQ: %d\n", err);
 		goto out_dma_release;
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
