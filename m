Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 079411F02FD
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  6 Jun 2020 00:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OuwUqo7GKussaMZiwtSyVqEhGdcu2qblFFyhUYrHTT4=; b=TOO913DEAhJk/e
	V6cRJueA58GJusnd+Pr9Hmoaa8DR24F/wmS8EGYqBvYa5rO2fO/qNgLK8MH5bHYM8BPdaJaTjVqiK
	u8cgqJOD7gnTOlO4PihneVw0h0H+PMUs8R3PKmjriA2rdmpNL82ERR7GgsNlsEcvKFeBbLx4Iy1B1
	donWWLxGqaPjlhEgVzo8Avv+daiQUD2fN2aGxv4JF9unPexpKGeVKCsHz/eGlEkAhAcCSZSLGUuEV
	FnKEClzPKfOWLDLlzU7ikJXYAC/C+6hyLYurV5S52E1c9aWosSa9s/Cp/1Ln2P9YajlDAb1k0Xc2Z
	LXVR3zAuSPznAdv0fwcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhL4n-0006jr-FV; Fri, 05 Jun 2020 22:44:37 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhL4M-0006VR-VO
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 22:44:12 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) (Authenticated sender: sre)
 with ESMTPSA id 415552A51AA
Received: by jupiter.universe (Postfix, from userid 1000)
 id 263574800FF; Sat,  6 Jun 2020 00:44:04 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Sebastian Reichel <sre@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Emil Velikov <emil.velikov@collabora.com>
Subject: [PATCHv2 1/6] dt-bindings: power: supply: gpio-charger: convert to
 yaml
Date: Sat,  6 Jun 2020 00:43:58 +0200
Message-Id: <20200605224403.181015-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200605224403.181015-1-sebastian.reichel@collabora.com>
References: <20200605224403.181015-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_154411_144542_AA97528D 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Linus Walleij <linus.walleij@linaro.org>, Russell King <linux@armlinux.org.uk>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel@collabora.com,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Convert the gpio-charger bindings from text format to
new YAML based representation.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/power/supply/gpio-charger.txt    | 31 ----------
 .../bindings/power/supply/gpio-charger.yaml   | 58 +++++++++++++++++++
 2 files changed, 58 insertions(+), 31 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/power/supply/gpio-charger.txt
 create mode 100644 Documentation/devicetree/bindings/power/supply/gpio-charger.yaml

diff --git a/Documentation/devicetree/bindings/power/supply/gpio-charger.txt b/Documentation/devicetree/bindings/power/supply/gpio-charger.txt
deleted file mode 100644
index 0fb33b2c62a6..000000000000
--- a/Documentation/devicetree/bindings/power/supply/gpio-charger.txt
+++ /dev/null
@@ -1,31 +0,0 @@
-gpio-charger
-
-Required properties :
- - compatible : "gpio-charger"
- - gpios : GPIO indicating the charger presence.
-   See GPIO binding in bindings/gpio/gpio.txt .
- - charger-type : power supply type, one of
-     unknown
-     battery
-     ups
-     mains
-     usb-sdp (USB standard downstream port)
-     usb-dcp (USB dedicated charging port)
-     usb-cdp (USB charging downstream port)
-     usb-aca (USB accessory charger adapter)
-
-Optional properties:
- - charge-status-gpios: GPIO indicating whether a battery is charging.
-
-Example:
-
-	usb_charger: charger {
-		compatible = "gpio-charger";
-		charger-type = "usb-sdp";
-		gpios = <&gpd 28 GPIO_ACTIVE_LOW>;
-		charge-status-gpios = <&gpc 27 GPIO_ACTIVE_LOW>;
-	};
-
-	battery {
-		power-supplies = <&usb_charger>;
-	};
diff --git a/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml b/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
new file mode 100644
index 000000000000..78b167c62ab1
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/gpio-charger.yaml
@@ -0,0 +1,58 @@
+# SPDX-License-Identifier: GPL-2.0
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/supply/gpio-charger.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: simple battery chargers only communicating through GPIOs
+
+maintainers:
+  - Sebastian Reichel <sre@kernel.org>
+
+description:
+  This binding is for all chargers, which are working more or less
+  autonomously, only providing some status GPIOs and possibly some
+  GPIOs for limited control over the charging process.
+
+properties:
+  compatible:
+    const: gpio-charger
+
+  charger-type:
+    enum:
+      - unknown
+      - battery
+      - ups
+      - mains
+      - usb-sdp                   # USB standard downstream port
+      - usb-dcp                   # USB dedicated charging port
+      - usb-cdp                   # USB charging downstream port
+      - usb-aca                   # USB accessory charger adapter
+    description:
+      Type of the charger, e.g. "mains" for a wall charger.
+
+  gpios:
+    maxItems: 1
+    description: GPIO indicating the charger presence
+
+  charge-status-gpios:
+    maxItems: 1
+    description: GPIO indicating the charging status
+
+required:
+  - compatible
+  - gpios
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    charger {
+      compatible = "gpio-charger";
+      charger-type = "usb-sdp";
+
+      gpios = <&gpd 28 GPIO_ACTIVE_LOW>;
+      charge-status-gpios = <&gpc 27 GPIO_ACTIVE_LOW>;
+    };
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
