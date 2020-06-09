Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 493A91F35E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 10:09:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A3S1YuoxLYVsCCv3wSaMY6pcKvOlCwa778eNQehO+98=; b=EKI9wfWnCAaKKh
	lc4x/aMsZ8N+HWsKyucQOqP9eXKAuBjgB/ywOnhZlituUiknjoBbTwIb0sGON1dggo5IVl6tVkBao
	SX0LNUVE+XsHdht0AMV/wYquHqwBiaVnf/CUa+7RQANkuStR7vY//VwFpuw91rfJ+4IDiGfPLKvZY
	Bluh0q6JyQoZUBMt4TI3ovNs1sYllWsfaFkd2Zs708CGxAQBTIwPCdux/iQn/P6w+2ShT/ePJ/dYr
	Py9Ah66StymLrrerMjfA8t2yc4spUpZEnAFCSuUirr4wPL1nsJxINXuMhbVAbreCJ9y5iM4PlW27p
	J22qrobQJilggE6FUqFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiZK7-0001Bg-D6; Tue, 09 Jun 2020 08:09:31 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiZJ8-0000ZA-7M
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 08:08:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591690110; x=1623226110;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EXViZJNoUAiedo3upJN/pWpw3+V8c4VqVgPBgGd+VnY=;
 b=GJlOYyXVWyYYyL0kQ0QOtu7RdMXGQovHpnRsPg5qSgqcOe0B9rWCVrbi
 u6PKsAemLYnWnVaownczV4wPelcmHNfPrvJ3xT9Nt0qDJAwJqo/5poYg+
 squqpjQabuUx22AExMmk6/tuUMWuOTYruoVjaGsah2PKo6L5B+XtziKt4
 OmtbeWC93K1BYG75lu2W9dpDMiH5Pk35Gn5uuSVJUB70YaxCsK7OVKO92
 6u6DJDRlL/SDbbcTrTI+n82JfvABa7pKzXWFmmwfOvxJcwYVNuTcmuYH+
 b4ElyW+HeVxMFxCG2pi163UgGJs5saGxcN+EJm7yzWlIul4vLnrBRm++6 w==;
IronPort-SDR: FLOeC5uNuX7vgoZEChRdO9fNed5hRF+qIDQ4ty7HM7RTm9TOpUIcfqEPmqjBJjRJibmmjawtUl
 Aanm9Il+p8QTRBNNifO3W/wSFrzf4uVHb/VxX9axuz6vH77JwFZPVx8ZP5ZtLeENHE2H+mOXLE
 e1MYSBBXbDf8OK+yw6J8/NrS1VFwjZf7CfPcXZlvc4qJRNRLvd7HiJpMXQ77vqTmFF0vXXKd5t
 /CsOJZ2pxXHJ5t/jdddtGSvoLFmByXXJZGdsOBymnfh6rB0T8gwwvWOHGYb6NxPaIvfrw3109L
 Whs=
X-IronPort-AV: E=Sophos;i="5.73,491,1583218800"; d="scan'208";a="79412819"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2020 01:08:29 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 9 Jun 2020 01:08:28 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1847.3 via Frontend Transport; Tue, 9 Jun 2020 01:08:25 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>, "Linus
 Walleij" <linus.walleij@linaro.org>
Subject: [PATCH v2 06/10] dt-bindings: clock: sparx5: Add Sparx5 SoC DPLL clock
Date: Tue, 9 Jun 2020 10:07:05 +0200
Message-ID: <20200609080709.9654-6-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200609080709.9654-1-lars.povlsen@microchip.com>
References: <20200608123024.5330-1-lars.povlsen@microchip.com>
 <20200609080709.9654-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_010830_288691_50ADA96B 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.153.233 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Michael
 Turquette <mturquette@baylibre.com>, Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This add the DT bindings documentation for the Sparx5 SoC DPLL clock

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 .../bindings/clock/microchip,sparx5-dpll.yaml | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml

diff --git a/Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml b/Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml
new file mode 100644
index 0000000000000..39559a0a598ad
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/microchip,sparx5-dpll.yaml
@@ -0,0 +1,52 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/microchip,sparx5-dpll.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Microchip Sparx5 DPLL Clock
+
+maintainers:
+  - Lars Povlsen <lars.povlsen@microchip.com>
+
+description: |
+  The Sparx5 DPLL clock controller generates and supplies clock to
+  various peripherals within the SoC.
+
+properties:
+  compatible:
+    const: microchip,sparx5-dpll
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  '#clock-cells':
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - '#clock-cells'
+
+additionalProperties: false
+
+examples:
+  # Clock provider for eMMC:
+  - |
+    lcpll_clk: lcpll-clk {
+        compatible = "fixed-clock";
+        #clock-cells = <0>;
+        clock-frequency = <2500000000>;
+    };
+    clks: clock-controller@61110000c {
+        compatible = "microchip,sparx5-dpll";
+        #clock-cells = <1>;
+        clocks = <&lcpll_clk>;
+        reg = <0x1110000c 0x24>;
+    };
+
+...
--
2.27.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
