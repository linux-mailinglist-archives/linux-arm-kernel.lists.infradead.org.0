Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECD91AE30
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 23:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8iJ76gfddo6H0jd5nzFGoH+4vTqITNGfQbEitIYI73k=; b=IJu
	ogeGP2E2yyEF1VtkR7kv08WxcGIOQkXNuqEd2WpnHGsBiaqqNR1z1WR6LRyVDa8vUmAYoynAkIubh
	bsWv2J3GYshqhQYx6uI7Xwf+/ty78rTXi5rUUiRJeQRJNdpBK7bononqRclpVL8NTR+1G4iwDUICW
	QxuHRGbPlMkP6XTe5Cm9V89PsWO88ozpHKa21nXrnJhHonjoEdgSDhCTq0Z90khcg4jXmN4jkWutB
	WZUZdtMTLvAc3peVCtCHlKzLnmrv69DT3uUTZa7MAho0RrywiziCiPvrCliomDg3zh1fE7XbSori0
	3ektRlarzGjxhKko3b+Ob5HBkOtXulQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPvaJ-00011e-Am; Sun, 12 May 2019 21:00:39 +0000
Received: from mutluit.com ([82.211.8.197])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPvaC-00010e-23
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 21:00:34 +0000
Received: from c22-local.mutluit.com (ip4d155212.dynamic.kabel-deutschland.de
 [77.21.82.18]:31290)
 by mutluit.com (s2.mutluit.com [82.211.8.197]:25) with ESMTP ([XMail 1.27
 ESMTP Server])
 id <S16FAD18> for <linux-arm-kernel@lists.infradead.org> from <um@mutluit.com>;
 Sun, 12 May 2019 17:00:24 -0400
From: Uenal Mutlu <um@mutluit.com>
To: Jens Axboe <axboe@kernel.dk>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-ide@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH v2 RESEND] drivers: ata: ahci_sunxi: Increased SATA/AHCI
 DMA TX/RX FIFOs
Date: Sun, 12 May 2019 22:59:54 +0200
Message-Id: <20190512205954.18435-1-um@mutluit.com>
X-Mailer: git-send-email 2.11.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_140032_421851_7FB9D3C3 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_SPACE_BRACKET No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Read performance is about 200 MiB/s.
[tested on SSD using dd bs=2K/4K/8K/12K/16K/24K/32K: peak-perf at 12K].

Tested on the Banana Pi R1 (aka Lamobo R1) and Banana Pi M1 SBCs
with Allwinner A20 32bit-SoCs (ARMv7-a / arm-linux-gnueabihf).
These devices are RaspberryPi-like small devices.

This problem of slow SATA write-speed with these small devices lasts now
for more than 5 years. Many commentators throughout the years wrongly
assumed the slow write speed was a hardware limitation. This patch finally
solves the problem, which in fact was just a hard-to-fix software problem
(b/c of lack of documentation by the SoC-maker Allwinner Technology).

RFC: Since more than about 25 similar SBC/SoC models do use the
ahci_sunxi driver, users are encouraged to test it on all the
affected boards and give feedback.

Lists of the affected sunxi and other boards and SoCs with SATA using
the ahci_sunxi driver:
  $ grep -i -e "^&ahci" arch/arm/boot/dts/sun*dts
  and http://linux-sunxi.org/SATA#Devices_with_SATA_ports
  See also http://linux-sunxi.org/Category:Devices_with_SATA_port

Patch v2:
  - Commented the patch in-place in ahci_sunxi.c
  - With bs=12K and no conv=... passed to dd, the write performance
    rises further to 132 MiB/s
  - Changed MB/s to MiB/s
  - Posted the story behind the patch:
    http://lkml.iu.edu/hypermail/linux/kernel/1905.1/03506.html
  - Posted a dd test script to find optimal bs, and some results:
    https://bit.ly/2YoOzEM

Patch v1:
  - States bs=4K for dd and a write performance of 120 MiB/s

Signed-off-by: Uenal Mutlu <um@mutluit.com>
---
 drivers/ata/ahci_sunxi.c | 47 +++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 45 insertions(+), 2 deletions(-)

diff --git a/drivers/ata/ahci_sunxi.c b/drivers/ata/ahci_sunxi.c
index 911710643305..ed19f19808c5 100644
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
+	 *     {
+	 *       unsigned TXTS     : 4,
+	 *                RXTS     : 4,
+	 *                TXABL    : 4,
+	 *                RXABL    : 4,
+	 *                Reserved : 16;
+	 *     };
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
