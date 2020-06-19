Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552932007E8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 13:33:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CP3CUYjF3Gt5qgfzc3SA8nvsdZSPoI5/YtvqEe+Kyno=; b=fxwJWUH2qUINGW
	om975kKUhCq56+/ijPRp87+uP8A0v72x4dXMKn5o8L+fgbI4TPcXEURPZcZ8zjoOSeCvHm25nRQte
	8jEu0nlsnAuWt8HlPAqlI8VYs8aK1ttr6iu9eVQbYAcxtVfm5FoeyVsdsQple4qesbn6E98/Sm3Yk
	M2/+JjJO1FevUD4H7C5riaTBSajoVheShsnRFmHAuCo4yer0ewx7GXvYN2Wb8fAdIx05LQ2OVbp/Q
	27Au8+cmIaaxDS++EvfJlqwNzO7HAydi4SxLDEdPIz8+ulJ5+mCJSfdWEGhazJx8R2/iHNjWBQ9NP
	j7+8yyPoPCzd6IrHrzsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmFH4-0001sD-TP; Fri, 19 Jun 2020 11:33:34 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmFFM-0000ST-Px
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 11:31:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592566308; x=1624102308;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=19MOvcR0nsnDT3YcIrCLwDvMaCViNOXGoQ4rVMNBvY4=;
 b=QjOJFj15YTdO4wdqIXx//Ed6RqFgsCXP9VW0w6R3Cr1WUliJ8VUmdQJF
 1FOG++2Pi5texAVWTvbYTe2TG86i2nWGYTbEZONa8AnQuq9ijH0B1F+MQ
 8p0qdz7neO0iXooBHu4vokZoTOZAfuEgfPLxi9mEa3CnizzSuZ3HkaDD2
 tkwhWsR4w5wQQN+D8/WelzOGv7Fx/MaqeGt3aDMUA33kJCojruj9V+jEk
 1LvHd50LstGJ31Dmty5ZigM4OhEWvX4wloIi3bWnDLfOW9EMQb7M9Ew9s
 bC6bkUAQ81qNjtBNDzMAMULsE/GIiFv5CsJGQWzcAYUxFCM/3Hi+QvERX w==;
IronPort-SDR: 4/WxqRybhw55PExWHGU3OtD0Qo5/Em9m9d04aQhoExdrQpP6eUWA5wEoCVpw/t8voZLxwrZJMF
 R1MQAKHfHNC9x6w77HA5QieZl160Qu3Fhq2EZKgmcErKBfv3/rnCDVlXAqA+KhAVd0MYjrKoEI
 paAfOTjbbTszwLBGUky9JGq18C7OTQQ1sThBdLCWMSQBqXP+yFSKcpdYLz5+x+l2QSpb9Mc5Sx
 LtYx7OSwJVLAS1VRPnrZOhh8Rt9BWlVoIIUBehTN8FaWxm/dzzDXNpc+MkvEzTxpPqobsYKQNM
 2jw=
X-IronPort-AV: E=Sophos;i="5.75,255,1589266800"; d="scan'208";a="77162027"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Jun 2020 04:31:42 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Fri, 19 Jun 2020 04:31:35 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Fri, 19 Jun 2020 04:31:33 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>, SoC Team <soc@kernel.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH v2 4/6] dt-bindings: snps, dw-apb-ssi: Add sparx5,
 SPI slave snps, rx-sample-delay-ns and microchip, spi-interface2 properties.
Date: Fri, 19 Jun 2020 13:31:19 +0200
Message-ID: <20200619113121.9984-5-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200619113121.9984-1-lars.povlsen@microchip.com>
References: <20200619113121.9984-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_043148_924880_B9B7B729 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.154.123 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>, linux-spi@vger.kernel.org,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This has the following changes for the snps,dw-apb-ss DT bindings:

- Add "microchip,sparx5-spi" as the compatible for the Sparx5 SoC
controller,

- Add the property "snps,rx-sample-delay-ns" for SPI slaves

- Add the property "microchip,spi-interface2" for SPI slaves

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 .../bindings/spi/snps,dw-apb-ssi.yaml         | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
index c62cbe79f00dd..5bca4f0493bdf 100644
--- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
+++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
@@ -36,6 +36,11 @@ properties:
               - mscc,ocelot-spi
               - mscc,jaguar2-spi
           - const: snps,dw-apb-ssi
+      - description: Microchip Sparx5 SoC SPI Controller
+        items:
+          - enum:
+              - microchip,sparx5-spi
+          - const: snps,dw-apb-ssi
       - description: Amazon Alpine SPI Controller
         const: amazon,alpine-dw-apb-ssi
       - description: Renesas RZ/N1 SPI Controller
@@ -107,6 +112,19 @@ patternProperties:
       spi-tx-bus-width:
         const: 1

+      snps,rx-sample-delay-ns:
+        description: SPI Rx sample delay offset, unit is nanoseconds.
+          The delay from the default sample time before the actual
+          sample of the rxd input signal occurs. The "rx_sample_delay"
+          is an optional feature of the designware controller, and the
+          upper limit is also subject to controller configuration.
+        $ref: /schemas/types.yaml#/definitions/uint32
+
+      microchip,spi-interface2:
+        description: indicates the spi device is placed on a special
+          controller interface of the "microchip,sparx5-spi" controller.
+        type: boolean
+
 unevaluatedProperties: false

 required:
@@ -129,5 +147,11 @@ examples:
       num-cs = <2>;
       cs-gpios = <&gpio0 13 0>,
                  <&gpio0 14 0>;
+        spi-flash@1 {
+          compatible = "spi-nand";
+          reg = <1>;
+          microchip,spi-interface2;
+          snps,rx-sample-delay-ns = <7>;
+        };
     };
 ...
--
2.27.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
