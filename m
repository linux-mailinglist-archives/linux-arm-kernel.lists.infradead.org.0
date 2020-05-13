Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD0271D16D7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1AGNoG+Qrp5I3cNuuJRj/8ejAFUfSrUPmbyMDAlOLN8=; b=ApPx1IeDbH5OO1
	BmuvlBWTmzsWOtUjXfg2+Ii1LQbAE9bHK7gw1d68bN/w7Mi4iSWauSqJK3YIW2Et6q/KyvGS7h5Il
	LnA2F8mcp8zUauyyU1B+VFWoxQBopp/jf7ZHqBe/RwM0LrQYVbwkDypXoK0uekheEwrB3j2p1ctGz
	GlA1bY9QHIRV7HMu0354Y45SGMJPKmPPkznEv3O9mCCrSncpW3D9LPi3EJv0jSX6ZtXqG6XwPbNnm
	JgBO1+y9Ev2MDXleZ+uVg1hEyysEi62th3pDhSXe1WC66/YYnJPCgIxaLV7rMbDAj8c35E4QHQZKS
	JawV1QnDRD9PRhnZ7gOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrxi-0007WZ-QT; Wed, 13 May 2020 14:02:18 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrwK-0006Xs-03
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:00:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589378451; x=1620914451;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ake5spHoiYj8zomwaQaU2aZPFaP8CHv+djGRK18gQcA=;
 b=DBqhI4YhKZaLAYB5tBOy+6hOd4Yp72PgZl4kSenGUTzMD+ayJAbbeX91
 4Y20ju3gVKJC7EygEvR9tpvEJ6tG/5DJDe8tzsbpFbmKnhezgHtOoeg/v
 U7EOfbNpbhznatRgrVSpv/II4pAV4otjRTfpHkJnaXkUO8D7j64eDkMFT
 DVmugMdW4ye8YaLx0BPAkhikB2zLWQVT7DojnRRuVOpquD5PyUdLUO3jq
 ktLIyaTPLFrnpjNwIoeFSDmwmfsryJYQkF4Ael3/9OXcYIMzGOlhiH7OE
 nmgCekgwyGCT/U5jF6ZwWGh+Kqp+BqSHMNmIio1oyZ/dGbk86YnxxsYb0 Q==;
IronPort-SDR: yS2yVnStK38NBPJvBBGdydOanJyfTZ0yQmVW5C6k6BAWGYsW5t9Pm5owVgmjbePA5G5h//Fm1u
 txcwS6dlzIamC4M7QCR5jXWFyr83dZFPke6/pRNZ7U5kDBKyGn1fScqLRuUG3MTi+BTPuFJ3+D
 zfR74OuncT4bG0m+YYOPVvl5Qxdw79xZPywhCBr6a1TK5ov0Iyc0SFDYXXIjYPNPrESHif5m0W
 lfxNN2NKVkyedH4BVVOexzVMFPMhLBTsKXtUU9EhNpSjgSchA7R82cAimJ/s1Gd/nako5WeL/K
 pSU=
X-IronPort-AV: E=Sophos;i="5.73,388,1583218800"; d="scan'208";a="79447496"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 07:00:51 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 07:00:53 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 07:00:48 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Mark Brown <broonie@kernel.org>, SoC Team <soc@kernel.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 04/10] dt-bindings: spi: Add bindings for spi-dw-mchp
Date: Wed, 13 May 2020 16:00:25 +0200
Message-ID: <20200513140031.25633-5-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513140031.25633-1-lars.povlsen@microchip.com>
References: <20200513140031.25633-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_070052_182357_BCD9F2C4 
X-CRM114-Status: GOOD (  14.47  )
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

This add DT bindings for the Microsemi/Microchip SPI controller used
in various SoC's. It describes the "mscc,ocelot-spi" and
"mscc,jaguar2-spi" bindings.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 .../bindings/spi/mscc,ocelot-spi.yaml         | 60 +++++++++++++++++++
 .../bindings/spi/snps,dw-apb-ssi.txt          |  7 +--
 MAINTAINERS                                   |  1 +
 3 files changed, 63 insertions(+), 5 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml

diff --git a/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml b/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
new file mode 100644
index 0000000000000..a3ac0fa576553
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
@@ -0,0 +1,60 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: "http://devicetree.org/schemas/spi/mscc,ocelot-spi.yaml#"
+$schema: "http://devicetree.org/meta-schemas/core.yaml#"
+
+title: Microsemi Vcore-III SPI Communication Controller
+
+maintainers:
+  - Alexandre Belloni <alexandre.belloni@bootlin.com>
+  - Lars Povlsen <lars.povlsen@microchip.com>
+
+allOf:
+  - $ref: "spi-controller.yaml#"
+
+description: |
+  The Microsemi Vcore-III SPI controller is a general purpose SPI
+  controller based upon the Designware SPI controller. It uses an 8
+  byte rx/tx fifo.
+
+properties:
+  compatible:
+    enum:
+      - mscc,ocelot-spi
+      - mscc,jaguar2-spi
+
+  interrupts:
+    maxItems: 1
+
+  reg:
+    minItems: 2
+    items:
+      - description: Designware SPI registers
+      - description: CS override registers
+
+  clocks:
+    maxItems: 1
+
+  reg-io-width:
+    description: |
+      The I/O register width (in bytes) implemented by this device.
+    items:
+       enum: [ 2, 4 ]
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+
+examples:
+  - |
+    spi0: spi@101000 {
+      compatible = "mscc,ocelot-spi";
+      #address-cells = <1>;
+      #size-cells = <0>;
+      reg = <0x101000 0x100>, <0x3c 0x18>;
+      interrupts = <9>;
+      clocks = <&ahb_clk>;
+    };
diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.txt b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.txt
index 3ed08ee9feba4..5e1849be7bae5 100644
--- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.txt
+++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.txt
@@ -1,10 +1,8 @@
 Synopsys DesignWare AMBA 2.0 Synchronous Serial Interface.

 Required properties:
-- compatible : "snps,dw-apb-ssi" or "mscc,<soc>-spi", where soc is "ocelot" or
-  "jaguar2", or "amazon,alpine-dw-apb-ssi"
-- reg : The register base for the controller. For "mscc,<soc>-spi", a second
-  register set is required (named ICPU_CFG:SPI_MST)
+- compatible : "snps,dw-apb-ssi" or "amazon,alpine-dw-apb-ssi"
+- reg : The register base for the controller.
 - interrupts : One interrupt, used by the controller.
 - #address-cells : <1>, as required by generic SPI binding.
 - #size-cells : <0>, also as required by generic SPI binding.
@@ -38,4 +36,3 @@ Example:
 		cs-gpios = <&gpio0 13 0>,
 			   <&gpio0 14 0>;
 	};
-
diff --git a/MAINTAINERS b/MAINTAINERS
index 1db598723a1d8..6472240b8391b 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11231,6 +11231,7 @@ L:	linux-mips@vger.kernel.org
 S:	Supported
 F:	Documentation/devicetree/bindings/mips/mscc.txt
 F:	Documentation/devicetree/bindings/power/reset/ocelot-reset.txt
+F:	Documentation/devicetree/bindings/spi/mscc,ocelot-spi.yaml
 F:	arch/mips/boot/dts/mscc/
 F:	arch/mips/configs/generic/board-ocelot.config
 F:	arch/mips/generic/board-ocelot.c
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
