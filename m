Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2728BF4DCD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 15:09:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CV/8N7L1Vb9sKgRnOV+GuR0WFheeOv3y4O82jwuquKo=; b=fIGofXQAsXox3e
	uoPa5p0m6d4ELiGR/sgmYPipPmNuv8Xa8yIw2G7alLb88p/BiFt/LTqh5tyWoeUTT3YJsww5lgHJf
	qfwSF7ydqb5a2Emkg9HeMo1XMJioFONC+01xSir+zt+SM4HGyE/NGSG+YcJF/yQvN9TEqYj5VZ0C3
	CMjom0pNahrQxrlqjBdJXJ4OTtmoCxgqL1iZuuFYptreWBp/hCW0GcNsPtJbv5k6aD7/pagkTBcWV
	lq9fZTbExMf6YrxYThoSWCMs+SU6NG5mbLF6iWVEtsG5wn5VQ0gvy8gc/nLsyepzf4aTIR2eKZk0a
	LAiSHEtramvQ8HsHiPdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT4wg-0007Au-DP; Fri, 08 Nov 2019 14:09:02 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT4w5-0006mg-4z
 for linux-arm-kernel@bombadil.infradead.org; Fri, 08 Nov 2019 14:08:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VM9Rv9IvlmFTnqeCRdH8Y0kTyx4ijO/hKUdqbUgpIqw=; b=JaVhXfOIQG2+TF5W+JCJIrOrGV
 nXeK0Hd204Fz1TyWEVneddYNfeX3wkImkkqEdsWwhLW0gIk6lKgfow4ai/UJS5HaKLbl4xFDdg9ND
 IoS2+rHeEOth4axIUBKWpttNXql5aQwbZX8usO/NhdDZJOaAfJMKkcaqyP6V5oEgr4fkEuMyw0IrI
 nywcBTHBCTwxp4dGAe1r/CsJMaHy3gsIziO464CwoeFMg0UC8RE4CAdbNn44UHO2KESI9utlXaPbl
 kGgAw9dKTTgZJ2Hppaa7KGPK760TJY/iazts2njQxScAY0LeuR01RZwAySNWd5m+i8I5BVBkJW/x+
 iqsWIBhg==;
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT4w1-00044x-Ow
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 14:08:23 +0000
X-Originating-IP: 86.206.246.123
Received: from localhost.localdomain
 (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr [86.206.246.123])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id BB09D2000F;
 Fri,  8 Nov 2019 14:07:51 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mark Brown <broonie@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
Subject: [PATCH v2 6/7] spi: zynq-qspi: Do the actual hardware initialization
 later in the probe
Date: Fri,  8 Nov 2019 15:07:43 +0100
Message-Id: <20191108140744.1734-7-miquel.raynal@bootlin.com>
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

Supporting more than one CS will need some tweaking of the linear
configuration register which is (rightfully) initialized in the
hardware initialization helper. The extra initialization needs the
knowledge of the actual number of CS, which is retrieved by reading
the value of the num-cs DT property.

As the initialization helper is called pretty early and might be
called much later in the probe without side effect, let's delay it a
bit so that the number of CS will be available when running this
helper. This way, adding support for multiple CS lines in a next patch
will be eased.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/spi/spi-zynq-qspi.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-zynq-qspi.c b/drivers/spi/spi-zynq-qspi.c
index 9adfcc66b02b..07d361501aa0 100644
--- a/drivers/spi/spi-zynq-qspi.c
+++ b/drivers/spi/spi-zynq-qspi.c
@@ -658,9 +658,6 @@ static int zynq_qspi_probe(struct platform_device *pdev)
 		goto clk_dis_pclk;
 	}
 
-	/* QSPI controller initializations */
-	zynq_qspi_init_hw(xqspi);
-
 	xqspi->irq = platform_get_irq(pdev, 0);
 	if (xqspi->irq <= 0) {
 		ret = -ENXIO;
@@ -691,6 +688,10 @@ static int zynq_qspi_probe(struct platform_device *pdev)
 	ctlr->setup = zynq_qspi_setup_op;
 	ctlr->max_speed_hz = clk_get_rate(xqspi->refclk) / 2;
 	ctlr->dev.of_node = np;
+
+	/* QSPI controller initializations */
+	zynq_qspi_init_hw(xqspi);
+
 	ret = devm_spi_register_controller(&pdev->dev, ctlr);
 	if (ret) {
 		dev_err(&pdev->dev, "spi_register_master failed\n");
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
