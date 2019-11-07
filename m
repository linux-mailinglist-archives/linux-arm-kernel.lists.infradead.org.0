Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BEBF3369
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 16:35:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4QL0Hqssw6/BHEm04U4LmJTkOz7NNM2MM3hxLNGdJr0=; b=aK6w/BrJWi3tgU
	d1kG/TeKhENRjIdCT0p4jJ6D7Z2hiW6lcFq3NljSMwqTRl/F5YYpAQYEAkn4LLMe995TxZjGV4grJ
	6VQLcWbWds9mhERW7Kt8sE/if8l4IFtTNq/Twf59Ve/mmy05qOe5hyiP9ysXGX303BuZvKKQ++PSG
	ElkPedH0uxrTj5gZQLq+w8+uawFAvwK40fkH0+AvwzC3CP9t1IMQtFvn2SzCidYZzxTEQIa6Zp4Vk
	nkL8DEc9SVqeAvzkT31Z4sfg8rbsyH1UvIE9ea1EFN+cFBjm9LAHUCTcjBiGs6zztMh1nuVtiMyuH
	N7qzL7pvNELB+XHimvMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSjp3-00035e-4K; Thu, 07 Nov 2019 15:35:45 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSjoJ-0001OI-Oq
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 15:35:01 +0000
X-Originating-IP: 92.137.17.54
Received: from localhost (alyon-657-1-975-54.w92-137.abo.wanadoo.fr
 [92.137.17.54]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 160B640005;
 Thu,  7 Nov 2019 15:34:48 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Cristian Birsan <cristian.birsan@microchip.com>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: usb: atmel: Mark EP child node as deprecated
Date: Thu,  7 Nov 2019 16:31:27 +0100
Message-Id: <20191107153128.11038-3-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.24.0.rc1
In-Reply-To: <20191107153128.11038-1-gregory.clement@bootlin.com>
References: <20191107153128.11038-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_073459_938184_51D67F13 
X-CRM114-Status: GOOD (  10.02  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no need to describe the end point in the deice tree. These
properties won't be use anymore, so mark them as deprecated to keep
the old device tree documented.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 .../devicetree/bindings/usb/atmel-usb.txt     | 56 +------------------
 1 file changed, 3 insertions(+), 53 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/atmel-usb.txt b/Documentation/devicetree/bindings/usb/atmel-usb.txt
index 44e80153b148..423b99a8fd97 100644
--- a/Documentation/devicetree/bindings/usb/atmel-usb.txt
+++ b/Documentation/devicetree/bindings/usb/atmel-usb.txt
@@ -88,13 +88,15 @@ Required properties:
  - clock-names: Should contain two strings
 		"pclk" for the peripheral clock
 		"hclk" for the host clock
+
+Deprecated property:
  - ep childnode: To specify the number of endpoints and their properties.
 
 Optional properties:
  - atmel,vbus-gpio: If present, specifies a gpio that allows to detect whether
    vbus is present (USB is connected).
 
-Required child node properties:
+Deprecated child node properties:
  - name: Name of the endpoint.
  - reg: Num of the endpoint.
  - atmel,fifo-size: Size of the fifo.
@@ -112,56 +114,4 @@ usb2: gadget@fff78000 {
 	clocks = <&utmi>, <&udphs_clk>;
 	clock-names = "hclk", "pclk";
 	atmel,vbus-gpio = <&pioB 19 0>;
-
-	ep@0 {
-		reg = <0>;
-		atmel,fifo-size = <64>;
-		atmel,nb-banks = <1>;
-	};
-
-	ep@1 {
-		reg = <1>;
-		atmel,fifo-size = <1024>;
-		atmel,nb-banks = <2>;
-		atmel,can-dma;
-		atmel,can-isoc;
-	};
-
-	ep@2 {
-		reg = <2>;
-		atmel,fifo-size = <1024>;
-		atmel,nb-banks = <2>;
-		atmel,can-dma;
-		atmel,can-isoc;
-	};
-
-	ep@3 {
-		reg = <3>;
-		atmel,fifo-size = <1024>;
-		atmel,nb-banks = <3>;
-		atmel,can-dma;
-	};
-
-	ep@4 {
-		reg = <4>;
-		atmel,fifo-size = <1024>;
-		atmel,nb-banks = <3>;
-		atmel,can-dma;
-	};
-
-	ep@5 {
-		reg = <5>;
-		atmel,fifo-size = <1024>;
-		atmel,nb-banks = <3>;
-		atmel,can-dma;
-		atmel,can-isoc;
-	};
-
-	ep@6 {
-		reg = <6>;
-		atmel,fifo-size = <1024>;
-		atmel,nb-banks = <3>;
-		atmel,can-dma;
-		atmel,can-isoc;
-	};
 };
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
