Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 249561A363
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 21:27:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IUBfLnUAxZzj7VEdd+jv5IqYFv4RqaNkqZizjWMzDis=; b=H24
	l2Y1XWMF92ZrUCTNBdqjIHFtsNJa0SiwjPrpmeIgCBNM9+zuKwclBGlKgyYPJx+ef67ptnGJ0RDD8
	abp8lk3LNYTacsMlDeaTnpJn5s8j8enxKllFgDggt0SlmFL4eMhNRax/aTE1g4YqJcVyvnlRYAyCB
	2ZyTOh4nfAniuRMA+M8HNHNgoLVMsnC8Nx7fOimxmxUmomd4KkJqJRrirG9WDz+8XAbgxrlHEVtEu
	4eiV1ajLv9KQEV21wNUaBFOmXl4AXD+aRI+Vos2cc4uu7TMTus306bgJRGriY8QASbDohSouR7gBE
	E0X/ePuIcABmsjnoZ5GqtVUKQ+LPLKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPBBH-0004xY-0r; Fri, 10 May 2019 19:27:43 +0000
Received: from mutluit.com ([82.211.8.197])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPBB9-0004mP-IN
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 19:27:37 +0000
Received: from c22-local.mutluit.com (ip4d1674dc.dynamic.kabel-deutschland.de
 [77.22.116.220]:31668)
 by mutluit.com (s2.mutluit.com [82.211.8.197]:25) with ESMTP ([XMail 1.27
 ESMTP Server])
 id <S16FAC33> for <linux-arm-kernel@lists.infradead.org> from <um@mutluit.com>;
 Fri, 10 May 2019 15:27:26 -0400
From: Uenal Mutlu <um@mutluit.com>
To: Jens Axboe <axboe@kernel.dk>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-ide@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [RFC PATCH] drivers: ata: ahci_sunxi: Increased SATA/AHCI DMA TX/RX
 FIFOs
Date: Fri, 10 May 2019 21:25:50 +0200
Message-Id: <20190510192550.17458-1-um@mutluit.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_122735_925986_82B9AD33 
X-CRM114-Status: GOOD (  10.74  )
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
 Hans de Goede <hdegoede@redhat.com>, Oliver Schinagl <oliver@schinagl.nl>,
 Andre Przywara <andre.przywara@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Pablo Greco <pgreco@centosproject.org>, FUKAUMI Naoki <naobsd@gmail.com>,
 u-boot@lists.denx.de, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Increasing the SATA/AHCI DMA TX/RX FIFOs (P0DMACR.TXTS and .RXTS) from
default 0x0 each to 0x3 each gives a write performance boost of 120MB/s
from lame 36MB/s to 45MB/s previously. Read performance is about 200MB/s
[tested on SSD using dd bs=4K count=512K].

Tested on the Banana Pi R1 (aka Lamobo R1) and Banana Pi M1 SBCs
with Allwinner A20 32bit-SoCs (ARMv7-a / arm-linux-gnueabihf).
These devices are RaspberryPi-like small devices.

RFC: Since more than about 25 similar SBC/SoC models do use the
ahci_sunxi driver, users are encouraged to test it on all the
affected boards and give feedback.

List of the affected sunxi and other boards and SoCs with SATA using
the ahci_sunxi driver:
  $ grep -i -e "^&ahci" arch/arm/boot/dts/sun*dts
  and http://linux-sunxi.org/Category:Devices_with_SATA_port

Signed-off-by: Uenal Mutlu <um@mutluit.com>
---
 drivers/ata/ahci_sunxi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ata/ahci_sunxi.c b/drivers/ata/ahci_sunxi.c
index 911710643305..257986431c79 100644
--- a/drivers/ata/ahci_sunxi.c
+++ b/drivers/ata/ahci_sunxi.c
@@ -158,7 +158,7 @@ static void ahci_sunxi_start_engine(struct ata_port *ap)
 	struct ahci_host_priv *hpriv = ap->host->private_data;
 
 	/* Setup DMA before DMA start */
-	sunxi_clrsetbits(hpriv->mmio + AHCI_P0DMACR, 0x0000ff00, 0x00004400);
+	sunxi_clrsetbits(hpriv->mmio + AHCI_P0DMACR, 0x0000ffff, 0x00004433);
 
 	/* Start DMA */
 	sunxi_setbits(port_mmio + PORT_CMD, PORT_CMD_START);
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
