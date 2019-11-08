Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 852E0F4536
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 12:00:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFQYnaVEe3vciEn+Ge8bghLrEFeO6eZqEYsb/Bs+gMQ=; b=OFR9Ze+wdvi53g
	TR59g8VNaJ+vwkS7svw7IBZ+yZcV93s1sdjhX24craFxIMKLgGmbOy0UHI4dPcVy02bhqDxUCZhM7
	+pEOGcH8Vf6aRHEg8NmxnCpL1iWy9dQCjzj5b7J38LthCgvztmU2HjbX7yWjbXKYpvNX5xuAAPnoC
	JA8/RJtz0aQ/VasnRgg8+Rc59J+36OyIU4tZtQhqY4piFHstsyQe7Dfl+5dERdHggo3euEyr63BG/
	KvXsTONF1vlMKu4ebwKEUrl+qz6DGsCCK6f7eX0ab6rKvFDGbaRG11Wq27/vnkrzwvtO9lDk0uTdB
	zD2GH7BVr34wv0gpPZwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT206-00071l-Ma; Fri, 08 Nov 2019 11:00:22 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1zJ-0005Fo-Ll
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 10:59:37 +0000
X-Originating-IP: 86.206.246.123
Received: from localhost.localdomain
 (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr [86.206.246.123])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id BFC94E001B;
 Fri,  8 Nov 2019 10:59:27 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mark Brown <broonie@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
Subject: [PATCH 5/7] spi: zynq-qspi: Clarify the select chip function
Date: Fri,  8 Nov 2019 11:59:18 +0100
Message-Id: <20191108105920.19014-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108105920.19014-1-miquel.raynal@bootlin.com>
References: <20191108105920.19014-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_025933_886317_E6A1FCF2 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Tudor Ambarus <Tudor.Ambarus@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The code used to assert and de-assert a chip select line is very
complicated for no reason. Simplify the logic by either setting or
resetting the concerned bit, which actually only changes an electrical
state.

Update the comment to reflect that there is no possibility to actually
choose a CS as the default (CS0) will be driven in any case.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/spi/spi-zynq-qspi.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/spi/spi-zynq-qspi.c b/drivers/spi/spi-zynq-qspi.c
index 34c24b2ad3cf..1ea9a4c2eceb 100644
--- a/drivers/spi/spi-zynq-qspi.c
+++ b/drivers/spi/spi-zynq-qspi.c
@@ -51,7 +51,6 @@
 #define ZYNQ_QSPI_CONFIG_BDRATE_MASK	0x00000038 /* Baud Rate Divisor Mask */
 #define ZYNQ_QSPI_CONFIG_CPHA_MASK	0x00000004 /* Clock Phase Control */
 #define ZYNQ_QSPI_CONFIG_CPOL_MASK	0x00000002 /* Clock Polarity Control */
-#define ZYNQ_QSPI_CONFIG_SSCTRL_MASK	0x00000400 /* Slave Select Mask */
 #define ZYNQ_QSPI_CONFIG_FWIDTH_MASK	0x000000C0 /* FIFO width */
 #define ZYNQ_QSPI_CONFIG_MSTREN_MASK	0x00000001 /* Master Mode */
 
@@ -63,7 +62,7 @@
  */
 #define ZYNQ_QSPI_CONFIG_BAUD_DIV_MAX	7 /* Baud rate divisor maximum */
 #define ZYNQ_QSPI_CONFIG_BAUD_DIV_SHIFT	3 /* Baud rate divisor shift */
-#define ZYNQ_QSPI_CONFIG_PCS		10 /* Peripheral Chip Select */
+#define ZYNQ_QSPI_CONFIG_PCS		BIT(10) /* Peripheral Chip Select */
 
 /*
  * QSPI Interrupt Registers bit Masks
@@ -313,16 +312,12 @@ static void zynq_qspi_chipselect(struct spi_device *spi, bool assert)
 	struct zynq_qspi *xqspi = spi_controller_get_devdata(ctlr);
 	u32 config_reg;
 
+	/* Ground the line to assert the CS */
 	config_reg = zynq_qspi_read(xqspi, ZYNQ_QSPI_CONFIG_OFFSET);
-	if (assert) {
-		/* Select the slave */
-		config_reg &= ~ZYNQ_QSPI_CONFIG_SSCTRL_MASK;
-		config_reg |= (((~(BIT(spi->chip_select))) <<
-				ZYNQ_QSPI_CONFIG_PCS) &
-				ZYNQ_QSPI_CONFIG_SSCTRL_MASK);
-	} else {
-		config_reg |= ZYNQ_QSPI_CONFIG_SSCTRL_MASK;
-	}
+	if (assert)
+		config_reg &= ~ZYNQ_QSPI_CONFIG_PCS;
+	else
+		config_reg |= ZYNQ_QSPI_CONFIG_PCS;
 
 	zynq_qspi_write(xqspi, ZYNQ_QSPI_CONFIG_OFFSET, config_reg);
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
