Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C47401FB41E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 16:21:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ig4qSnVUvbNoLtQ1/aKSXBWU2HF9Gig6KD3NUxvL/Jg=; b=uNzh2+pIVnmab+
	TGMRjsj1mXSAPB4iBwAR1VJUjag9Qmv+hriwelLpYW99QoEx6oRwMo4K1rzfOozd0BuM+y4Pg4mt8
	OSH58spdtvaFKw90bpvs9mHv1CP7/oLZeuzQtHhg+4xs0oahZ5YXTbsdzrD4nkvZJ4kc0eDVK5eIW
	YgZzT2/inxWHoqhGwTlkbhlzvQPNaOOmqKVYroTeQp5XW7Rv+Ppu7+gaL9JG2ZRWlub7ddFjsLhRf
	IyQ6JvFhbZOjl4ho9y0hkxWXd2Tic5TgFJlXiZSoIC4bPyjQ9oZVafxsiTvacoApOL0PjTv5/VF03
	xWAUP/ZyFJm7F/FkmVyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlCTG-00033X-Mj; Tue, 16 Jun 2020 14:21:50 +0000
Received: from esa2.microchip.iphmx.com ([68.232.149.84])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlC8r-0002Lz-0X
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 14:00:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592316044; x=1623852044;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZwjUqHNGtzEBM75RIQXsqSv3DYyG/znHnZV28mZTKO0=;
 b=aF/v42k2moNz7tNsg3gpgAN9XWNMpuRYAxbaVch2Se/3lY9+/Cj0bjbJ
 0Kydm9B3kJu9L3T7um1DJdM+hsFnPhYcmdx2E8r2KqRWomnFDTr+z01Lu
 y8depQO3lXFSNh5sq3DwSjyHfQP2yY4Y599UEj1hDoDOUwiyku9Nh8m1d
 lcW/A7yFpt8eIBvU6qWbDmq+kGOewuQLf1bJZdFXyXvmkaowZeL/hBuwB
 81u/xY6WVx1cmKKX9gTK+rn5n1SMLN3fdDbwVLkWw5A1NCWFQETTX2rLz
 m1QxUceT1xYRMIkzkR+VX6K9rYNoyrSODibVJ+Ym9LN8T4wCPheoq1H6V A==;
IronPort-SDR: kHOYrxDh/iti501DLLgb1RUnDtWNU3/XOP6KmtTeF4gIOFb6SFm+Nm+Ij2FR4qNKVT84DodAnb
 EhxPalSGMDTdOreFj/VIfDPFjwNqcf3fWocPUVmpU8jTc7lsqjsGNtPkC2jUnli7tJhHgoBeD8
 vysf8Dm7tp83I81NujLoD9JUdvSb4ZtrC/RJpqHdMNTEnfcZLtGyRqJbl6khw+WDyfo0HDmN/G
 +NYWef8TmevOQwZCwP9ZmgV0DKe1/JlRcpPwtxtk7JhJr+HWAN/vfxH9WkytTrZKPUS+WROZZH
 psQ=
X-IronPort-AV: E=Sophos;i="5.73,518,1583218800"; d="scan'208";a="78647033"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 16 Jun 2020 07:00:36 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Tue, 16 Jun 2020 07:00:35 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Tue, 16 Jun 2020 07:00:29 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter
 <adrian.hunter@intel.com>, SoC Team <soc@kernel.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH v3 1/3] dt-bindings: mmc: Add Sparx5 SDHCI controller bindings
Date: Tue, 16 Jun 2020 16:00:25 +0200
Message-ID: <20200616140027.4949-2-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200616140027.4949-1-lars.povlsen@microchip.com>
References: <20200616140027.4949-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_070045_141623_B47CB28D 
X-CRM114-Status: GOOD (  11.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.149.84 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [68.232.149.84 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 Lars Povlsen <lars.povlsen@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Sparx5 SDHCI controller is based on the Designware controller IP.

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 .../mmc/microchip,dw-sparx5-sdhci.yaml        | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.yaml

diff --git a/Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.yaml b/Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.yaml
new file mode 100644
index 0000000000000..55883290543b9
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mmc/microchip,dw-sparx5-sdhci.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip Sparx5 Mobile Storage Host Controller Binding
+
+allOf:
+  - $ref: "mmc-controller.yaml"
+
+maintainers:
+  - Lars Povlsen <lars.povlsen@microchip.com>
+
+# Everything else is described in the common file
+properties:
+  compatible:
+    const: microchip,dw-sparx5-sdhci
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+    description:
+      Handle to "core" clock for the sdhci controller.
+
+  clock-names:
+    items:
+      - const: core
+
+  microchip,clock-delay:
+    description: Delay clock to card to meet setup time requirements.
+      Each step increase by 1.25ns.
+    $ref: "/schemas/types.yaml#/definitions/uint32"
+    minimum: 1
+    maximum: 15
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - clocks
+  - clock-names
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/microchip,sparx5.h>
+    sdhci0: mmc@600800000 {
+        compatible = "microchip,dw-sparx5-sdhci";
+        reg = <0x00800000 0x1000>;
+        pinctrl-0 = <&emmc_pins>;
+        pinctrl-names = "default";
+        clocks = <&clks CLK_ID_AUX1>;
+        clock-names = "core";
+        assigned-clocks = <&clks CLK_ID_AUX1>;
+        assigned-clock-rates = <800000000>;
+        interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
+        bus-width = <8>;
+        microchip,clock-delay = <10>;
+    };
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
