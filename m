Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E22781D14FA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 15:32:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kbyYd5xQA7Q6TGJwrt5+YtEOUOGE/8MzEBRcVYmilx0=; b=dS+TekhwMfk5tP
	/R7/I4rx80ehxVjgwuEFrowoSneKce/0az4W+0KLD1vpUKx56JUzVw+TJbhHvecVK9vSswggLqTxB
	1a4BFthIR+JZuY0LaqFyW6sVrL+lGRXj9+7RcguPJap1qM2arukNLUVH8BP45xAPRIpDrGQR/TIds
	rgO/nvVKgVZB0sVWy68I1wgHuoAEFJB+/j84h10LO1Qw+LSlewOoVe0niivUNJHL43hcMjHAsTCx7
	ABUINjMbgHtnAXn8iHhMssXrB5UKlPxwjBOtqpvGp+HhU/S+VHIp3urOrG35PPnBLxB+VQntQBCuU
	jpU59NbD8zOGqnpaHQHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYrUa-0000YE-8y; Wed, 13 May 2020 13:32:12 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYrU5-0000EZ-B9
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 13:31:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589376702; x=1620912702;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AG6yekCq9w+Y4o5I+LbSFs4Bd1UYKHMBIo4TxQXESP4=;
 b=Y6DTWLXjTAh2lC5Ts435JqPzbVvA3kupkQ7ldWVVFQXFhMJ8knBBJtpn
 uZLoBhwKSJitfKOnAWB9hCKQnB2dB5CikzHJaNhvV2Kc03q29DfKlAV7e
 sVOsBL83lXgIlmvss0mab+0KajzULNKkvxmYvrl67IaJ1E2uWE4SiXn0G
 3/kxDYrTpERQQZ1Mb4/+KoeTsV6rRvXU+Z1ZKMsetcuGs65QevDvEd3SW
 0fLbECGteE7tC1usjRIzYL+S3K5KF5y8NNtC8fOTVjiRwjSEKp8oqZw/N
 vOWWgO0Vg2nTaMU1hcUwN+WO4um1gVQRALXIlmDF/y1Yfss1E1cp8JwUS Q==;
IronPort-SDR: yqeBC4bdps3HrLfz9hTpb5YTRL6giEko+oaD2bOrNSDC5hm+BM9D9YvbA5+kHUA5h+ok5u4qrc
 Y/H8aaDjyx14AXGkuRO3pxIB+mgI68uj0Y3V8ylrx6fl/ZhGp4HhwlQ4Ho8KFDb1hy5IpZ08Hg
 gQCiL6oryFW7omADF0MZUUEgqrkgccTh3g+fsZT7IxxgEBTBypi6LkK0/tqEfkp8+F5FXshQeT
 r5A/3ZgsjB0hmi35CEgqUWAUGRzyDPXTGJo+s2n7ej7kXw00vu+0fF34aYCc9g7rg6Af2R2FzB
 94Q=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="75770613"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 06:31:36 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 06:31:38 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 06:31:35 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Adrian Hunter
 <adrian.hunter@intel.com>, SoC Team <soc@kernel.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 1/3] dt-bindings: mmc: Add Sparx5 SDHCI controller bindings
Date: Wed, 13 May 2020 15:31:20 +0200
Message-ID: <20200513133122.25121-2-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513133122.25121-1-lars.povlsen@microchip.com>
References: <20200513133122.25121-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_063141_411842_DFCC5644 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
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

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 .../mmc/microchip,dw-sparx5-sdhci.yaml        | 57 +++++++++++++++++++
 1 file changed, 57 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.yaml

diff --git a/Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.yaml b/Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.yaml
new file mode 100644
index 0000000000000..a9901c4bc25d3
--- /dev/null
+++ b/Documentation/devicetree/bindings/mmc/microchip,dw-sparx5-sdhci.yaml
@@ -0,0 +1,57 @@
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
+    };
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
