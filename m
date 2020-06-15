Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2313D1F98FF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PnLu4AedO0z7kR55MZU21HNy10wUAIBcHfazuqG0Y7I=; b=kY1IlKdNAic/5d
	dnkbWulYek7lC/xvAq6IyR2D9bgOdanX50J7emP/yajnKhznXzhYc2+3ikdPGvp83ZsYZptCtdWdX
	lychAOGRkrhFbplbOY7AlcacQVG5jEtn5+5hjOXjPPuoa6iNN+IuKiSEArhxcbMJJHi9+x0i0isop
	ajgbV6U3cv7KvF9ItwT5UtJHWpClBD357mNsIx/CLVBKkRlorLfFLObXegyFaxf9AeJloY0GtitgV
	Y8bBD3MSc8ZifQxuYQrlQNqwSRcRsIgoyPvLSSsv6yolHwnycHkI5QfF+J44gSe/G9LIQuJ/PJbyf
	KgAYI9PgsZa8Ty9JxwUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpGp-0000Md-8z; Mon, 15 Jun 2020 13:35:27 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpEm-0007bb-1B
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:33:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592227999; x=1623763999;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7jqIHOYBzLEkUI/gyT4h0PiTuHWl6t5kNRx1viuzrLA=;
 b=grAR3nP4rHxf+4AHmK6aoyYjFdWJ70oFQx4geth8+4/Oe12RUm1csxeZ
 Gdv7ZcK7fZ+g4xlBK4LazdBjJ921MG60qXhZaprI5vhhqRsvrm5EPKhYV
 QU7hiH9JXXjNnCVXAc+S/hf7IutsvThnuQMfThHDHvW2usSK7MsnJvr4l
 1NtJF+j/7ODhh2W5SSoeUtF/ZbuffL4Qa/8GQn2UdPiRIbhIXKhNAfU9F
 U8EEN7FjEl/YntzXT0NJcvFr8LQawtWMr6FDjfYvhn/eXlsf5TAf8TLX+
 +FEHpFgCSLHk/PZbtNkUOAfbSPLtYQgVvgifRbH0tfQYSZsmImmlHictg g==;
IronPort-SDR: yufsqD9qyb+fw5WP3N9pN5zY94Wts0Vf92UN8PXQBlFAJ5pUF29Ahbk/9mOXbS2CbufLnxFLJW
 B0nP7oZq/76MrosCTpxIjPuqz6geBPFI6cEVBfngF18LXYbRCTotbghYIJMkGhfpVD+f6jnGaq
 ZSfWe8WpZ6IyWWNoBcfnGsSx+oHrmlm4NVWm5ydtXfbRYF+t8FfTAKud1ojy4ftaH6c2eF7cAG
 gu006u/YpmaJ/b24TZM3riO3WoYsFjLAH4SMsq5WfSU2PyneR8zglAuWlNWh0xwwEfRwQE4BWz
 +NY=
X-IronPort-AV: E=Sophos;i="5.73,514,1583218800"; d="scan'208";a="83619496"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Jun 2020 06:33:18 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 15 Jun 2020 06:33:18 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 15 Jun 2020 06:33:15 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH v3 06/10] dt-bindings: clock: sparx5: Add Sparx5 SoC DPLL clock
Date: Mon, 15 Jun 2020 15:32:38 +0200
Message-ID: <20200615133242.24911-7-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615133242.24911-1-lars.povlsen@microchip.com>
References: <20200615133242.24911-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_063320_107688_89538F0C 
X-CRM114-Status: GOOD (  10.18  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.147.91 listed in wl.mailspike.net]
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
