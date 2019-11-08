Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF05F4533
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 12:00:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBIzE1LK98B4CILt/V7IRiUQZll4g1j4hDWaFWW6SWk=; b=L/vZ1zDpAaC+sP
	WdC1cnw3MAJ3LkBQZO+LOu2qAjEeTThOA6pfb0ImSb5N6tJ/4oEZPz9kFKmPcPUN4PVY2LT1Yg/8q
	QI8oIx3RxawaoVyf0ycdvj8RePp6tNFfbYbc+/SQ/dq0oaYSZUk5SjSCtOvffCby3itqmfB6b8iH3
	Hofu97JoBfpQWk5OMbRgvtLjOLcQ+AMq/Gc7VaJ+GTerdk4JKVGbbbUk4GK/rfalT1i/ohd32Z+P+
	GTMdgWPv1jOeUxiHQF/gGMeGeTwzEefA2batKbx5VPze9TfeP3Enw9UEAk12QTh60yJfYM31foA5Q
	vfTPv1FL3n66KgAtbYrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT1zo-0005RF-QM; Fri, 08 Nov 2019 11:00:04 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT1zJ-0005Fk-Ln
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 10:59:36 +0000
X-Originating-IP: 86.206.246.123
Received: from localhost.localdomain
 (lfbn-tou-1-421-123.w86-206.abo.wanadoo.fr [86.206.246.123])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id C702EE0010;
 Fri,  8 Nov 2019 10:59:24 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Mark Brown <broonie@kernel.org>, Michal Simek <michal.simek@xilinx.com>,
 Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
Subject: [PATCH 1/7] spi: zynq-qspi: Anything else than CS0 is not supported
 yet
Date: Fri,  8 Nov 2019 11:59:14 +0100
Message-Id: <20191108105920.19014-2-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108105920.19014-1-miquel.raynal@bootlin.com>
References: <20191108105920.19014-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_025933_883287_A4CAE829 
X-CRM114-Status: GOOD (  12.21  )
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

Unlike what the driver is currently advertizing, CS0 only can be used,
CS1 is not supported at all. Prevent people to use CS1.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/spi/spi-zynq-qspi.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi-zynq-qspi.c b/drivers/spi/spi-zynq-qspi.c
index 87c9ec21f093..8098b5087708 100644
--- a/drivers/spi/spi-zynq-qspi.c
+++ b/drivers/spi/spi-zynq-qspi.c
@@ -704,10 +704,15 @@ static int zynq_qspi_probe(struct platform_device *pdev)
 
 	ret = of_property_read_u32(pdev->dev.of_node, "num-cs",
 				   &num_cs);
-	if (ret < 0)
+	if (ret < 0) {
 		ctlr->num_chipselect = ZYNQ_QSPI_DEFAULT_NUM_CS;
-	else
+	} else if (num_cs > ZYNQ_QSPI_DEFAULT_NUM_CS) {
+		dev_err(&pdev->dev, "anything but CS0 is not yet supported\n");
+		goto remove_master;
+	} else {
 		ctlr->num_chipselect = num_cs;
+	}
+
 	ctlr->mode_bits =  SPI_RX_DUAL | SPI_RX_QUAD |
 			    SPI_TX_DUAL | SPI_TX_QUAD;
 	ctlr->mem_ops = &zynq_qspi_mem_ops;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
