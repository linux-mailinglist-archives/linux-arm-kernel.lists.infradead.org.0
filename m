Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19246F4DD1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:09:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GF9NQVFHztkZEzrzIFmW5SkDrb0R/QrvtBz4/J37ttc=; b=X1ejwHccTOQoVy
	bBqct/ZTvBRP8l3G53Znz5K3UUxSTetSCHxfAr3uY3CEeh0JPbuZ8ljCrym0sik7dGvCEr24xAh/J
	5pTKpi4gMzKEJFPegEtIzsIdZgQwJemzKhy8aXszAdJlVJ9Vg9+L7AqdHlIZYsfTkr5e0nRJOyf0F
	Tg1ifIHzu/1v+K6cmJiH4DP8rLYIj8oXrWIJEY8u8F5ckQfFlmeTD2q1VpvfoimzpIb/bPtzLYGY8
	67MW+3dge/VKzXbeekDNLT2y29fve4mz+Xzb2IP4Xy1CXEe9Dz/VPbMQ53giAIpMTWcOCzp5r3DIF
	n7EEiiOum3qjGRXGCA2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT4xE-0007pV-0w; Fri, 08 Nov 2019 14:09:36 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT4w6-0006mz-Ni
 for linux-arm-kernel@bombadil.infradead.org; Fri, 08 Nov 2019 14:08:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dIRbBYG71cZZFw4UcRztvJ+2vqxn76RUZDnbysl16dw=; b=q4gWGahQIMLw7S7FQeOfyXMHSS
 TIhwJTehIpP96Jm98c8d0vUx4vATJibIw7nsyNxYIJNSrRMeBm0msmHzk2ZXeAoKiANxK6nsAj2zs
 Zk+Pn3aKmBKSUrOQMrrW3sQEj0DQ8l0W6YgDmWmU8zWYVNe0kN5YsyJPoCARNqg8xfLckCanc4uyz
 J3CBXVWmNFlC+TtiVz4J7F/HDr4pINvlmCQq1jkkwPXUr7OZno/4wA+F0Iw04K4MxtULKgl/yt4UJ
 pxqGKvvY8hy3pCFJK1lcRGeh9BfkvdUtFuQGidWjItCUBdaqzwZwBPubK6ADuRoGh7B/vcUn1qXiY
 X4musVMQ==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT4w4-00044w-AD
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:08:25 +0000
X-Originating-IP: 86.206.246.123
Received: from localhost.localdomain
 (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr [86.206.246.123])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id D7FE920010;
 Fri,  8 Nov 2019 14:07:50 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mark Brown <broonie@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
Subject: [PATCH v2 5/7] spi: zynq-qspi: Clarify the select chip function
Date: Fri,  8 Nov 2019 15:07:42 +0100
Message-Id: <20191108140744.1734-6-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108140744.1734-1-miquel.raynal@bootlin.com>
References: <20191108140744.1734-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
index 1151443ec830..9adfcc66b02b 100644
--- a/drivers/spi/spi-zynq-qspi.c
+++ b/drivers/spi/spi-zynq-qspi.c
@@ -51,7 +51,6 @@
 #define ZYNQ_QSPI_CONFIG_BDRATE_MASK	GENMASK(5, 3) /* Baud Rate Mask */
 #define ZYNQ_QSPI_CONFIG_CPHA_MASK	BIT(2) /* Clock Phase Control */
 #define ZYNQ_QSPI_CONFIG_CPOL_MASK	BIT(1) /* Clock Polarity Control */
-#define ZYNQ_QSPI_CONFIG_SSCTRL_MASK	BIT(10) /* Slave Select Mask */
 #define ZYNQ_QSPI_CONFIG_FWIDTH_MASK	GENMASK(7, 6) /* FIFO width */
 #define ZYNQ_QSPI_CONFIG_MSTREN_MASK	BIT(0) /* Master Mode */
 
@@ -63,7 +62,7 @@
  */
 #define ZYNQ_QSPI_CONFIG_BAUD_DIV_MAX	GENMASK(2, 0) /* Baud rate maximum */
 #define ZYNQ_QSPI_CONFIG_BAUD_DIV_SHIFT	3 /* Baud rate divisor shift */
-#define ZYNQ_QSPI_CONFIG_PCS		10 /* Peripheral Chip Select */
+#define ZYNQ_QSPI_CONFIG_PCS		BIT(10) /* Peripheral Chip Select */
 
 /*
  * QSPI Interrupt Registers bit Masks
@@ -288,16 +287,12 @@ static void zynq_qspi_chipselect(struct spi_device *spi, bool assert)
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
