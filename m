Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2907EE3547
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 16:14:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9VZqvWKC1pUAx0Wh089BevAPbPvoWdp0aYwactyfxRs=; b=DGNjnfpVVUHwuP
	te4vc2QBSchHlFQpxboZ5H1MckX7L75SffoK35upti0fQ4dirGYx6SRrTVju+Cm5w3Q1k3l/tR77+
	tk8YZNJFEClh+0z16dRRJP8i092BB0WBX5PuvzjiNo640KhmmgTcL11/ExeNM44jXLjh951WT4XBm
	OG6Bo0Cqi2rRmeZZc840ACrg6fgG+U8KCAw7fSc2u9qhBc8aPuYlZGyMk0LSe2zxvFvTyWB0a5Meg
	sWwpc7NxyyheLQOXZfdPokqMrANhOxg+jSD5paoHV5mraF/zQ3FGdo/g3Om+1iSyRtnTt3YNVyK5n
	L9u2+ZuOe18P3Ua8ZVIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNdsI-0002sb-AT; Thu, 24 Oct 2019 14:14:02 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNds7-0002rh-Kj
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 14:13:53 +0000
X-Originating-IP: 92.137.17.54
Received: from localhost (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id EC63E240003;
 Thu, 24 Oct 2019 14:13:40 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] spi: Fix NULL pointer when setting SPI_CS_HIGH for GPIO CS
Date: Thu, 24 Oct 2019 16:13:09 +0200
Message-Id: <20191024141309.22434-1-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_071351_950266_8B6DF88E 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "kernelci.org bot" <bot@kernelci.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>, stable@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Even if the flag use_gpio_descriptors is set, it is possible that
cs_gpiods was not allocated, which leads to a kernel crash:

Unable to handle kernel NULL pointer dereference at virtual address 00000000
pgd = (ptrval)
[00000000] *pgd=00000000
Internal error: Oops: 5 [#1] ARM
Modules linked in:
CPU: 0 PID: 1 Comm: swapper Tainted: G        W         5.4.0-rc3 #1
Hardware name: NVIDIA Tegra SoC (Flattened Device Tree)
PC is at of_register_spi_device+0x20c/0x38c
LR is at __of_find_property+0x3c/0x60
pc : [<c09b45dc>]    lr : [<c0c47a98>]    psr: 20000013
sp : ea0b5d88  ip : aae04461  fp : ea1a8810
r10: 00000055  r9 : 00000000  r8 : ea6dc800
r7 : 00000001  r6 : c1704048  r5 : eafc8c7c  r4 : ea7fd800
r3 : 00000000  r2 : 00000000  r1 : ffffffff  r0 : 00000001
Flags: nzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
Control: 10c5387d  Table: 80204059  DAC: 00000051
Process swapper (pid: 1, stack limit = 0x(ptrval))
Stack: (0xea0b5d88 to 0xea0b6000)
5d80:                   00000000 aae04461 00000000 aae04461 ea6dc800 00000000
5da0: eafc8c7c c131fbdc ea6dc9c0 c09b4e24 ea7f4500 00000040 c09b3e24 ea7f3dc0
5dc0: ea6dc800 ea1a8800 ea1a8810 00000000 00000000 00000055 0000014b c09b5020
5de0: ea6dc800 ea6dcb80 ea1a8800 ea1a8810 00000000 c09cb884 ea1a69c0 ea6dcb80
5e00: ea1a8810 00000000 c1862448 00000000 00000000 c1862448 00000000 c08dba2c
5e20: c18e66dc ea1a8810 c18e66e0 00000000 00000000 c08d9b28 ea1a8810 c1862448
5e40: c1862448 c08da0c8 00000000 c15c5850 c18a4200 c08d9e18 00000000 c15c5850
5e60: c18a4200 ea1a8810 00000000 c1862448 c08da0c8 00000000 c15c5850 c18a4200
5e80: 0000014b c08da0c0 00000000 c1862448 ea1a8810 c08da120 ea1aa0b0 c1704048
5ea0: c1862448 c08d7ed4 c15c5850 ea0894cc ea1aa0b0 aae04461 c18522c8 c1862448
5ec0: ea7f3800 c18522c8 00000000 c08d8f14 c1321b68 c15977a0 c1862448 c1862448
5ee0: c1704048 c15977b0 c15c5830 c08daa8c c18992a0 c1704048 c15977b0 c0302ce4
5f00: ebfffcd1 c03566f0 c14031b4 c1346700 00000000 00000006 00000006 c1242794
5f20: 00000000 c1704048 c1252144 c1242808 c1655778 ebfffcc0 ebfffcc3 aae04461
5f40: 00000000 00000006 c18992a0 aae04461 c16564e8 c18992a0 c18a4200 c15c5830
5f60: c15004a8 c1501028 00000006 00000006 00000000 c15004a8 00000000 00000007
5f80: c0e01028 00000000 c0e01028 00000000 00000000 00000000 00000000 00000000
5fa0: 00000000 c0e01030 00000000 c03010e8 00000000 00000000 00000000 00000000
5fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
5fe0: 00000000 00000000 00000000 00000000 00000013 00000000 00000000 00000000
[<c09b45dc>] (of_register_spi_device) from [<c09b4e24>] (spi_register_controller+0x558/0x720)
[<c09b4e24>] (spi_register_controller) from [<c09b5020>] (devm_spi_register_controller+0x34/0x6c)
[<c09b5020>] (devm_spi_register_controller) from [<c09cb884>] (tegra_spi_probe+0x344/0x438)
[<c09cb884>] (tegra_spi_probe) from [<c08dba2c>] (platform_drv_probe+0x48/0x98)
[<c08dba2c>] (platform_drv_probe) from [<c08d9b28>] (really_probe+0x1e0/0x348)
[<c08d9b28>] (really_probe) from [<c08d9e18>] (driver_probe_device+0x60/0x168)
[<c08d9e18>] (driver_probe_device) from [<c08da0c0>] (device_driver_attach+0x58/0x60)
[<c08da0c0>] (device_driver_attach) from [<c08da120>] (__driver_attach+0x58/0xcc)
[<c08da120>] (__driver_attach) from [<c08d7ed4>] (bus_for_each_dev+0x74/0xb4)
[<c08d7ed4>] (bus_for_each_dev) from [<c08d8f14>] (bus_add_driver+0x1b8/0x1d8)
[<c08d8f14>] (bus_add_driver) from [<c08daa8c>] (driver_register+0x74/0x108)
[<c08daa8c>] (driver_register) from [<c0302ce4>] (do_one_initcall+0x50/0x1a8)
[<c0302ce4>] (do_one_initcall) from [<c1501028>] (kernel_init_freeable+0x15c/0x1fc)
[<c1501028>] (kernel_init_freeable) from [<c0e01030>] (kernel_init+0x8/0x10c)
[<c0e01030>] (kernel_init) from [<c03010e8>] (ret_from_fork+0x14/0x2c)
Exception stack(0xea0b5fb0 to 0xea0b5ff8)
5fa0:                                     00000000 00000000 00000000 00000000
5fc0: 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
5fe0: 00000000 00000000 00000000 00000000 00000013 00000000
Code: e3520000 0a000006 e59822a8 e6ef3073 (e7923103)

Reported-by: "kernelci.org bot" <bot@kernelci.org>
Fixes: 3e5ec1db8bfe ("spi: Fix SPI_CS_HIGH setting when using native and GPIO CS")
Cc: <stable@vger.kernel.org>
Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
Hello,

Following the report from
https://kernelci.org/boot/id/5daa485f59b5142f647525a0/, I managed to
reproduce the bug on my platform, and fixed it.

The commit ID provided for the fixes tag is the one of the branch
for-linus on
git://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git

Gregory

 drivers/spi/spi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 1b68acc28c8f..dd7cdd996086 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1949,7 +1949,8 @@ static int of_spi_parse_dt(struct spi_controller *ctlr, struct spi_device *spi,
 	 * handled in the gpiolib, so all gpio chip selects are "active high"
 	 * in the logical sense, the gpiolib will invert the line if need be.
 	 */
-	if ((ctlr->use_gpio_descriptors) && ctlr->cs_gpiods[spi->chip_select])
+	if ((ctlr->use_gpio_descriptors) && ctlr->cs_gpiods &&
+	    ctlr->cs_gpiods[spi->chip_select])
 		spi->mode |= SPI_CS_HIGH;
 
 	/* Device speed */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
