Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A4BE174B5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 11:10:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=WO6WPj1y5R3zv+ZSIb7GQ8NRQMZsT65/R1siiK2pcec=; b=V1a
	XVHw2O6jvtPyB1ew7HHc36Usw0lzGIU3MiOB81PtupVrhfig6GFbzxcBLVQjoGshV99U5tETHU2Fn
	1V9NggLAq6aT5Rcbw5NzqVPgvslLF3AqJvghbOI0KvWJr76Z5+19M7/iZIDXEZ+IWYx4pra2tpBN9
	wrfMHCcs2EB8hx0HZj/gkkXR5MDMYXQwAGW7c+BdmNRcMI+Ua8tAOxOoQ4kTsmJdAvuUeLw2/l043
	c2bAdzSdCv3IGjhKqcogE375NDQ0Y9mhkUIQ0Gw52ySOuhIocqnIlqJOzlYscRnwWinxzR7Ttzrv1
	3HIUzjNCCcn6tdwisT+dqU0KkUkZCJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOIar-0002M1-9y; Wed, 08 May 2019 09:10:30 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOIZt-00009l-B8
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 09:09:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=DXt5IntGctC+H7tmN7EBvL0ioZYMHBlAhEaJOHxOk2M=; b=QripnkRtQHYP
 1MfCqvkWjIjF3ZxOPKirO+fKlNxWj81QKDx5JRCVqQF5UK07eADTWpy8uMv8yW2BTfBWtvLajWO1u
 rND8Pl20qN9DfjbWtXvCcCi5luE/BldIqfXVopiaJa+lGkJkDMNpwVDUDFcjA8JBErXU2b++/wnRd
 AGkaI=;
Received: from [61.199.190.11] (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hOIZl-0007gS-A6; Wed, 08 May 2019 09:09:24 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id B7CB344003F; Wed,  8 May 2019 10:08:57 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Radu Pirea <radu_nicolae.pirea@upb.ro>
Subject: Applied "dt-bindings: mfd: atmel-usart: add DMA bindings for USART in
 SPI mode" to the spi tree
In-Reply-To: <20190505180646.1442-2-radu_nicolae.pirea@upb.ro>
X-Patchwork-Hint: ignore
Message-Id: <20190508090857.B7CB344003F@finisterre.sirena.org.uk>
Date: Wed,  8 May 2019 10:08:57 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_020929_876732_FFF62826 
X-CRM114-Status: GOOD (  18.07  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Richard Genoud <richard.genoud@gmail.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-spi@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   dt-bindings: mfd: atmel-usart: add DMA bindings for USART in SPI mode

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.3

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From f7b99e5948e6be8b850eecbb2de1986d26a76b36 Mon Sep 17 00:00:00 2001
From: Radu Pirea <radu_nicolae.pirea@upb.ro>
Date: Sun, 5 May 2019 21:06:45 +0300
Subject: [PATCH] dt-bindings: mfd: atmel-usart: add DMA bindings for USART in
 SPI mode

The bindings for DMA are now common for both drivers of the USART
IP.

The node given as an example for USART in SPI mode has been updated in
order to include DMA bindings.

Signed-off-by: Radu Pirea <radu_nicolae.pirea@upb.ro>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 .../devicetree/bindings/mfd/atmel-usart.txt   | 20 ++++++++++++++-----
 1 file changed, 15 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/atmel-usart.txt b/Documentation/devicetree/bindings/mfd/atmel-usart.txt
index 7f0cd72f47d2..699fd3c9ace8 100644
--- a/Documentation/devicetree/bindings/mfd/atmel-usart.txt
+++ b/Documentation/devicetree/bindings/mfd/atmel-usart.txt
@@ -17,17 +17,24 @@ Required properties for USART in SPI mode:
 - cs-gpios: chipselects (internal cs not supported)
 - atmel,usart-mode : Must be <AT91_USART_MODE_SPI> (found in dt-bindings/mfd/at91-usart.h)
 
+Optional properties in serial and SPI mode:
+- dma bindings for dma transfer:
+	- dmas: DMA specifier, consisting of a phandle to DMA controller node,
+		memory peripheral interface and USART DMA channel ID, FIFO configuration.
+		The order of DMA channels is fixed. The first DMA channel must be TX
+		associated channel and the second one must be RX associated channel.
+		Refer to dma.txt and atmel-dma.txt for details.
+	- dma-names: "tx" for TX channel.
+		     "rx" for RX channel.
+		     The order of dma-names is also fixed. The first name must be "tx"
+		     and the second one must be "rx" as in the examples below.
+
 Optional properties in serial mode:
 - atmel,use-dma-rx: use of PDC or DMA for receiving data
 - atmel,use-dma-tx: use of PDC or DMA for transmitting data
 - {rts,cts,dtr,dsr,rng,dcd}-gpios: specify a GPIO for RTS/CTS/DTR/DSR/RI/DCD line respectively.
   It will use specified PIO instead of the peripheral function pin for the USART feature.
   If unsure, don't specify this property.
-- add dma bindings for dma transfer:
-	- dmas: DMA specifier, consisting of a phandle to DMA controller node,
-		memory peripheral interface and USART DMA channel ID, FIFO configuration.
-		Refer to dma.txt and atmel-dma.txt for details.
-	- dma-names: "rx" for RX channel, "tx" for TX channel.
 - atmel,fifo-size: maximum number of data the RX and TX FIFOs can store for FIFO
   capable USARTs.
 - rs485-rts-delay, rs485-rx-during-tx, linux,rs485-enabled-at-boot-time: see rs485.txt
@@ -81,5 +88,8 @@ Example:
 		interrupts = <12 IRQ_TYPE_LEVEL_HIGH 5>;
 		clocks = <&usart0_clk>;
 		clock-names = "usart";
+		dmas = <&dma0 2 AT91_DMA_CFG_PER_ID(3)>,
+		       <&dma0 2 (AT91_DMA_CFG_PER_ID(4) | AT91_DMA_CFG_FIFOCFG_ASAP)>;
+		dma-names = "tx", "rx";
 		cs-gpios = <&pioB 3 0>;
 	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
