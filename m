Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DD61D16DC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l3/VHBdxiaKdEmQsguNISkdfLc8b3hkDOja63V++4GU=; b=Yfkr60HHCnPXhT
	piWCQUyM3XSuTFJcnZOIOVkE8mGGj1l+j9utgn/vyRzSRx4saTq3/UZ3IiTJZJ8C/kKNBzhTtigZU
	iHiak2Wk0nl06uxydJlp2E5u10WPhe/p4kBSrJhpvtyXbX/sCQpXYb5ZNZkLopULvDbzdu8aTeegm
	XZSnXg6XQhNulsLv0ux2gmx+Ct6DJcC1zL0LCwRpiifk2FbuKNWBmOUuzgjTisOMv6UxTTFXtKxVq
	R49foASqmI6dH8Qua3x3tqqjOxJaJ3NEgcbBTgpdCketrT+jg/WqeIO2ffyQJfPFoP8jlD9oqzJ5y
	mGhwXtQOBozGaxMcB0/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYryL-00082U-6v; Wed, 13 May 2020 14:02:57 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrwP-0006Xs-2p
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:01:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589378457; x=1620914457;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=FaO/GETf8z+ABiKcnmBIXRkSMrzTv7Y0Bt8RBuG3pBE=;
 b=1i6RQ+TKaI71/CH22THmpfAWlWwIw0sG9Z9+D8KQewdSvrsfLPjDVo6A
 pM2Ucq/uq5NjvC3XK07FzPfqGNJ95PHzFH5/VsyZIT9d7FYTXUcqFKTsN
 EYydxQXXugDvwOjziAnrU1Ar4dm6Uf9B++PBSYesGIVsM+bXJOBdqInXW
 YUIRtp0TzuVnpCD8MlercT7GBL6RZrzEMNBdeMIVA5IxBJhdOBWBLR9x0
 MIvtIvWY8zCxfTtfcRxOi9Kpk43Dfe7Ppr51lqIGpKPc6rYJSX3wStqqg
 0umVAG4zGM0bviyraaVv1yrOeZtcO56YnfVoEJ8ZvehOWayiyogZ8MVO4 A==;
IronPort-SDR: sw7/+Xl09HJPBB3WW6IIefnitHCp5+tjOGx6sM6RkNeZoJSIntXCAfjjBR62S4wTzy6ugH94Gg
 bfgIDneKlZZhULpZV3vmc4uAzmk310dee5pWvaJ0wmNA6tEYz9Cy2jfKp3DPu4R22gArmCam4S
 JxdSCru1oe/jNhAqTXe/yaRS63Q1182oBqfQ6iZ8/kMFOb/rz2mfUPrpDW5Hr8BH+Nr4rpmqjZ
 egSu78qhKxdJ8RcWuLdUKFe52moXN0aTf6iho2dHUa0H8Bodhir/lju4/83rwVwDsM5r/LVatJ
 PCA=
X-IronPort-AV: E=Sophos;i="5.73,388,1583218800"; d="scan'208";a="79447556"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 07:00:56 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 07:00:57 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 07:00:52 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>, SoC Team <soc@kernel.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 06/10] dt-bindings: spi: spi-dw-mchp: Add Sparx5 support
Date: Wed, 13 May 2020 16:00:27 +0200
Message-ID: <20200513140031.25633-7-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513140031.25633-1-lars.povlsen@microchip.com>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_070057_249925_748A648C 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Lars Povlsen <lars.povlsen@microchip.com>,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This add DT bindings for the Sparx5 SPI driver.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 .../bindings/spi/mscc,ocelot-spi.yaml         | 49 +++++++++++++++----
 1 file changed, 39 insertions(+), 10 deletions(-)

diff --git a/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml b/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
index a3ac0fa576553..8beecde4b0880 100644
--- a/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
@@ -23,15 +23,23 @@ properties:
     enum:
       - mscc,ocelot-spi
       - mscc,jaguar2-spi
+      - microchip,sparx5-spi

   interrupts:
     maxItems: 1

   reg:
     minItems: 2
-    items:
-      - description: Designware SPI registers
-      - description: CS override registers
+    maxItems: 3
+    oneOf:
+      - items:
+          - description: Designware SPI registers
+          - description: CS override registers (Not sparx5).
+      - items:
+          - description: Designware SPI registers
+          - description: CS override registers (Not sparx5).
+          - description: Direct mapped SPI read area. If provided, the
+              driver will register spi_mem_op's to take advantage of it.

   clocks:
     maxItems: 1
@@ -43,6 +51,23 @@ properties:
        enum: [ 2, 4 ]
     maxItems: 1

+  spi-rx-delay-us:
+    description: |
+      The delay (in usec) of the RX signal sample position. This can
+      be used to tne the RX timing in order to acheive higher
+      speeds. This is used for all devices on the bus.
+    default: 0
+    maxItems: 1
+
+  interface-mapping-mask:
+    description: |
+      On the Sparx5 variant, two different busses are connected to the
+      controller. This property is a mask per chip-select, indicating
+      whether the CS should go to one or the other interface.
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0
+    maxItems: 1
+
 required:
   - compatible
   - reg
@@ -50,11 +75,15 @@ required:

 examples:
   - |
-    spi0: spi@101000 {
-      compatible = "mscc,ocelot-spi";
-      #address-cells = <1>;
-      #size-cells = <0>;
-      reg = <0x101000 0x100>, <0x3c 0x18>;
-      interrupts = <9>;
-      clocks = <&ahb_clk>;
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    spi0: spi@600104000 {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        compatible = "microchip,sparx5-spi";
+        reg = <0x00104000 0x40>, <0 0>, <0x3000000 0x4000000>;
+        num-cs = <16>;
+        reg-io-width = <4>;
+        reg-shift = <2>;
+        clocks = <&ahb_clk>;
+        interrupts = <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>;
     };
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
