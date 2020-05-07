Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D391C95AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:58:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sHJoWRrOAmpGqd4RdJOzUnVuHSxRhmSEilAQ99waC+g=; b=gXUHX414+XB3Ou
	KTn5lo9cFt4Y9kFfTaOMjz/0vxtIwoQRhti/AufGXY/X5U/lGKLXtNRWqL57XKpVBLIrdTAyWuniO
	eeDbebzy3JRtsmlKOAzE6/DqhjghBzc8G2MTjuqohaHhuS482OBF1VvAdY7081/Prdaf6FaYuELRI
	u1rjFmsuNcpkn8xGC2JsLUdmCqE+6DrU1X8lFUj9AWrp/IWTXbkFj1rCQKWgPRapdh51iv5sNzaz9
	3A/ELdNPRSLgXhydBWK9McaBStbJUX9AE5cc3HMZPn4Wdy7ygrglo/ANdm1x5YF8QM7DaAxjpTrN7
	PkgRp54vJNz6u2+vB22A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWiuL-0002Vm-TU; Thu, 07 May 2020 15:57:57 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWitg-000219-5x
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:57:18 +0000
X-Originating-IP: 87.231.134.186
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id 56F95240005;
 Thu,  7 May 2020 15:57:12 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Cristian Birsan <cristian.birsan@microchip.com>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] dt-bindings: usb: atmel: Mark EP child node as
 deprecated
Date: Thu,  7 May 2020 17:56:50 +0200
Message-Id: <20200507155651.1094142-3-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200507155651.1094142-1-gregory.clement@bootlin.com>
References: <20200507155651.1094142-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_085716_355313_5DFACE69 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.193 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.193 listed in wl.mailspike.net]
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Rob Herring <robh@kernel.org>, Gregory CLEMENT <gregory.clement@bootlin.com>,
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

Reviewed-by: Rob Herring <robh@kernel.org>
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
