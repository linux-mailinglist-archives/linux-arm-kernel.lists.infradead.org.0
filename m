Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D42A4141BA
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 May 2019 20:09:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W4BqzIHjC57MHdtTOcuVV6W1GLkkqnx4irkl5m4+eeA=; b=d9XQgVOFQoafVz
	/24KyC5L5v0b6l4aLZ8a3VxrarvaGXy5IcqWC4ogqgVgytxwjW+ktq/NNtYk7cHiP3lGOihuysbEZ
	8/Yi9mSXh/0uN3p6Q6qRYd365sE2e6ZeL4WNwoisEVbrFnWpVMLnKwgqDbO8hkvOlFyuMGt4lixH7
	x+ZSInqiiJBa6nkLhbkcpawnigJlfAQFBYrUt4k7C2FP+rTEPqYemminCYDlHjn8k6A1l9jdU4leK
	KoOK9uNFT6Y84R9FAE69o9a9jy1o3hZrwpDc6CatGcsNP+gTKlh9kAFGwoGaoIX+KPyuGRYSps8/n
	OUi/tJLnctmWXkhzcHHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNLZw-00011Q-2O; Sun, 05 May 2019 18:09:36 +0000
Received: from mail-sender210.upb.ro ([141.85.13.210] helo=mx.upb.ro)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNLZf-0000tN-NU
 for linux-arm-kernel@lists.infradead.org; Sun, 05 May 2019 18:09:21 +0000
Received: from localhost (localhost [127.0.0.1])
 by mx.upb.ro (Postfix) with ESMTP id 670D3B561907;
 Sun,  5 May 2019 21:09:09 +0300 (EEST)
Received: from mx.upb.ro ([127.0.0.1])
 by localhost (mx.upb.ro [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id nxcrwICMlK8C; Sun,  5 May 2019 21:09:07 +0300 (EEST)
Received: from localhost (localhost [127.0.0.1])
 by mx.upb.ro (Postfix) with ESMTP id 85AD7B561905;
 Sun,  5 May 2019 21:09:07 +0300 (EEST)
DKIM-Filter: OpenDKIM Filter v2.10.3 mx.upb.ro 85AD7B561905
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=upb.ro;
 s=96342B8A-77E4-11E5-BA93-D93D0963A2DF; t=1557079747;
 bh=41JtH8Jj+flgBl1Ace2G9ACZKkR6R2qzxrWS7tbCzkI=;
 h=From:To:Date:Message-Id:MIME-Version;
 b=gxNrrnDyGxRCJYo3F4IeNmnQITIvgNxRP/eNeirCG5vTK+48UTG5d7k/IyOK/KG0f
 K/yUty3ppo8QwqyhSvq1VhfVtSN6FFcNn2nIvYuOm1Egtok9HdpeTHgypraw+7tACV
 NXlrouPWvqXmy5qqSZ52WbrxDZY+W/nUHFFwDi/A=
X-Virus-Scanned: amavisd-new at upb.ro
Received: from mx.upb.ro ([127.0.0.1])
 by localhost (mx.upb.ro [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id q7M68MvjV5-S; Sun,  5 May 2019 21:09:07 +0300 (EEST)
Received: from localhost.localdomain (unknown [188.25.87.154])
 by mx.upb.ro (Postfix) with ESMTPSA id 5D3BDB5618E0;
 Sun,  5 May 2019 21:09:07 +0300 (EEST)
From: Radu Pirea <radu_nicolae.pirea@upb.ro>
To: Radu Pirea <radu_nicolae.pirea@upb.ro>,
 Richard Genoud <richard.genoud@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: mfd: atmel-usart: add DMA bindings for
 USART in SPI mode
Date: Sun,  5 May 2019 21:06:45 +0300
Message-Id: <20190505180646.1442-2-radu_nicolae.pirea@upb.ro>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190505180646.1442-1-radu_nicolae.pirea@upb.ro>
References: <20190505180646.1442-1-radu_nicolae.pirea@upb.ro>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190505_110920_111352_690116CB 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_MALWARE      Contains a malware URL listed in the Spamhaus
 DBL blocklist [URIs: upb.ro]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.85.13.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The bindings for DMA are now common for both drivers of the USART
IP.

The node given as an example for USART in SPI mode has been updated in
order to include DMA bindings.

Signed-off-by: Radu Pirea <radu_nicolae.pirea@upb.ro>
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
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
