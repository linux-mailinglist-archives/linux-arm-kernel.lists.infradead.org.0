Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C101D1B849
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 16:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VkMtdWYKvqBKk3e5nsb2oSCQ7/i6ILGNJ9G30WzfwwM=; b=dhR
	lLF1HS0z1Iw8ATlWJrNkYsB5lzCXeRq6NWJoiKGDnyFP0DzEsmK8hk/hM5gfqKJVzfbS20UAKtrWR
	KFChW9BQjSSUmMlejAZlogUQCUraRP0z9dmMb2vrsMxdFfoUTB+Kpcabq0VPGrjaNwIU72gjW9tG7
	M69LjSV96H16B4wLhIQYo/CgMH1OHxHf4o4xaqVBr9UpqOcFNzwGKuaIISjuIriyhfWAbrrPMoRpL
	sg+5X4JcQE17YkDdpau1e8zp6RQpsDbiai9Qv/vnFqJTXU8xo9ERq/qCyehQ1+EH+JWRWZ4ArzP5v
	brG6fmI4tEB1dTuBRGj+WXa3B/Ccm2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQBt7-0006y7-7e; Mon, 13 May 2019 14:25:09 +0000
Received: from mutluit.com ([82.211.8.197])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQBsm-0006sz-Hf
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 14:24:51 +0000
Received: from c22-local.mutluit.com (ip4d155212.dynamic.kabel-deutschland.de
 [77.21.82.18]:58476)
 by mutluit.com (s2.mutluit.com [82.211.8.197]:25) with ESMTP ([XMail 1.27
 ESMTP Server])
 id <S16FAD6A> for <linux-arm-kernel@lists.infradead.org> from <um@mutluit.com>;
 Mon, 13 May 2019 10:24:41 -0400
From: Uenal Mutlu <um@mutluit.com>
To: Jens Axboe <axboe@kernel.dk>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-ide@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3] drivers: ata: ahci_sunxi: Increased SATA/AHCI DMA TX/RX
 FIFOs
Date: Mon, 13 May 2019 16:24:10 +0200
Message-Id: <20190513142410.9299-1-um@mutluit.com>
X-Mailer: git-send-email 2.11.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_072449_032044_164B56F7 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_SPACE_BRACKET No description available.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Uenal Mutlu <um@mutluit.com>,
 Oliver Schinagl <oliver@schinagl.nl>, Andre Przywara <andre.przywara@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Pablo Greco <pgreco@centosproject.org>, FUKAUMI Naoki <naobsd@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com,
 Stefan Monnier <monnier@iro.umontreal.ca>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Increasing the SATA/AHCI DMA TX/RX FIFOs (P0DMACR.TXTS and .RXTS, ie.
TX_TRANSACTION_SIZE and RX_TRANSACTION_SIZE) from default 0x0 each
to 0x3 each, gives a write performance boost of 120 MiB/s to 132 MiB/s
from lame 36 MiB/s to 45 MiB/s previously.
Read performance is above 200 MiB/s.
[tested on SSD using dd bs=4K/8K/12K/16K/20K/24K/32K: peak-perf at 12K]

Tested on the SBCs Banana Pi R1 (aka Lamobo R1) and Banana Pi M1 which
are based on the Allwinner A20 32bit-SoC (ARMv7-a / arm-linux-gnueabihf).
These devices are RaspberryPi-like small devices.

This problem of slow SATA write-speed with these small devices lasts
for about 7 years now (beginning with the A10 SoC). Many commentators
throughout the years wrongly assumed the slow write speed was a
hardware limitation. This patch finally solves the problem, which
in fact was just a hard-to-find software problem due to lack of
SATA/AHCI documentation by the SoC-maker Allwinner Technology.

Lists of the affected sunxi and other boards and SoCs with SATA using
the ahci_sunxi driver:
  $ grep -i -e "^&ahci" arch/arm/boot/dts/sun*dts
  and http://linux-sunxi.org/SATA#Devices_with_SATA_ports
  See also http://linux-sunxi.org/Category:Devices_with_SATA_port

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
Reviewed-by: Hans de Goede <hdegoede@redhat.com>
Signed-off-by: Uenal Mutlu <um@mutluit.com>
---

v3:
  * Removed RFC from Subject line, and also the explicit call for RFC
    in the text, thereby submitting the patch for official merging.

v2:
  * Commented the patch in-place in ahci_sunxi.c
  * With bs=12K and no conv=... passed to dd, the write performance
    rises further to 132 MiB/s
  * Changed MB/s to MiB/s
  * Posted the story behind the patch:
    http://lkml.iu.edu/hypermail/linux/kernel/1905.1/03506.html
  * Posted a dd test script to find optimal bs, and some results:
    https://bit.ly/2YoOzEM

v1:
  * States bs=4K for dd and a write performance of 120 MiB/s
---
 drivers/ata/ahci_sunxi.c | 47 +++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 45 insertions(+), 2 deletions(-)

diff --git a/drivers/ata/ahci_sunxi.c b/drivers/ata/ahci_sunxi.c
index 911710643305..018186a39a69 100644
--- a/drivers/ata/ahci_sunxi.c
+++ b/drivers/ata/ahci_sunxi.c
@@ -157,8 +157,51 @@ static void ahci_sunxi_start_engine(struct ata_port *ap)
 	void __iomem *port_mmio = ahci_port_base(ap);
 	struct ahci_host_priv *hpriv = ap->host->private_data;
 
-	/* Setup DMA before DMA start */
-	sunxi_clrsetbits(hpriv->mmio + AHCI_P0DMACR, 0x0000ff00, 0x00004400);
+	/* Setup DMA before DMA start
+	 *
+	 * NOTE: A similar SoC with SATA/AHCI by Texas Instruments documents
+	 *   this Vendor Specific Port (P0DMACR, aka PxDMACR) in its
+	 *   User's Guide document (TMS320C674x/OMAP-L1x Processor
+	 *   Serial ATA (SATA) Controller, Literature Number: SPRUGJ8C,
+	 *   March 2011, Chapter 4.33 Port DMA Control Register (P0DMACR),
+	 *   p.68, https://www.ti.com/lit/ug/sprugj8c/sprugj8c.pdf)
+	 *   as equivalent to the following struct:
+	 *
+	 *   struct AHCI_P0DMACR_t
+	 *   {
+	 *     unsigned TXTS     : 4;
+	 *     unsigned RXTS     : 4;
+	 *     unsigned TXABL    : 4;
+	 *     unsigned RXABL    : 4;
+	 *     unsigned Reserved : 16;
+	 *   };
+	 *
+	 *   TXTS: Transmit Transaction Size (TX_TRANSACTION_SIZE).
+	 *     This field defines the DMA transaction size in DWORDs for
+	 *     transmit (system bus read, device write) operation. [...]
+	 *
+	 *   RXTS: Receive Transaction Size (RX_TRANSACTION_SIZE).
+	 *     This field defines the Port DMA transaction size in DWORDs
+	 *     for receive (system bus write, device read) operation. [...]
+	 *
+	 *   TXABL: Transmit Burst Limit.
+	 *     This field allows software to limit the VBUSP master read
+	 *     burst size. [...]
+	 *
+	 *   RXABL: Receive Burst Limit.
+	 *     Allows software to limit the VBUSP master write burst
+	 *     size. [...]
+	 *
+	 *   Reserved: Reserved.
+	 *
+	 *
+	 * NOTE: According to the above document, the following alternative
+	 *   to the code below could perhaps be a better option
+	 *   (or preparation) for possible further improvements later:
+	 *     sunxi_clrsetbits(hpriv->mmio + AHCI_P0DMACR, 0x0000ffff,
+	 *		0x00000033);
+	 */
+	sunxi_clrsetbits(hpriv->mmio + AHCI_P0DMACR, 0x0000ffff, 0x00004433);
 
 	/* Start DMA */
 	sunxi_setbits(port_mmio + PORT_CMD, PORT_CMD_START);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
